-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ScaledGain.Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ScaledGain.Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239","mathematical_subject":"Computation.DataStructures","original_sha256":"29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/Stability/DefectTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Stability.DerivativeGain

/-!
# Affine defect transport

The original `affineStep` and `transportAlong` definitions below are exact
only for integral gains.  They do not encode a sub-unit contraction factor and
no asymptotic contraction theorem is derived from them.  General nonnegative
rational gains use the division-free `ScaledGain` and `FractionBound` forms.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ScaledGain.Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239

namespace Mathematics.Stability

def affineStep
    (gain localDefect incomingDefect : Nat) : Nat :=
  gain * incomingDefect + localDefect

/-! A division-free nonnegative rational gain `numerator / scale`. -/
structure ScaledGain where
  numerator : Nat
  scale : Nat
  scalePositive : 0 < scale

def ScaledGain.one : ScaledGain :=
  ⟨1, 1, by decide⟩

def ScaledGain.compose
    (left right : ScaledGain) : ScaledGain where
  numerator := left.numerator * right.numerator
  scale := left.scale * right.scale
  scalePositive :=
    Nat.mul_pos left.scalePositive right.scalePositive

@[simp] theorem ScaledGain.one_numerator :
    ScaledGain.one.numerator = 1 :=
  rfl

@[simp] theorem ScaledGain.one_scale :
    ScaledGain.one.scale = 1 :=
  rfl

@[simp] theorem ScaledGain.compose_numerator
    (left right : ScaledGain) :
    (left.compose right).numerator =
      left.numerator * right.numerator :=
  rfl

@[simp] theorem ScaledGain.compose_scale
    (left right : ScaledGain) :
    (left.compose right).scale =
      left.scale * right.scale :=
  rfl

/-!
`FractionBound` represents the upper bound `numerator / denominator` without
division or rounding.
-/
structure FractionBound where
  numerator : Nat
  denominator : Nat
  denominatorPositive : 0 < denominator

def FractionBound.ofNat (value : Nat) : FractionBound :=
  ⟨value, 1, by decide⟩

def scaledAffineStep
    (gain : ScaledGain)
    (localDefect : Nat)
    (incoming : FractionBound) : FractionBound where
  numerator :=
    gain.numerator * incoming.numerator +
      gain.scale * incoming.denominator * localDefect
  denominator := gain.scale * incoming.denominator
  denominatorPositive :=
    Nat.mul_pos gain.scalePositive incoming.denominatorPositive

def SatisfiesBound (actual : Nat) (bound : FractionBound) : Prop :=
  bound.denominator * actual ≤ bound.numerator

def SatisfiesScaledAffineStep
    (gain : ScaledGain)
    (localDefect incoming outgoing : Nat) : Prop :=
  gain.scale * outgoing ≤
    gain.numerator * incoming + gain.scale * localDefect

theorem scaled_affine_step_preserves_bound
    (gain : ScaledGain)
    (localDefect incoming outgoing : Nat)
    (incomingBound : FractionBound)
    (incomingCertified : SatisfiesBound incoming incomingBound)
    (stepCertified :
      SatisfiesScaledAffineStep gain localDefect incoming outgoing) :
    SatisfiesBound outgoing
      (scaledAffineStep gain localDefect incomingBound) := by
  unfold SatisfiesBound scaledAffineStep
  calc
    (gain.scale * incomingBound.denominator) * outgoing =
        incomingBound.denominator * (gain.scale * outgoing) := by
          simp [Nat.mul_comm, Nat.mul_left_comm]
    _ ≤ incomingBound.denominator *
        (gain.numerator * incoming + gain.scale * localDefect) :=
      Nat.mul_le_mul_left incomingBound.denominator stepCertified
    _ = gain.numerator * (incomingBound.denominator * incoming) +
        gain.scale * incomingBound.denominator * localDefect := by
          simp [Nat.mul_add, Nat.mul_comm, Nat.mul_left_comm]
    _ ≤ gain.numerator * incomingBound.numerator +
        gain.scale * incomingBound.denominator * localDefect :=
      Nat.add_le_add_right
        (Nat.mul_le_mul_left gain.numerator incomingCertified)
        (gain.scale * incomingBound.denominator * localDefect)

def constantAffineBound
    (gain localDefect initialDefect : Nat) :
    Nat → Nat
  | 0 => initialDefect
  | n + 1 =>
      affineStep gain localDefect
        (constantAffineBound gain localDefect initialDefect n)

@[simp] theorem constantAffineBound_zero
    (gain localDefect initialDefect : Nat) :
    constantAffineBound gain localDefect initialDefect 0 =
      initialDefect :=
  rfl

@[simp] theorem constantAffineBound_succ
    (gain localDefect initialDefect n : Nat) :
    constantAffineBound gain localDefect initialDefect (n + 1) =
      gain *
        constantAffineBound gain localDefect initialDefect n +
      localDefect :=
  rfl

theorem iterated_affine_defect_bound
    (actual : Nat → Nat)
    (gain localDefect initialDefect : Nat)
    (initial : actual 0 ≤ initialDefect)
    (step :
      ∀ n, actual (n + 1) ≤
        gain * actual n + localDefect) :
    ∀ n, actual n ≤
      constantAffineBound gain localDefect initialDefect n := by
  intro n
  induction n with
  | zero => exact initial
  | succ n inductionHypothesis =>
      exact Nat.le_trans (step n)
        (Nat.add_le_add_right
          (Nat.mul_le_mul_left gain inductionHypothesis)
          localDefect)

def transportAlong :
    List (Nat × Nat) → Nat → Nat
  | [], incoming => incoming
  | (gain, localDefect) :: rest, incoming =>
      transportAlong rest
        (affineStep gain localDefect incoming)

def scaledTransportAlong :
    List (ScaledGain × Nat) → FractionBound → FractionBound
  | [], incoming => incoming
  | (gain, localDefect) :: rest, incoming =>
      scaledTransportAlong rest
        (scaledAffineStep gain localDefect incoming)

@[simp] theorem transportAlong_nil (incoming : Nat) :
    transportAlong [] incoming = incoming :=
  rfl

@[simp] theorem transportAlong_cons
    (gain localDefect : Nat)
    (rest : List (Nat × Nat))
    (incoming : Nat) :
    transportAlong ((gain, localDefect) :: rest) incoming =
      transportAlong rest
        (gain * incoming + localDefect) :=
  rfl

theorem exact_construction_zero_gain_erases_current_bound
    (initialDefect : Nat) :
    affineStep 0 0 initialDefect = 0 := by
  simp [affineStep]

@[simp] theorem scaledTransportAlong_nil
    (incoming : FractionBound) :
    scaledTransportAlong [] incoming = incoming :=
  rfl

@[simp] theorem scaledTransportAlong_cons
    (gain : ScaledGain)
    (localDefect : Nat)
    (rest : List (ScaledGain × Nat))
    (incoming : FractionBound) :
    scaledTransportAlong
      ((gain, localDefect) :: rest) incoming =
      scaledTransportAlong rest
        (scaledAffineStep gain localDefect incoming) :=
  rfl

end Mathematics.Stability
