# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TargetSufficiency.Variantc2a4a679d0006a95c018bb14ada4fb6a79188e8c3897e2f7e91709fbc1758c5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16dca3fe13c8c136e726668e9e217619b90ae699` · SHA-256 `c2a4a679d0006a95c018bb14ada4fb6a79188e8c3897e2f7e91709fbc1758c5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Certification
import FormalResearch.RiemannHypothesis.TargetComparator
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Trust

/-!
# Source-bound target sufficiency

The observable image preserves source and verifier data and has a unique factor
map from each reachable sufficient compression. Recovery uses classical choice;
it is a logical section, not an executable normalization algorithm.

The proposition index is phantom: raw records can be retargeted. Neither that
index, source strings, nor reconstruction authenticate a source or grant human
permission. The RH endpoint still requires an independently sound local checker
and an actual successful descent. No successful RH certificate is constructed.
-/

namespace FormalResearch.RiemannHypothesis.TargetSufficiency

open FormalResearch.PositiveAtlas
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

universe u

/-- Replayable source identity data; these strings do not authenticate themselves. -/
structure SourceProvenance where
  repository : String
  commit : String
  tree : String
  moduleName : String
  declarationName : String
  toolchain : String
  dependencyManifest : String
  deriving DecidableEq

/-- An explicit verifier identity, separate from a theorem of checker soundness. -/
structure VerifierProfile where
  profileId : String
  deriving DecidableEq

/-- The complete selected observable, with provenance retained in `Type`. -/
structure CertSignature (Disp Prov Inv Out Cmp : Type u) where
  provenance : SourceProvenance
  verifier : VerifierProfile
  dispersion : Disp
  provenanceObs : Prov
  involution : Inv
  output : Out
  comparator : Cmp

/-- A fixed-index state. The phantom proposition parameter does not prove its target. -/
structure SelfState (P : Prop) (src : SourceProvenance) (V : VerifierProfile)
    (Disp Prov Inv Out Cmp : Type u) where
  signature : CertSignature Disp Prov Inv Out Cmp
  source_eq : signature.provenance = src
  verifier_eq : signature.verifier = V

/-- The reachable image of the complete certifying signature. -/
def QMin (P : Prop) (src : SourceProvenance) (V : VerifierProfile)
    (Disp Prov Inv Out Cmp : Type u) :=
  {σ : CertSignature Disp Prov Inv Out Cmp //
    ∃ x : SelfState P src V Disp Prov Inv Out Cmp, x.signature = σ}

variable {P : Prop} {src : SourceProvenance} {V : VerifierProfile}
  {Disp Prov Inv Out Cmp : Type u}

/-- Map a fixed-index state to its observable image. -/
def q (x : SelfState P src V Disp Prov Inv Out Cmp) :
    QMin P src V Disp Prov Inv Out Cmp :=
  ⟨x.signature, x, rfl⟩

/-- Logical representative selection; no executable recovery is claimed. -/
noncomputable def recover (y : QMin P src V Disp Prov Inv Out Cmp) :
    SelfState P src V Disp Prov Inv Out Cmp :=
  Classical.choose y.property

theorem recover_signature (y : QMin P src V Disp Prov Inv Out Cmp) :
    (recover y).signature = y.val :=
  Classical.choose_spec y.property

theorem q_recover (y : QMin P src V Disp Prov Inv Out Cmp) : q (recover y) = y :=
  Subtype.ext (recover_signature y)

theorem recover_q_cert (x : SelfState P src V Disp Prov Inv Out Cmp) :
    (recover (q x)).signature = x.signature :=
  recover_signature (q x)

theorem q_eq_iff (x y : SelfState P src V Disp Prov Inv Out Cmp) :
    q x = q y ↔ x.signature = y.signature := by
  constructor
  · exact congrArg Subtype.val
  · exact Subtype.ext

/-- Observable provenance, independent of the proof witness of reachability. -/
def QMin.provenance (y : QMin P src V Disp Prov Inv Out Cmp) : SourceProvenance :=
  y.val.provenance

theorem QMin.provenance_eq_source (y : QMin P src V Disp Prov Inv Out Cmp) :
    y.provenance = src := by
  obtain ⟨x, hx⟩ := y.property
  exact (congrArg CertSignature.provenance hx).symm.trans x.source_eq

theorem QMin.verifier_eq_profile (y : QMin P src V Disp Prov Inv Out Cmp) :
    y.val.verifier = V := by
  obtain ⟨x, hx⟩ := y.property
  exact (congrArg CertSignature.verifier hx).symm.trans x.verifier_eq

/-- A candidate compression must preserve every selected signature distinction. -/
structure SufficientCompression (X : Type u) (sig : X → CertSignature Disp Prov Inv Out Cmp) where
  State : Type u
  encode : X → State
  sufficient : ∀ ⦃x y : X⦄, encode x = encode y → sig x = sig y

namespace SufficientCompression

variable (C : SufficientCompression (SelfState P src V Disp Prov Inv Out Cmp)
  SelfState.signature)

/-- Restrict to states actually represented by the compression. -/
def Reachable := {y : C.State // ∃ x, C.encode x = y}

def encodeReachable (x : SelfState P src V Disp Prov Inv Out Cmp) : C.Reachable :=
  ⟨C.encode x, x, rfl⟩

/-- Factorization uses a witness only on the reachable carrier. -/
noncomputable def factor (y : C.Reachable) : QMin P src V Disp Prov Inv Out Cmp :=
  q (Classical.choose y.property)

theorem factor_q (x : SelfState P src V Disp Prov Inv Out Cmp) :
    C.factor (C.encodeReachable x) = q x := by
  apply Subtype.ext
  exact C.sufficient (Classical.choose_spec (C.encodeReachable x).property)

theorem factor_unique (f : C.Reachable → QMin P src V Disp Prov Inv Out Cmp)
    (hf : ∀ x, f (C.encodeReachable x) = q x) : f = C.factor := by
  funext y
  obtain ⟨x, hx⟩ := y.property
  have hy : C.encodeReachable x = y := Subtype.ext hx
  rw [← hy, hf, C.factor_q]

end SufficientCompression

/-- Explicit adapter to the accepted Positive Atlas certificate family. -/
def certificateFamily : CertificateFamily (SelfState P src V Disp Prov Inv Out Cmp) where
  index := PUnit.{u + 1}
  value := fun _ => CertSignature Disp Prov Inv Out Cmp
  observe := fun _ x => x.signature

theorem certificate_equivalent_iff (x y : SelfState P src V Disp Prov Inv Out Cmp) :
    certificateFamily.Equivalent x y ↔ x.signature = y.signature := by
  constructor
  · intro h
    exact h PUnit.unit
  · intro h _
    exact h

/-- The observable image is an actual sufficient representation, not an assumed field. -/
def imageRepresentation : SufficientRepresentation
    (certificateFamily (P := P) (src := src) (V := V)
      (Disp := Disp) (Prov := Prov) (Inv := Inv) (Out := Out) (Cmp := Cmp)) where
  carrier := QMin P src V Disp Prov Inv Out Cmp
  compress := q
  recover := fun _ y => y.val
  recover_compress := fun _ _ => rfl

/-- Existing sufficient representations satisfy the new reachable factorization premise. -/
def compressionOfRepresentation
    (R : SufficientRepresentation (certificateFamily (P := P) (src := src) (V := V)
      (Disp := Disp) (Prov := Prov) (Inv := Inv) (Out := Out) (Cmp := Cmp))) :
    SufficientCompression (SelfState P src V Disp Prov Inv Out Cmp) SelfState.signature where
  State := R.carrier
  encode := R.compress
  sufficient := fun h => (certificate_equivalent_iff _ _).mp (R.equivalent_of_compress_eq h)

/-- Hostile guard: a phantom target index permits raw retagging. -/
def SelfState.retarget (Q : Prop) (x : SelfState P src V Disp Prov Inv Out Cmp) :
    SelfState Q src V Disp Prov Inv Out Cmp :=
  ⟨x.signature, x.source_eq, x.verifier_eq⟩

theorem retarget_preserves_signature (Q : Prop)
    (x : SelfState P src V Disp Prov Inv Out Cmp) :
    (x.retarget Q).signature = x.signature := rfl

/-- Any inhabited state carrier admits a false-target raw record, without a proof of False. -/
theorem phantom_index_does_not_imply_truth
    (x : SelfState P src V Disp Prov Inv Out Cmp) :
    ¬ (∀ (Q : Prop), SelfState Q src V Disp Prov Inv Out Cmp → Q) := by
  intro h
  exact h False (x.retarget False)

/-- Different source indices cannot have equal complete signatures, even with equal payloads. -/
theorem source_drift_separates {src' : SourceProvenance} {Q : Prop} {V' : VerifierProfile}
    (x : SelfState P src V Disp Prov Inv Out Cmp)
    (y : SelfState Q src' V' Disp Prov Inv Out Cmp) (h : src ≠ src') :
    x.signature ≠ y.signature := by
  intro heq
  exact h (x.source_eq.symm.trans ((congrArg CertSignature.provenance heq).trans y.source_eq))

/-- Different verifier profiles remain distinct observable data. -/
theorem profile_drift_separates {src' : SourceProvenance} {Q : Prop} {V' : VerifierProfile}
    (x : SelfState P src V Disp Prov Inv Out Cmp)
    (y : SelfState Q src' V' Disp Prov Inv Out Cmp) (h : V ≠ V') :
    x.signature ≠ y.signature := by
  intro heq
  exact h (x.verifier_eq.symm.trans ((congrArg CertSignature.verifier heq).trans y.verifier_eq))

/-- A compression merging distinct observable signatures cannot meet the stated sufficiency test. -/
theorem signature_collision_not_sufficient {X Y : Type u}
    (sig : X → CertSignature Disp Prov Inv Out Cmp) (encode : X → Y)
    {x y : X} (heq : encode x = encode y) (hne : sig x ≠ sig y) :
    ¬ (∀ ⦃a b⦄, encode a = encode b → sig a = sig b) :=
  fun h => hne (h heq)

/-- RH specialization retains the independent exact target comparator. -/
abbrev RHSelfState := SelfState Target.Statement src V Disp Prov Inv Out Cmp

abbrev RHQMin := QMin Target.Statement src V Disp Prov Inv Out Cmp

/-- This selects a fixed target; it does not extract a proof from signature data. -/
def reconstructedTarget (_ : RHQMin (src := src) (V := V)
    (Disp := Disp) (Prov := Prov) (Inv := Inv) (Out := Out) (Cmp := Cmp)) : Prop :=
  Target.Statement

theorem reconstructedTarget_eq_mathlib
    (y : RHQMin (src := src) (V := V)
      (Disp := Disp) (Prov := Prov) (Inv := Inv) (Out := Out) (Cmp := Cmp)) :
    reconstructedTarget y = _root_.RiemannHypothesis :=
  Target.statement_eq_mathlib

/-- Checker soundness and exact target binding are required, not supplied by provenance data. -/
structure RHJurisdiction (Certificate : Type u) (src : SourceProvenance) (V : VerifierProfile) where
  jurisdiction : LocalJurisdiction Certificate
  target_eq : jurisdiction.statement = Target.Statement
  provenance : SourceProvenance
  source_eq : provenance = src
  verifier : VerifierProfile
  verifier_eq : verifier = V

/-- Conditional transport only: no accepted RH certificate is constructed here. -/
theorem successfulDescent_mathlib {Certificate : Type u}
    (J : RHJurisdiction Certificate src V) (result : LocalReplayResult Certificate)
    (h : SuccessfulDescent J.jurisdiction result) : _root_.RiemannHypothesis := by
  have hlocal : J.jurisdiction.statement := successfulDescent_statement J.jurisdiction result h
  have htarget : Target.Statement := J.target_eq ▸ hlocal
  exact Target.statement_eq_mathlib ▸ htarget

/-- A remote true flag does not overcome rejection by the locally sound checker. -/
theorem rejected_replay_cannot_descend {Certificate : Type u}
    (J : RHJurisdiction Certificate src V) (result : LocalReplayResult Certificate)
    (h : J.jurisdiction.accepts result.translation.certificate = false) :
    ¬ SuccessfulDescent J.jurisdiction result :=
  local_rejection_blocks_descent J.jurisdiction result h

/-- Logical independence from any separately specified operational grant evidence. -/
theorem reconstruction_does_not_supply_arbitrary_authority
    (x : SelfState P src V Disp Prov Inv Out Cmp) :
    ¬ (∀ (Authorized : Prop), (recover (q x)).signature = x.signature → Authorized) := by
  intro h
  exact h False (recover_q_cert x)

end FormalResearch.RiemannHypothesis.TargetSufficiency
```
