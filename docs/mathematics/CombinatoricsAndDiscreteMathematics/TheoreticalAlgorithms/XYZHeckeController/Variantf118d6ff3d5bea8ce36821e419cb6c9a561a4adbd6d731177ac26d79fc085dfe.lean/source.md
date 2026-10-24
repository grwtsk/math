# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.XYZHeckeController.Variantf118d6ff3d5bea8ce36821e419cb6c9a561a4adbd6d731177ac26d79fc085dfe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `566288ead1f39cf50efb9617bd4f28ed1d0e6940` · SHA-256 `f7f972d7b3199524640b779f3bb90a652c2ddd288ca925eb06c42e15d778e80e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HeckeMatrixV1.Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.HeckeMatrixV1.Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/XYZHeckeController.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.XYZ.Fixed
public import Surface.Refactor.Authority
import Mathlib.Data.List.Nodup

/-!
# Presentation-only finite Hecke-style scheduling

This module enumerates exact upper-triangular integer matrices and uses them in
a bounded, deterministic scheduling average.  The enumeration is useful
finite data, but the average is not a classical Hecke operator, does not act on
a proved modular-form domain, and carries no arithmetic or cohomological
authority.  Any future comparison with a classical action must enter through
the explicit proof-bearing certificate interface below.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HeckeMatrixV1.Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938

public section

namespace Presentation.XYZHeckeController

open Surface.Core.XYZ
open Surface.Refactor

/-! ## Stable exact cosets -/

@[surface_novel]
structure HeckeMatrixV1 where
  m00 : Int
  m01 : Int
  m10 : Int
  m11 : Int
deriving DecidableEq, Repr

@[expose] def HeckeMatrixV1.det (matrix : HeckeMatrixV1) : Int :=
  matrix.m00 * matrix.m11 - matrix.m01 * matrix.m10

@[surface_novel]
structure HeckeCosetV1 where
  a : Nat
  d : Nat
  b : Nat
  matrix : HeckeMatrixV1
deriving DecidableEq, Repr

@[expose] def makeHeckeCosetV1 (n d b : Nat) : HeckeCosetV1 :=
  let a := n / d
  { a
    d
    b
    matrix := {
      m00 := Int.ofNat a
      m01 := Int.ofNat b
      m10 := 0
      m11 := Int.ofNat d
    } }

/-- Positive divisors in ascending order.  Filtering `List.range (n + 1)`
makes the order part of the executable definition rather than an unordered
set iteration detail.  The list is empty at `n = 0`. -/
@[expose] def positiveDivisorsAscending (n : Nat) : List Nat :=
  (List.range (n + 1)).filter fun d ↦ decide (0 < d ∧ d ∣ n)

@[surface_novel, surface_published]
theorem positiveDivisorsAscending_sound {n d : Nat}
    (member : d ∈ positiveDivisorsAscending n) :
    0 < d ∧ d ∣ n := by
  simp only [positiveDivisorsAscending, List.mem_filter] at member
  exact of_decide_eq_true member.2

/-- Required stable enumeration: `d` ascends through positive divisors,
`a = n / d`, and `b` ascends through `0, ..., d - 1`. -/
@[expose] def heckeCosets (n : Nat) : List HeckeCosetV1 :=
  (positiveDivisorsAscending n).flatMap fun d ↦
    (List.range d).map fun b ↦ makeHeckeCosetV1 n d b

@[surface_novel, surface_published]
theorem heckeCosets_deterministic (n : Nat)
    {left right : List HeckeCosetV1}
    (hleft : left = heckeCosets n)
    (hright : right = heckeCosets n) :
    left = right := by
  exact hleft.trans hright.symm

/-- Lexicographic output order, with `d` primary and `b` secondary. -/
@[expose] def HeckeCosetV1.Before
    (left right : HeckeCosetV1) : Prop :=
  left.d < right.d ∨ (left.d = right.d ∧ left.b < right.b)

@[surface_novel, surface_published]
theorem heckeCosets_stable_order (n : Nat) :
    (heckeCosets n).Pairwise HeckeCosetV1.Before := by
  rw [heckeCosets, List.pairwise_flatMap]
  constructor
  · intro d hd
    rw [List.pairwise_map]
    apply List.pairwise_lt_range.imp
    intro b1 b2 hlt
    exact Or.inr ⟨rfl, hlt⟩
  · have hdivisors :
        (positiveDivisorsAscending n).Pairwise (fun d1 d2 ↦ d1 < d2) := by
      exact List.Pairwise.filter _ List.pairwise_lt_range
    apply hdivisors.imp
    intro d1 d2 hlt c1 hc1 c2 hc2
    rcases List.mem_map.mp hc1 with ⟨b1, hb1, rfl⟩
    rcases List.mem_map.mp hc2 with ⟨b2, hb2, rfl⟩
    exact Or.inl hlt

@[surface_novel, surface_published]
theorem heckeCosets_nodup (n : Nat) :
    (heckeCosets n).Nodup := by
  rw [heckeCosets, List.nodup_flatMap]
  constructor
  · intro d hd
    exact List.nodup_range.map (by
      intro b1 b2 heq
      exact congrArg HeckeCosetV1.b heq)
  · have hdivisors : (positiveDivisorsAscending n).Nodup := by
      exact List.Nodup.filter _ List.nodup_range
    have hpairwise :
        (positiveDivisorsAscending n).Pairwise (fun d1 d2 ↦ d1 ≠ d2) :=
      List.nodup_iff_pairwise_ne.mp hdivisors
    apply hpairwise.imp
    intro d1 d2 hne
    apply List.disjoint_left.mpr
    intro coset hc1 hc2
    rcases List.mem_map.mp hc1 with ⟨b1, hb1, heq1⟩
    rcases List.mem_map.mp hc2 with ⟨b2, hb2, heq2⟩
    have hdEq : d1 = d2 := by
      have hcoset : makeHeckeCosetV1 n d1 b1 =
          makeHeckeCosetV1 n d2 b2 := heq1.trans heq2.symm
      exact congrArg HeckeCosetV1.d hcoset
    exact hne hdEq

@[surface_novel, surface_published]
theorem heckeCoset_coordinates {n : Nat} {coset : HeckeCosetV1}
    (member : coset ∈ heckeCosets n) :
    coset.a * coset.d = n ∧ coset.b < coset.d := by
  rcases List.mem_flatMap.mp member with ⟨d, hd, hcoset⟩
  rcases List.mem_map.mp hcoset with ⟨b, hb, rfl⟩
  have hdivides : d ∣ n := (positiveDivisorsAscending_sound hd).2
  exact ⟨Nat.div_mul_cancel hdivides, List.mem_range.mp hb⟩

@[surface_novel, surface_published]
theorem heckeCosetMatrix_det {n : Nat} {coset : HeckeCosetV1}
    (member : coset ∈ heckeCosets n) :
    coset.matrix.det = Int.ofNat n := by
  rcases List.mem_flatMap.mp member with ⟨d, hd, hcoset⟩
  rcases List.mem_map.mp hcoset with ⟨b, hb, rfl⟩
  have hdivides : d ∣ n := (positiveDivisorsAscending_sound hd).2
  have hdetNat : n / d * d = n := Nat.div_mul_cancel hdivides
  simp only [makeHeckeCosetV1, HeckeMatrixV1.det]
  norm_num
  exact_mod_cast hdetNat

/-- Exact divisor sum used by the count theorem. -/
@[expose] def sumPositiveDivisors (n : Nat) : Nat :=
  (positiveDivisorsAscending n).sum

@[surface_novel, surface_published]
theorem heckeCoset_count_eq_sum_divisors (n : Nat) :
    (heckeCosets n).length = sumPositiveDivisors n := by
  simp [heckeCosets, sumPositiveDivisors, List.length_flatMap]

/-! ## Bounded scheduling transform -/

@[expose] def heckeScheduleSchemaV1 : String :=
  "surface.xyz.hecke-schedule.v1"

@[expose] def heckeScheduleTransformIdV1 : String :=
  "HeckeScheduleTransformV1"

@[expose] def heckeScheduleMaxNV1 : Nat :=
  4_096

@[surface_novel]
structure ScheduleVectorV1 where
  firstRaw : Int
  secondRaw : Int
deriving DecidableEq, Repr

@[expose] def ScheduleVectorV1.Valid (vector : ScheduleVectorV1) : Prop :=
  FitsSignedBits 64 vector.firstRaw ∧ FitsSignedBits 64 vector.secondRaw

instance (vector : ScheduleVectorV1) : Decidable vector.Valid := by
  unfold ScheduleVectorV1.Valid
  infer_instance

@[surface_novel]
structure HeckeScheduleTransformV1 where
  schema : String
  protocolVersion : Nat
  transformId : String
  n : Nat
  input : ScheduleVectorV1
  cosets : List HeckeCosetV1
  cosetCount : Nat
  output : ScheduleVectorV1
  authority : RefactorAuthority := .presentationOnly
deriving DecidableEq, Repr

@[expose] def checkedScheduleI128 (value : Int) : Option Int :=
  if FitsSignedBits 128 value then some value else none

@[expose] def checkedScheduleAddI128 (left right : Int) : Option Int :=
  checkedScheduleI128 (left + right)

@[expose] def checkedScheduleMulI128 (left right : Int) : Option Int :=
  checkedScheduleI128 (left * right)

/-- Nearest-integer division with ties to an even result, accepting signed
numerators and requiring an i64 output.  Lean's Euclidean remainder for a
positive denominator makes the same formula valid for negative numerators. -/
@[expose] def roundDivNearestEvenI64
    (numerator denominator : Int) : Option Int :=
  if 0 < denominator ∧ FitsSignedBits 128 numerator ∧
      FitsSignedBits 128 denominator then
    let doubledRemainder := 2 * (numerator % denominator)
    if FitsSignedBits 128 doubledRemainder then
      let rounded := nearestEvenQuotient numerator denominator
      if FitsSignedBits 64 rounded then some rounded else none
    else
      none
  else
    none

@[expose] def checkedApplyHeckeCoset
    (coset : HeckeCosetV1) (input : ScheduleVectorV1) :
    Option ScheduleVectorV1 := do
  let ax ← checkedScheduleMulI128 (Int.ofNat coset.a) input.firstRaw
  let byTerm ← checkedScheduleMulI128 (Int.ofNat coset.b) input.secondRaw
  let first ← checkedScheduleAddI128 ax byTerm
  let second ←
    checkedScheduleMulI128 (Int.ofNat coset.d) input.secondRaw
  pure ⟨first, second⟩

@[expose] def accumulateHeckeSchedule
    (input : ScheduleVectorV1) :
    List HeckeCosetV1 → ScheduleVectorV1 → Option ScheduleVectorV1
  | [], accumulated => some accumulated
  | coset :: remaining, accumulated => do
      let mapped ← checkedApplyHeckeCoset coset input
      let first ←
        checkedScheduleAddI128 accumulated.firstRaw mapped.firstRaw
      let second ←
        checkedScheduleAddI128 accumulated.secondRaw mapped.secondRaw
      accumulateHeckeSchedule input remaining ⟨first, second⟩

@[expose] def HeckeScheduleLevelValidV1 (n : Nat) : Prop :=
  0 < n ∧ n ≤ heckeScheduleMaxNV1

instance (n : Nat) : Decidable (HeckeScheduleLevelValidV1 n) := by
  unfold HeckeScheduleLevelValidV1
  infer_instance

/-- Apply every exact coset matrix, accumulate using checked signed-128-bit
arithmetic, then divide by the exact nonzero coset count with nearest-even
rounding.  Zero, levels above `4096`, non-i64 inputs, empty cosets, and any
overflow are rejected. -/
@[expose] def heckeScheduleTransformV1
    (n : Nat) (input : ScheduleVectorV1) :
    Option HeckeScheduleTransformV1 :=
  if HeckeScheduleLevelValidV1 n ∧ input.Valid then
    let cosets := heckeCosets n
    if cosets.isEmpty then
      none
    else do
      let accumulated ← accumulateHeckeSchedule input cosets ⟨0, 0⟩
      let denominator := Int.ofNat cosets.length
      let first ←
        roundDivNearestEvenI64 accumulated.firstRaw denominator
      let second ←
        roundDivNearestEvenI64 accumulated.secondRaw denominator
      pure {
        schema := heckeScheduleSchemaV1
        protocolVersion := 1
        transformId := heckeScheduleTransformIdV1
        n
        input
        cosets
        cosetCount := cosets.length
        output := ⟨first, second⟩
        authority := .presentationOnly
      }
  else
    none

@[surface_novel, surface_published]
theorem heckeScheduleTransformV1_deterministic
    (n : Nat) (input : ScheduleVectorV1)
    {left right : HeckeScheduleTransformV1}
    (hleft : heckeScheduleTransformV1 n input = some left)
    (hright : heckeScheduleTransformV1 n input = some right) :
    left = right := by
  rw [hleft] at hright
  exact Option.some.inj hright

@[surface_novel, surface_published]
theorem heckeScheduleTransformV1_zero_rejected
    (input : ScheduleVectorV1) :
    heckeScheduleTransformV1 0 input = none := by
  simp [heckeScheduleTransformV1, HeckeScheduleLevelValidV1]

@[surface_novel, surface_published]
theorem heckeScheduleTransformV1_above_bound_rejected
    (n : Nat) (input : ScheduleVectorV1)
    (habove : heckeScheduleMaxNV1 < n) :
    heckeScheduleTransformV1 n input = none := by
  simp [heckeScheduleTransformV1, HeckeScheduleLevelValidV1]
  omega

@[surface_novel, surface_published]
theorem heckeScheduleTransformV1_cosets_exact
    (n : Nat) (input : ScheduleVectorV1) (result : HeckeScheduleTransformV1)
    (accepted : heckeScheduleTransformV1 n input = some result) :
    result.n = n ∧ result.input = input ∧
      result.cosets = heckeCosets n ∧
      result.cosetCount = (heckeCosets n).length ∧
      result.authority = .presentationOnly := by
  simp only [heckeScheduleTransformV1] at accepted
  split at accepted <;> try contradiction
  split at accepted <;> try contradiction
  rcases Option.bind_eq_some_iff.mp accepted with
    ⟨accumulated, haccumulated, hfirstBind⟩
  rcases Option.bind_eq_some_iff.mp hfirstBind with
    ⟨first, hfirst, hsecondBind⟩
  rcases Option.bind_eq_some_iff.mp hsecondBind with
    ⟨second, hsecond, hresult⟩
  have heq := Option.some.inj hresult
  subst result
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

/-! ## Classical-action authority firewall -/

@[surface_novel, surface_certificate]
structure ClassicalHeckeConformanceCertificate where
  claim : Prop
  claimCertified : claim

@[surface_novel, surface_published]
theorem ClassicalHeckeConformanceCertificate.certified
    (certificate : ClassicalHeckeConformanceCertificate) :
    certificate.claim :=
  certificate.claimCertified

@[expose] def ProvesClassicalHeckeAction
    (_ : HeckeScheduleTransformV1) : Prop :=
  False

@[surface_novel, surface_published]
theorem heckeSchedule_has_no_classical_hecke_authority
    (schedule : HeckeScheduleTransformV1) :
    ¬ ProvesClassicalHeckeAction schedule := by
  simp [ProvesClassicalHeckeAction]

/-! ## Finite multi-scale metadata -/

@[surface_novel]
structure ModularScaleLevel where
  levelId : Nat
  n : Nat
  inputRevision : Nat
  outputRevision : Nat
  maxDepth : Nat
  maxNodes : Nat
deriving DecidableEq, Repr

@[expose] def ModularScaleLevel.BoundsValid
    (level : ModularScaleLevel) : Prop :=
  HeckeScheduleLevelValidV1 level.n ∧
    0 < level.maxDepth ∧ 0 < level.maxNodes

@[expose] def ModularLevelsOrdered
    (levels : List ModularScaleLevel) : Prop :=
  levels.Pairwise fun earlier later ↦ earlier.levelId < later.levelId

@[expose] def ModularRevisionsMonotone
    (levels : List ModularScaleLevel) : Prop :=
  (∀ level ∈ levels, level.inputRevision ≤ level.outputRevision) ∧
    levels.Pairwise (fun earlier later ↦
      earlier.outputRevision ≤ later.inputRevision)

@[expose] def ModularBoundsValid
    (levels : List ModularScaleLevel) : Prop :=
  ∀ level ∈ levels, level.BoundsValid

/-- A controller plan is finite, proof-checked scheduling metadata.  It has no
field capable of replacing an admitted `FixedXYZ` transport value. -/
@[surface_novel]
structure ModularControllerPlan where
  schema : String
  levels : List ModularScaleLevel
  levelsOrdered : ModularLevelsOrdered levels
  revisionsMonotone : ModularRevisionsMonotone levels
  boundsValid : ModularBoundsValid levels
  authority : RefactorAuthority := .presentationOnly

/-- Bounds attached to the presentation bracket program produced for a level;
the program itself lives in the client presentation layer. -/
@[surface_novel]
structure BoundedBracketProgramMetadata where
  levelId : Nat
  maxDepth : Nat
  maxNodes : Nat
  authority : RefactorAuthority := .presentationOnly
deriving DecidableEq, Repr

@[expose] def ModularScaleLevel.bracketMetadata
    (level : ModularScaleLevel) : BoundedBracketProgramMetadata where
  levelId := level.levelId
  maxDepth := level.maxDepth
  maxNodes := level.maxNodes
  authority := .presentationOnly

@[expose] def ProvesClassicalHeckeFromModularPlan
    (_ : ModularControllerPlan) : Prop :=
  False

@[surface_novel, surface_published]
theorem modularControllerPlan_has_no_classical_hecke_authority
    (plan : ModularControllerPlan) :
    ¬ ProvesClassicalHeckeFromModularPlan plan := by
  simp [ProvesClassicalHeckeFromModularPlan]

end Presentation.XYZHeckeController
```
