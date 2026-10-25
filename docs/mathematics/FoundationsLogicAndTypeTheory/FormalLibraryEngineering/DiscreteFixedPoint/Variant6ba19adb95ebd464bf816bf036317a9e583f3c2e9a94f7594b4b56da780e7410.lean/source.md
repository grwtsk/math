# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscreteFixedPoint.Variant6ba19adb95ebd464bf816bf036317a9e583f3c2e9a94f7594b4b56da780e7410

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9afe29a87a2a8b54d9479c537dab20379b84669` · SHA-256 `2a6e3ecbccc6c258cfbd236290c413c5820e3036e860abee4684029ccc455e82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VersionedOperator.Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.VersionedOperator.Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"dd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Operational/DiscreteFixedPoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Dynamics.FixedPoints.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Data.Fintype.Basic
import Mathematics.Concept.AuthorityElements.AuthorityProfile
import Mathematics.Projection.SnapshotAuthority

/-!
# Versioned discrete operators and exact fixed points

Incidence separation is absent from this layer.  A fixed point is indexed by
one exact operator and carries the equation for that operator.  Residual
estimates and finite candidate lists are represented by different types.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VersionedOperator.Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797

namespace Mathematics.Operational

universe u v

/--
One snapshot-scoped discrete-time operator with an explicitly invariant
domain.  The digest locates frozen operator bytes; it does not prove any
property of the map.
-/
structure VersionedOperator (State : Type u) where
  operatorId : StableId
  snapshot : Projection.ProjectionSnapshot
  domain : Set State
  rawMap : State → State
  mapsTo : Set.MapsTo rawMap domain domain
  operatorDigest : Digest

namespace VersionedOperator

variable {State : Type u}

/-- The total self-map on the certified invariant domain. -/
def step (operator : VersionedOperator State) :
    operator.domain → operator.domain :=
  fun state ↦
    ⟨operator.rawMap state, operator.mapsTo state.property⟩

@[simp] theorem step_value
    (operator : VersionedOperator State)
    (state : operator.domain) :
    (operator.step state).1 = operator.rawMap state :=
  rfl

/-- A total ambient map is an invariant-domain operator on the full carrier. -/
def onUniverse
    (operatorId : StableId)
    (snapshot : Projection.ProjectionSnapshot)
    (rawMap : State → State)
    (operatorDigest : Digest) :
    VersionedOperator State where
  operatorId := operatorId
  snapshot := snapshot
  domain := Set.univ
  rawMap := rawMap
  mapsTo := fun _ _ ↦ Set.mem_univ _
  operatorDigest := operatorDigest

end VersionedOperator

/-- Exact fixedness for one specific versioned operator. -/
structure CertifiedFixedPoint
    {State : Type u}
    (operator : VersionedOperator State) : Type u where
  point : operator.domain
  fixed : Function.IsFixedPt operator.step point

namespace CertifiedFixedPoint

variable
    {State : Type u}
    {operator : VersionedOperator State}

@[simp] theorem step_eq
    (point : CertifiedFixedPoint operator) :
    operator.step point.point = point.point :=
  point.fixed

/-- Exact fixedness after forgetting the invariant-domain subtype. -/
@[simp] theorem raw_step_eq
    (point : CertifiedFixedPoint operator) :
    operator.rawMap point.point = point.point := by
  exact congrArg Subtype.val point.fixed

/-- Exact fixedness persists under every finite iterate. -/
@[simp] theorem iterate_eq
    (point : CertifiedFixedPoint operator)
    (iteration : Nat) :
    (operator.step^[iteration]) point.point = point.point :=
  (point.fixed.iterate iteration).eq

end CertifiedFixedPoint

/-- Norm residual of a candidate point; zero is not assumed. -/
def fixedResidual
    {State : Type u} [NormedAddCommGroup State]
    (operator : VersionedOperator State)
    (point : operator.domain) : ℝ :=
  ‖operator.rawMap point - point‖

/--
Numerical or analytic evidence that a residual is small.  This record has no
constructor into `CertifiedFixedPoint`; exact equality needs an independent
proof.
-/
structure ApproximateFixedPointObservation
    {State : Type u} [NormedAddCommGroup State]
    (operator : VersionedOperator State) where
  point : operator.domain
  tolerance : ℝ
  tolerance_nonnegative : 0 ≤ tolerance
  residual_le : fixedResidual operator point ≤ tolerance
  numericalProfileId : StableId
  authority : Concept.Profile

/-- A finite list of candidates makes no fixedness or exhaustiveness claim. -/
structure CandidateFixedFamily
    {State : Type u}
    (operator : VersionedOperator State) where
  Point : Type v
  pointFintype : Fintype Point
  pointDecidableEq : DecidableEq Point
  point : Point → operator.domain

/-- A finite injective family whose members each carry exact fixedness. -/
structure CertifiedFixedFamily
    {State : Type u}
    (operator : VersionedOperator State) where
  Point : Type v
  pointFintype : Fintype Point
  pointDecidableEq : DecidableEq Point
  point : Point → CertifiedFixedPoint operator
  stateInjective :
    Function.Injective fun index ↦ (point index).point

/-- A separate theorem that a certified finite family exhausts one region. -/
structure ExhaustiveFixedFamilyOn
    {State : Type u}
    {operator : VersionedOperator State}
    (family : CertifiedFixedFamily operator)
    (region : Set operator.domain) : Prop where
  complete :
    ∀ point ∈ region,
      Function.IsFixedPt operator.step point →
      ∃ index, point = (family.point index).point

end Mathematics.Operational
```
