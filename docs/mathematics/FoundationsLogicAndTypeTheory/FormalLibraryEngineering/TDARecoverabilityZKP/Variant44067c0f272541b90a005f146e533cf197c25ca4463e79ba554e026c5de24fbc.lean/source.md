# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TDARecoverabilityZKP.Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `130ad30fbbbabe1ccb2f3fa5c48ea9c6d9d19b23` · SHA-256 `44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.TorsionBlindDataHomology
import Boolean.Cube.PrismaticProjection
import Lean.Elab.Tactic.Omega

/-!
# TDA Recoverability Collapse and ZKP Operator Trees

This module extends `Boolean.Cube.TorsionBlindDataHomology` with two layers.

1.  A corrected recoverability-collapse theorem.

    If two elliptic-arithmetic models have the same field-coefficient TDA
    observation and different Mordell-Weil torsion, then no deterministic
    field-only algorithm can be correct on both.  For a randomized field-only
    algorithm, encoded as a finite output-weight distribution on torsion labels,
    the uniform two-model success weight is at most one half.  Equivalently,
    the uniform pair error is at least one half.

    This is non-identifiability from a non-injective observation channel, not a
    standalone Turing-undecidability theorem.

2.  A certificate-gated zk-SNARK/operator-tree interface.

    A zero-knowledge proof does not make field-coefficient TDA recover the
    missing arithmetic torsion.  Instead it verifies a public existential
    statement: there exists a private elliptic/arithmetic witness consistent
    with the public TDA observation and satisfying the claimed torsion relation.

    The R1CS and pairing layers are represented by typed certificates, matching
    the surrounding project style: finite combinatorial plumbing is formalized;
    elliptic arithmetic, persistent homology, and cryptographic soundness enter
    as explicit interfaces.
-/

namespace Boolean
namespace Cube
namespace TorsionBlindDataHomology
namespace RecoverabilityZKP

/-! ## Recoverability collapse -/

/-- A collision in the field-coefficient TDA observation channel. -/
abbrev RecoverabilityCollision := ArithmeticCollision

/-- Deterministic pair failure: one shared observation cannot determine two distinct labels. -/
def DeterministicPairErrorAtLeastHalf
    (A : FieldOnlyArithmeticAlgorithm)
    (C : RecoverabilityCollision) : Prop :=
  ¬ (CorrectArithmeticRecovery A C.left ∧
      CorrectArithmeticRecovery A C.right)

/-- The deterministic recoverability-collapse theorem. -/
theorem deterministic_recoverability_collapse
    (C : RecoverabilityCollision)
    (A : FieldOnlyArithmeticAlgorithm) :
    DeterministicPairErrorAtLeastHalf A C :=
  no_field_only_recovery_from_collision C A

/--
A randomized field-only arithmetic algorithm.

	`outputWeight O T` is the numerator assigned to output torsion label `T` when
	fed observation `O`; `totalWeight` is the common denominator.  The field
	`pairMassBound` is the finite-distribution condition: two distinct output labels
	cannot together receive more mass than the total mass.
-/
structure RandomizedFieldOnlyAlgorithm where
  totalWeight : Nat
  outputWeight : FieldCoefficientObservation → MordellWeilTorsion → Nat
  pairMassBound :
    ∀ (O : FieldCoefficientObservation)
      (T₁ T₂ : MordellWeilTorsion),
      T₁ ≠ T₂ → outputWeight O T₁ + outputWeight O T₂ ≤ totalWeight

/-- Success weight of a randomized algorithm on one arithmetic model. -/
def successWeight
    (A : RandomizedFieldOnlyAlgorithm)
    (E : EllipticArithmeticModel) : Nat :=
  A.outputWeight E.fieldTDAObservation E.rationalTorsion

/--
Pair-error lower bound encoded without real numbers.

For a uniform prior on the two collision models, this inequality is exactly
"average success probability ≤ 1/2", hence "average error probability ≥ 1/2",
when all probabilities are read with denominator `A.totalWeight`.
-/
def PairErrorAtLeastHalf
    (A : RandomizedFieldOnlyAlgorithm)
    (C : RecoverabilityCollision) : Prop :=
  successWeight A C.left + successWeight A C.right ≤ A.totalWeight

/-- Same observation and distinct torsion imply the uniform-pair success bound. -/
theorem randomized_pair_success_bound
    (C : RecoverabilityCollision)
    (A : RandomizedFieldOnlyAlgorithm) :
    PairErrorAtLeastHalf A C := by
  unfold PairErrorAtLeastHalf successWeight
  rw [C.sameObservation]
  exact A.pairMassBound
    C.right.fieldTDAObservation
    C.left.rationalTorsion
    C.right.rationalTorsion
    C.distinctArithmeticTorsion

/-- Strictly better than one-half success, encoded by doubled numerator. -/
def StrictlyBetterThanHalfSuccess
    (A : RandomizedFieldOnlyAlgorithm)
    (E : EllipticArithmeticModel) : Prop :=
  A.totalWeight < 2 * successWeight A E

/-- A randomized field-only algorithm cannot be better than one half on both sides. -/
theorem randomized_not_both_strictly_better_than_half
    (C : RecoverabilityCollision)
    (A : RandomizedFieldOnlyAlgorithm) :
    ¬ (StrictlyBetterThanHalfSuccess A C.left ∧
        StrictlyBetterThanHalfSuccess A C.right) := by
  intro h
  rcases h with ⟨hLeft, hRight⟩
  have hsum :
      successWeight A C.left + successWeight A C.right ≤ A.totalWeight :=
    randomized_pair_success_bound C A
  unfold StrictlyBetterThanHalfSuccess at hLeft hRight
  omega

/-- Combined deterministic/probabilistic recoverability-collapse statement. -/
theorem recoverability_collapse
    (C : RecoverabilityCollision) :
    (∀ A : FieldOnlyArithmeticAlgorithm,
      DeterministicPairErrorAtLeastHalf A C) ∧
    (∀ A : RandomizedFieldOnlyAlgorithm,
      PairErrorAtLeastHalf A C) := by
  constructor
  · intro A
    exact deterministic_recoverability_collapse C A
  · intro A
    exact randomized_pair_success_bound C A

/-! ## ZKP statement and private witness layer -/

/-- Public torsion claim verified by the ZK relation. -/
structure TorsionClaim where
  claimedTorsion : MordellWeilTorsion
  claimedOrder : Nat
deriving Repr, DecidableEq

/-- The verifier's public statement: TDA observation plus an arithmetic torsion claim. -/
structure PublicStatement where
  observation : FieldCoefficientObservation
  claim : TorsionClaim
  shapeUpdateBoundaryHash : Nat := 0
  shapeUpdateCertificateHash : Nat := 0

/-- Private topological witness data used by the prover. -/
structure TopologicalWitness where
  boundaryCycleOK : Prop
  kernelDimensionOK : Prop
  barcodeMatchesPublic : Prop

/-- Private elliptic/arithmetic witness data used by the prover. -/
structure ArithmeticWitness where
  curveEquationOK : Prop
  groupLawOK : Prop
  scalarMultipleIsInfinity : Prop
  torsionOrderMatchesClaim : Prop

/-- Private witness tying the public TDA observation to an elliptic arithmetic model. -/
structure PrivateWitness where
  model : EllipticArithmeticModel
  topological : TopologicalWitness
  arithmetic : ArithmeticWitness
  sameUnderlyingCoordinates : Prop
  shapeUpdateWitness? : Option PrismaticProjection.ShapeUpdateWitness := none

/-- The semantic relation proved by the ZK circuit. -/
def ZKPRelation
    (S : PublicStatement)
    (W : PrivateWitness) : Prop :=
  W.model.fieldTDAObservation = S.observation ∧
    W.model.rationalTorsion = S.claim.claimedTorsion ∧
    W.topological.boundaryCycleOK ∧
    W.topological.kernelDimensionOK ∧
    W.topological.barcodeMatchesPublic ∧
    W.arithmetic.curveEquationOK ∧
    W.arithmetic.groupLawOK ∧
    W.arithmetic.scalarMultipleIsInfinity ∧
    W.arithmetic.torsionOrderMatchesClaim ∧
    W.sameUnderlyingCoordinates

/--
Optional toroidal/prismatic shape-update evidence attached to a TDA/ZKP witness.

This is an extra finite witness channel. It does not alter the field-only
collision theorem and does not make TDA recover arithmetic torsion.
-/
def ShapeUpdateWitnessMatchesPublic
    (S : PublicStatement)
    (W : PrivateWitness) : Prop :=
  match W.shapeUpdateWitness? with
  | none => S.shapeUpdateBoundaryHash = 0 ∧ S.shapeUpdateCertificateHash = 0
  | some update =>
      update.next.boundaries.prismaticBoundaryHash = S.shapeUpdateBoundaryHash ∧
        update.certificate.certificateHash = S.shapeUpdateCertificateHash

theorem shapeUpdate_none_matches_default
    (S : PublicStatement)
    (W : PrivateWitness)
    (hNone : W.shapeUpdateWitness? = none)
    (hBoundary : S.shapeUpdateBoundaryHash = 0)
    (hCertificate : S.shapeUpdateCertificateHash = 0) :
    ShapeUpdateWitnessMatchesPublic S W := by
  simp [ShapeUpdateWitnessMatchesPublic, hNone, hBoundary, hCertificate]

theorem zkp_relation_still_torsion_after_shape_update_extension
    {S : PublicStatement}
    {W : PrivateWitness}
    (h : ZKPRelation S W) :
    W.model.rationalTorsion = S.claim.claimedTorsion :=
  h.2.1

/-- If the ZK relation holds, the private model realizes the public TDA observation. -/
theorem relation_observation
    {S : PublicStatement}
    {W : PrivateWitness}
    (h : ZKPRelation S W) :
    W.model.fieldTDAObservation = S.observation :=
  h.1

/-- If the ZK relation holds, the private model realizes the public torsion claim. -/
theorem relation_torsion
    {S : PublicStatement}
    {W : PrivateWitness}
    (h : ZKPRelation S W) :
    W.model.rationalTorsion = S.claim.claimedTorsion :=
  h.2.1

/-! ## Operator tree layer -/

/-- Leaves of the conceptual operator tree. -/
inductive WitnessLeaf where
  | simplicialComplex
  | bettiBarcode
  | torsionOrder
  | pointCoordinates
  deriving Repr, DecidableEq

/-- Internal operator nodes of the conceptual tree. -/
inductive OperatorNode where
  | proofRoot
  | bilinearPairingCheck
  | r1csLayer
  | topologicalConstraints
  | arithmeticConstraints
  | linearBoundaryMap
  | kernelDimension
  | scalarMultiplication
  | weierstrassEquation
  deriving Repr, DecidableEq

/-- A finite operator tree. -/
inductive OperatorTree where
  | leaf : WitnessLeaf → OperatorTree
  | node : OperatorNode → List OperatorTree → OperatorTree
  deriving Repr

namespace OperatorTree

/-- Canonical topological branch of the ZKP operator tree. -/
def topologicalBranch : OperatorTree :=
  .node .topologicalConstraints
    [ .node .linearBoundaryMap [.leaf .simplicialComplex]
    , .node .kernelDimension [.leaf .bettiBarcode]
    ]

/-- Canonical arithmetic branch of the ZKP operator tree. -/
def arithmeticBranch : OperatorTree :=
  .node .arithmeticConstraints
    [ .node .scalarMultiplication [.leaf .torsionOrder, .leaf .pointCoordinates]
    , .node .weierstrassEquation [.leaf .pointCoordinates]
    ]

/-- Canonical full operator tree: pairing root over an R1CS flattening. -/
def zkpOperatorTree : OperatorTree :=
  .node .proofRoot
    [ .node .bilinearPairingCheck
      [ .node .r1csLayer
        [ topologicalBranch
        , arithmeticBranch
        ]
      ]
    ]

end OperatorTree

/-! ## R1CS layer -/

/-- Integer dot product for finite vectors. -/
def dotInt : List Int → List Int → Int
  | [], _ => 0
  | _, [] => 0
  | x :: xs, y :: ys => x * y + dotInt xs ys

/-- One rank-one constraint `(L · w) * (R · w) = (O · w)`. -/
structure RankOneConstraint where
  left : List Int
  right : List Int
  out : List Int
  deriving Repr, DecidableEq

namespace RankOneConstraint

/-- Satisfaction of one rank-one constraint by a witness vector. -/
def Holds (C : RankOneConstraint) (w : List Int) : Prop :=
  dotInt C.left w * dotInt C.right w = dotInt C.out w

end RankOneConstraint

/-- A rank-one constraint system. -/
structure R1CS where
  witnessWidth : Nat
  constraints : List RankOneConstraint
  deriving Repr, DecidableEq

namespace R1CS

/-- A witness vector satisfies all constraints. -/
def Holds (R : R1CS) (w : List Int) : Prop :=
  ∀ C : RankOneConstraint, C ∈ R.constraints → C.Holds w

end R1CS

/-- Certificate that the operator tree has been flattened into an R1CS instance. -/
structure OperatorTreeCompilation where
  tree : OperatorTree
  r1cs : R1CS
  encodeWitness : PublicStatement → PrivateWitness → List Int
  tree_is_canonical : tree = OperatorTree.zkpOperatorTree
  sound : ∀ {S : PublicStatement} {W : PrivateWitness},
    ZKPRelation S W → r1cs.Holds (encodeWitness S W)

/-- Soundness of the R1CS compilation layer. -/
theorem r1cs_compilation_sound
    (C : OperatorTreeCompilation)
    {S : PublicStatement}
    {W : PrivateWitness}
    (h : ZKPRelation S W) :
    C.r1cs.Holds (C.encodeWitness S W) :=
  C.sound h

/-! ## zk-SNARK interface -/

/-- A certificate-gated zk-SNARK interface for the relation above. -/
structure ZkSNARK where
  ProvingKey : Type
  VerificationKey : Type
  Proof : Type
  prove :
    (pk : ProvingKey) →
    (S : PublicStatement) →
    (W : PrivateWitness) →
    ZKPRelation S W → Proof
  verify : VerificationKey → PublicStatement → Proof → Bool
  completeness :
    ∀ (pk : ProvingKey) (vk : VerificationKey)
      (S : PublicStatement) (W : PrivateWitness)
      (h : ZKPRelation S W),
      verify vk S (prove pk S W h) = true
  knowledgeSoundness :
    ∀ (vk : VerificationKey)
      (S : PublicStatement)
      (π : Proof),
      verify vk S π = true → ∃ W : PrivateWitness, ZKPRelation S W
  zeroKnowledge : Prop

/-- Completeness: a valid private witness gives an accepting proof. -/
theorem zkp_accepts_valid_witness
    (Z : ZkSNARK)
    (pk : Z.ProvingKey)
    (vk : Z.VerificationKey)
    (S : PublicStatement)
    (W : PrivateWitness)
    (h : ZKPRelation S W) :
    Z.verify vk S (Z.prove pk S W h) = true :=
  Z.completeness pk vk S W h

/-- Soundness: an accepting proof yields some private witness for the relation. -/
theorem zkp_soundness_extracts_witness
    (Z : ZkSNARK)
    (vk : Z.VerificationKey)
    (S : PublicStatement)
    (π : Z.Proof)
    (hVerify : Z.verify vk S π = true) :
    ∃ W : PrivateWitness, ZKPRelation S W :=
  Z.knowledgeSoundness vk S π hVerify

/-- A pairing-check wrapper for the root verification equation. -/
structure PairingCheckCertificate (Z : ZkSNARK) where
  pairingEquation : Z.VerificationKey → PublicStatement → Z.Proof → Prop
  pairingSound :
    ∀ (vk : Z.VerificationKey) (S : PublicStatement) (π : Z.Proof),
      pairingEquation vk S π → Z.verify vk S π = true
  verifierImplementsPairing :
    ∀ (vk : Z.VerificationKey) (S : PublicStatement) (π : Z.Proof),
      Z.verify vk S π = true → pairingEquation vk S π

/-- A successful pairing-root check gives a private witness by SNARK soundness. -/
theorem pairing_root_soundness
    (Z : ZkSNARK)
    (P : PairingCheckCertificate Z)
    (vk : Z.VerificationKey)
    (S : PublicStatement)
    (π : Z.Proof)
    (hPair : P.pairingEquation vk S π) :
    ∃ W : PrivateWitness, ZKPRelation S W :=
  Z.knowledgeSoundness vk S π (P.pairingSound vk S π hPair)

/--
ZKP bridge theorem: verification supplies extra arithmetic information through
an explicit witness relation; it does not make field TDA itself injective.
-/
theorem zkp_bridge_overcomes_field_blindness_by_witness
    (Z : ZkSNARK)
    (vk : Z.VerificationKey)
    (S : PublicStatement)
    (π : Z.Proof)
    (hVerify : Z.verify vk S π = true) :
    ∃ W : PrivateWitness,
      W.model.fieldTDAObservation = S.observation ∧
        W.model.rationalTorsion = S.claim.claimedTorsion := by
  rcases Z.knowledgeSoundness vk S π hVerify with ⟨W, hRel⟩
  exact ⟨W, relation_observation hRel, relation_torsion hRel⟩

/--
If the public statement is attached to the left side of a collision, a verifying
proof certifies the left hidden arithmetic label despite the field-only collision.
-/
theorem zkp_certifies_collision_side_by_private_witness
    (Z : ZkSNARK)
    (vk : Z.VerificationKey)
    (C : RecoverabilityCollision)
    (S : PublicStatement)
    (π : Z.Proof)
    (hObs : S.observation = C.left.fieldTDAObservation)
    (hTor : S.claim.claimedTorsion = C.left.rationalTorsion)
    (hVerify : Z.verify vk S π = true) :
    ∃ W : PrivateWitness,
      W.model.fieldTDAObservation = C.left.fieldTDAObservation ∧
        W.model.rationalTorsion = C.left.rationalTorsion := by
  rcases zkp_bridge_overcomes_field_blindness_by_witness
      Z vk S π hVerify with ⟨W, hWObs, hWTor⟩
  refine ⟨W, ?_, ?_⟩
  · rw [← hObs]
    exact hWObs
  · rw [← hTor]
    exact hWTor

/--
Final primitive: field-only recovery collapses on collisions, while a ZKP can
verify a private arithmetic witness for a public torsion claim.
-/
structure RecoverabilityWithZKPPrimitive where
  collision : RecoverabilityCollision
  deterministicCollapse :
    ∀ A : FieldOnlyArithmeticAlgorithm,
      DeterministicPairErrorAtLeastHalf A collision
  randomizedCollapse :
    ∀ A : RandomizedFieldOnlyAlgorithm,
      PairErrorAtLeastHalf A collision
  operatorTree : OperatorTree
  operatorTree_ok : operatorTree = OperatorTree.zkpOperatorTree
  compilation : OperatorTreeCompilation

/-- Build the primitive from a collision and an R1CS compilation certificate. -/
def buildPrimitive
    (C : RecoverabilityCollision)
    (K : OperatorTreeCompilation) : RecoverabilityWithZKPPrimitive where
  collision := C
  deterministicCollapse := fun A => deterministic_recoverability_collapse C A
  randomizedCollapse := fun A => randomized_pair_success_bound C A
  operatorTree := OperatorTree.zkpOperatorTree
  operatorTree_ok := rfl
  compilation := K

end RecoverabilityZKP
end TorsionBlindDataHomology
end Cube
end Boolean
```
