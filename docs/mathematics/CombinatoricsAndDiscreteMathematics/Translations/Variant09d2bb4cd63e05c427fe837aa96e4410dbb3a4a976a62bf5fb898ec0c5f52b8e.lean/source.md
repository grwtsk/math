# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Translations.Variant09d2bb4cd63e05c427fe837aa96e4410dbb3a4a976a62bf5fb898ec0c5f52b8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `928e446df4e5c40e7e1352cb318b487e66f6af98` · SHA-256 `bf35c7b07f568b5f7d32e41c3262589161fa225536dbde0d6e1470d14a861a55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrototypeTranslationEntry.Varianta0eeacf6afe6facdcfe024cdf523d25410b1a340a89cb64689e2f5c8faf0b952","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0eeacf6afe6facdcfe024cdf523d25410b1a340a89cb64689e2f5c8faf0b952","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrototypeTranslationEntry.Varianta0eeacf6afe6facdcfe024cdf523d25410b1a340a89cb64689e2f5c8faf0b952","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a0eeacf6afe6facdcfe024cdf523d25410b1a340a89cb64689e2f5c8faf0b952","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/WorldModelPrototype/Translations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Integration.WorldModelPrototype.Carrier
import DAF.Integration.WorldModelPrototype.ExactPermutationMatrix
import DAF.Integration.WorldModelPrototype.SupportGraphAbstraction
import DAF.Integration.WorldModelPrototype.ExecutableRefinement
import BinaryMatrix.Symmetry
import Mathlib.Data.ZMod.Basic

/-!
# Six typed prototype translations

Each carrier edge is backed by a typed function and relation-specific metadata.
The registry never upgrades carrier adjacency to compatibility.  In particular,
the `B → S` map is a sound abstraction with an explicit loss profile, and the
`P → H` route is not silently equated with the route through that abstraction.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrototypeTranslationEntry.Varianta0eeacf6afe6facdcfe024cdf523d25410b1a340a89cb64689e2f5c8faf0b952

namespace DAF.Integration.WorldModelPrototype

open Surface.ContinuousAssurance
open Surface.ContinuousAssurance.WorldModel
open SATReduction Avalanche Symmetry PermutationNetwork

/-- Empty assumptions used only by the finite executable prototype. -/
def prototypeAssumptionContext : AssumptionContext where
  identity := ⟨"assumptions:five-model-prototype-empty-v1"⟩
  version := ⟨0, 1, 0⟩
  assumptions :=
    { entries := []
      key := fun record => record.identity.value
      keys_unique := by simp }
  key_is_identity := by intro _; rfl
  conflicts := []

/-- Stable identifier attached to every carrier edge. -/
def prototypeTranslationId : PrototypeEdge → TranslationId
  | .τPB => ⟨"translation:permutation-to-exact-matrix"⟩
  | .τGP => ⟨"translation:coordinate-action-to-state-permutation"⟩
  | .τGB => ⟨"translation:coordinate-action-to-boolean-matrix"⟩
  | .τBS => ⟨"translation:boolean-matrix-to-support"⟩
  | .τSH => ⟨"translation:simplicial-boundary-to-chain"⟩
  | .τPH => ⟨"translation:orbit-data-to-cycle-chain"⟩

/-- Model endpoint attached to a prototype vertex. -/
def prototypeVertexModel : PrototypeVertex → PrototypeModel
  | .P => .permutationDynamics
  | .B => .booleanQuantizedMatrices
  | .G => .hammingGroupActions
  | .S => .strictSimplicialFabric
  | .H => .finiteEditHomology

/-- Relation class intentionally differs from edge to edge. -/
def prototypeTranslationRelation : PrototypeEdge → ModelTranslationRelation
  | .τPB => .exactEquivalence
  | .τGP => .faithfulInterpretation
  | .τGB => .faithfulInterpretation
  | .τBS => .soundAbstraction
  | .τSH => .theoremTransport
  | .τPH => .soundAbstraction

/-- Heterogeneous edge metadata, separated from each typed implementation. -/
structure PrototypeTranslationEntry where
  edge : PrototypeEdge
  identity : TranslationId
  source : WorldModelVersionId
  target : WorldModelVersionId
  relation : ModelTranslationRelation
  unsupportedScope : List ObligationId
  deriving DecidableEq, Repr

/-- Complete six-entry translation registry. -/
def prototypeTranslationEntry (edge : PrototypeEdge) :
    PrototypeTranslationEntry :=
  let endpoints := prototypeEdgeEndpoints edge
  { edge := edge
    identity := prototypeTranslationId edge
    source := prototypeModelIdentity (prototypeVertexModel endpoints.1)
    target := prototypeModelIdentity (prototypeVertexModel endpoints.2)
    relation := prototypeTranslationRelation edge
    unsupportedScope :=
      if edge = .τBS then [⟨"obligation:support-abstraction-loss"⟩]
      else if edge = .τPH then [⟨"obligation:orbit-chain-completeness"⟩]
      else [] }

/-- Finite registry of exactly all six carrier translations. -/
noncomputable def prototypeTranslationRegistry : FiniteRegistry PrototypeTranslationEntry where
  entries := (Finset.univ : Finset PrototypeEdge).toList.map prototypeTranslationEntry
  key := fun entry => entry.identity.value
  keys_unique := by
    intro left right hleft hright hkey
    simp only [List.mem_map, Finset.mem_toList, Finset.mem_univ, true_and] at hleft hright
    obtain ⟨leftEdge, rfl⟩ := hleft
    obtain ⟨rightEdge, rfl⟩ := hright
    cases leftEdge <;> cases rightEdge <;>
      simp [prototypeTranslationEntry, prototypeTranslationId] at hkey ⊢

/-- Generic theorem-preserving skeleton for the five non-equivalence maps. -/
def prototypeTypedTranslation
    (edge : PrototypeEdge)
    (Source : Type u) (Target : Type v)
    (map : Source → Target) :
    ModelTranslation Source Target :=
  let entry := prototypeTranslationEntry edge
  { identity := entry.identity
    sourceModel := entry.source
    targetModel := entry.target
    relation := entry.relation
    sourceContext := prototypeAssumptionContext
    targetContext := prototypeAssumptionContext
    objectMap := map
    sourceProposition := fun _ => True
    targetProposition := fun _ => True
    proofTransport := some ⟨fun _ _ => trivial⟩
    counterexampleTransport := none
    preservesTyping := True
    preservesDeclaredMeaning := True
    assumptionsMapped := True
    sourceAuthority := .certifiedSource
    targetAuthority := .certifiedSource
    authorityNonIncreasing := Nat.le_refl _
    provenance := [entry.source.sourceDigest, entry.target.sourceDigest]
    provenancePreserved := True
    versionCompatible := True
    unsupportedScope := entry.unsupportedScope }

/-- `τPB`: exact permutation/one-hot-matrix equivalence. -/
noncomputable def translationPB (X : Type) [DecidableEq X] :
    ModelTranslation (Equiv.Perm X) (OneHotPermutationMatrix X) :=
  ModelTranslation.ofEquiv
    (prototypeTranslationId .τPB)
    (prototypeModelIdentity .permutationDynamics)
    (prototypeModelIdentity .booleanQuantizedMatrices)
    prototypeAssumptionContext prototypeAssumptionContext
    .certifiedSource OneHotPermutationMatrix.permEquivOneHotPermutationMatrix
    (fun _ => True) (fun _ => True) (fun _ => Iff.rfl)

/-- The exact label on `τPB` is backed by both inverse laws. -/
noncomputable def translationPBExactEvidence
    (X : Type) [DecidableEq X] :
    ExactEquivalenceEvidence (translationPB X) where
  relation_eq := rfl
  inverse := OneHotPermutationMatrix.permEquivOneHotPermutationMatrix.symm
  left_inverse := fun value =>
    OneHotPermutationMatrix.permEquivOneHotPermutationMatrix.symm_apply_apply value
  right_inverse := fun value =>
    OneHotPermutationMatrix.permEquivOneHotPermutationMatrix.apply_symm_apply value

/-- `τGP`: coordinate actions act faithfully on the full bit state space. -/
def translationGP (n : Nat) :
    ModelTranslation (Equiv.Perm (Fin n)) (BitPerm n) :=
  prototypeTypedTranslation .τGP _ _ coordinatePermutation

theorem translationGP_injective (n : Nat) :
    Function.Injective (translationGP n).objectMap :=
  coordinatePermutationHom_injective

/-- The faithful label on `τGP` is backed by injectivity. -/
def translationGPFaithfulEvidence (n : Nat) :
    FaithfulInterpretationEvidence (translationGP n) where
  relation_eq := rfl
  injective := translationGP_injective n

/-- Boolean action matrix of a coordinate permutation. -/
def coordinateActionMatrix {n : Nat} (π : Equiv.Perm (Fin n)) : BinMat n n :=
  fun i j => decide (π i = j)

/-- `τGB`: faithful one-hot Boolean action-matrix encoding. -/
def translationGB (n : Nat) :
    ModelTranslation (Equiv.Perm (Fin n)) (BinMat n n) :=
  prototypeTypedTranslation .τGB _ _ coordinateActionMatrix

theorem coordinateActionMatrix_injective (n : Nat) :
    Function.Injective (coordinateActionMatrix (n := n)) := by
  intro left right equal
  apply Equiv.ext
  intro i
  have entry := congrFun (congrFun equal i) (left i)
  simp [coordinateActionMatrix] at entry
  exact entry.symm

/-- The faithful label on `τGB` is backed by injectivity. -/
def translationGBFaithfulEvidence (n : Nat) :
    FaithfulInterpretationEvidence (translationGB n) where
  relation_eq := rfl
  injective := coordinateActionMatrix_injective n

/-- `τBS`: symmetrized support, with declared orientation loss. -/
def translationBS (n : Nat) : ModelTranslation (BinMat n n) (BinMat n n) :=
  prototypeTypedTranslation .τBS _ _ undirectedSupport

/-- The soundness law for `τBS` is directed-edge visibility; its losses stay explicit. -/
def translationBSSoundEvidence (n : Nat) :
    SoundAbstractionEvidence (translationBS n) where
  relation_eq := rfl
  Sound := ∀ (matrix : BinMat n n) (i j : Fin n),
    matrix i j = true → undirectedSupport matrix i j = true
  sound := fun matrix _ _ edge => directed_edge_visible matrix edge
  lossProfile := [⟨"obligation:support-abstraction-loss"⟩]

/-- A finite boundary is represented by its selected faces. -/
abbrev PrototypeBoundary := Finset (Fin 3)

/-- Its elementary chain is the `ZMod 2` indicator vector. -/
abbrev PrototypeChain := Fin 3 → ZMod 2

/-- Exact finite boundary-to-chain function used by `τSH`. -/
def boundaryToChain (boundary : PrototypeBoundary) : PrototypeChain :=
  fun face => if face ∈ boundary then 1 else 0

/-- The exact image predicate transported by the boundary-to-chain map. -/
def IsBoundaryIndicator (chain : PrototypeChain) : Prop :=
  ∃ boundary : PrototypeBoundary, boundaryToChain boundary = chain

/-- `τSH`: a typed finite boundary-to-chain theorem transport. -/
def translationSH : ModelTranslation PrototypeBoundary PrototypeChain :=
  { prototypeTypedTranslation .τSH _ _ boundaryToChain with
    sourceProposition := fun _ => True
    targetProposition := IsBoundaryIndicator
    proofTransport := some ⟨fun boundary _ => ⟨boundary, rfl⟩⟩ }

/-- `τSH` carries an actual typed proof transformer into the exact image predicate. -/
def translationSHTheoremEvidence :
    TheoremTransportEvidence translationSH where
  relation_eq := rfl
  transport := ⟨fun boundary _ => ⟨boundary, rfl⟩⟩

/-- Every translated boundary is certified to be an indicator chain. -/
theorem translationSH_isBoundaryIndicator (boundary : PrototypeBoundary) :
    IsBoundaryIndicator (translationSH.objectMap boundary) :=
  ⟨boundary, rfl⟩

theorem boundaryToChain_injective : Function.Injective boundaryToChain := by
  intro left right equal
  ext face
  have entry := congrFun equal face
  by_cases hleft : face ∈ left <;> by_cases hright : face ∈ right <;>
    simp [boundaryToChain, hleft, hright] at entry ⊢

/-- Minimal finite orbit datum and its deliberately lossy cycle-chain summary. -/
structure PrototypeOrbitData where
  fixedPoints : Nat
  primitiveCycles : Nat
  deriving DecidableEq, Repr

def orbitToCycleChain (data : PrototypeOrbitData) : Nat :=
  data.fixedPoints + data.primitiveCycles

/-- `τPH`: declared sound orbit-to-cycle-chain abstraction. -/
def translationPH : ModelTranslation PrototypeOrbitData Nat :=
  prototypeTypedTranslation .τPH _ _ orbitToCycleChain

/-- The finite orbit summary bounds both nonnegative components it combines. -/
def translationPHSoundEvidence :
    SoundAbstractionEvidence translationPH where
  relation_eq := rfl
  Sound := ∀ data,
    data.fixedPoints ≤ orbitToCycleChain data ∧
      data.primitiveCycles ≤ orbitToCycleChain data
  sound := by
    intro data
    simp [orbitToCycleChain]
  lossProfile := [⟨"obligation:orbit-chain-completeness"⟩]

/-- Relation-specific certificate type selected by each carrier edge. -/
def PrototypeCertifiedTranslation : PrototypeEdge → Type
  | .τPB => CertifiedModelTranslation (translationPB (Fin 3))
  | .τGP => CertifiedModelTranslation (translationGP 3)
  | .τGB => CertifiedModelTranslation (translationGB 3)
  | .τBS => CertifiedModelTranslation (translationBS 3)
  | .τSH => CertifiedModelTranslation translationSH
  | .τPH => CertifiedModelTranslation translationPH

/-- All six prototype labels are backed by their matching typed evidence. -/
noncomputable def prototypeCertifiedTranslation :
    (edge : PrototypeEdge) → PrototypeCertifiedTranslation edge
  | .τPB => .exact (translationPBExactEvidence (Fin 3))
  | .τGP => .faithful (translationGPFaithfulEvidence 3)
  | .τGB => .faithful (translationGBFaithfulEvidence 3)
  | .τBS => .sound (translationBSSoundEvidence 3)
  | .τSH => .theoremTransport translationSHTheoremEvidence
  | .τPH => .sound translationPHSoundEvidence

theorem prototype_relation_certificates_complete
    (edge : PrototypeEdge) :
    Nonempty (PrototypeCertifiedTranslation edge) :=
  ⟨prototypeCertifiedTranslation edge⟩

/-- All six carrier edges have a machine-queryable registry entry. -/
theorem prototypeTranslationRegistry_complete (edge : PrototypeEdge) :
    prototypeTranslationEntry edge ∈ prototypeTranslationRegistry.entries := by
  simp [prototypeTranslationRegistry]

/-- Exactly six translations are registered. -/
theorem prototypeTranslationRegistry_card :
    prototypeTranslationRegistry.entries.length = 6 := by
  simp [prototypeTranslationRegistry]
  decide

end DAF.Integration.WorldModelPrototype
```
