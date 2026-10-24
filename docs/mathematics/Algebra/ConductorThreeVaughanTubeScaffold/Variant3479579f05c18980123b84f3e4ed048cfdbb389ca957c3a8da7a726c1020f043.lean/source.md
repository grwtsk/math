# Complete source: GRWTSK.Algebra.ConductorThreeVaughanTubeScaffold.Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbb8479620a4a9317f8799a4c1254abb3190bf07` · SHA-256 `7f81104950b8e5a3212a460c80374ff77e1b17dd2e518b898479b08eba861060`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.VaughanDirectionScale.Variantb66589d0c8a218cb787030eac9fd7c5ed8bfa426bcf7dcc1ffb495f4652d1417","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b66589d0c8a218cb787030eac9fd7c5ed8bfa426bcf7dcc1ffb495f4652d1417","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.VaughanDirectionScale.Variantb66589d0c8a218cb787030eac9fd7c5ed8bfa426bcf7dcc1ffb495f4652d1417","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"b66589d0c8a218cb787030eac9fd7c5ed8bfa426bcf7dcc1ffb495f4652d1417","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeVaughanTubeScaffold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeTwistedVaughan
public import Surface.Core.PrimeWalkWangZahlGeometry
public import Mathlib.Algebra.Order.Floor.Div
public import Mathlib.Analysis.Normed.Module.Normalize
import Mathlib.Tactic

/-!
# Deterministic Euclidean tube scaffold for conductor-three Vaughan pairs

This module assigns one concrete unit segment and one closed metric tube to
each effective Type II factor pair.  The assignment is fixed by the arithmetic
scale and the pair of factors; it does not depend on a requested estimate,
GRH, or the observed value of a partial sum.

This is deliberately only a geometric scaffold.  It proves neither the
Katz--Tao convex Wolff hypotheses nor signed cancellation of the Vaughan
coefficients.  In particular, no Wang--Zahl union estimate is converted here
into a Type II maximal estimate.
-/


namespace GRWTSK.Algebra.VaughanDirectionScale.Variantb66589d0c8a218cb787030eac9fd7c5ed8bfa426bcf7dcc1ffb495f4652d1417

public section

namespace Surface.Core.ConductorThreeVaughanTubeScaffold

noncomputable section

open WithLp
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.PrimeWalkSpatialEncoding
open Surface.Core.PrimeWalkWangZahlGeometry

/-! ## Fixed arithmetic and geometric scales -/

/--
`L_N = ceil((2N) / U_N) + 1`, where `U_N` is the fixed fourth-root Vaughan
cutoff.  The extra one keeps every encoded denominator strictly positive.
-/
@[expose]
def vaughanDirectionScale (N : ℕ) : ℕ :=
  (2 * N) ⌈/⌉ vaughanFourthRootCutoff N + 1

@[surface_novel, surface_published]
theorem vaughanDirectionScale_pos (N : ℕ) :
    0 < vaughanDirectionScale N := by
  simp [vaughanDirectionScale]

/-- The deterministic physical tube thickness `δ_N = 1 / (100 L_N)`. -/
@[expose]
def vaughanTubeThickness (N : ℕ) : ℝ :=
  1 / (100 * (vaughanDirectionScale N : ℝ))

@[surface_novel, surface_published]
theorem vaughanTubeThickness_pos (N : ℕ) :
    0 < vaughanTubeThickness N := by
  unfold vaughanTubeThickness
  have hscale : (0 : ℝ) < vaughanDirectionScale N := by
    exact_mod_cast vaughanDirectionScale_pos N
  positivity

/-! ## Pair directions -/

/-- First affine direction coordinate `u_m`. -/
@[expose]
def vaughanDirectionU (N m : ℕ) : ℝ :=
  -(1 / 4 : ℝ) + (m : ℝ) / (2 * vaughanDirectionScale N)

/-- Second affine direction coordinate `v_k`. -/
@[expose]
def vaughanDirectionV (N k : ℕ) : ℝ :=
  -(1 / 4 : ℝ) + (k : ℝ) / (2 * vaughanDirectionScale N)

/-- The unnormalized spatial vector `(u_m, v_k, 1)`. -/
@[expose]
def vaughanRawDirection (N m k : ℕ) : SpatialPoint :=
  toLp 2 ![vaughanDirectionU N m, vaughanDirectionV N k, (1 : ℝ)]

@[surface_novel, surface_published]
theorem vaughanRawDirection_ne_zero (N m k : ℕ) :
    vaughanRawDirection N m k ≠ 0 := by
  intro h
  have hcoord := congrArg (fun x : SpatialPoint ↦ x (2 : Fin 3)) h
  simp [vaughanRawDirection] at hcoord

/-- The two arithmetic coordinates are not collapsed before normalization. -/
@[surface_novel, surface_published]
theorem vaughanRawDirection_pair_injective (N : ℕ) :
    Function.Injective
      (fun pair : ℕ × ℕ ↦ vaughanRawDirection N pair.1 pair.2) := by
  intro pair pair' hpair
  apply Prod.ext
  · have hcoord := congrArg (fun x : SpatialPoint ↦ x (0 : Fin 3)) hpair
    simp [vaughanRawDirection, vaughanDirectionU] at hcoord
    have hden : (2 * (vaughanDirectionScale N : ℝ)) ≠ 0 := by
      have hscale : (0 : ℝ) < vaughanDirectionScale N := by
        exact_mod_cast vaughanDirectionScale_pos N
      positivity
    have hdiv : (pair.1 : ℝ) / (2 * vaughanDirectionScale N) =
        (pair'.1 : ℝ) / (2 * vaughanDirectionScale N) := by
      linarith
    have hcast : (pair.1 : ℝ) = pair'.1 :=
      (div_left_inj' hden).mp hdiv
    exact_mod_cast hcast
  · have hcoord := congrArg (fun x : SpatialPoint ↦ x (1 : Fin 3)) hpair
    simp [vaughanRawDirection, vaughanDirectionV] at hcoord
    have hden : (2 * (vaughanDirectionScale N : ℝ)) ≠ 0 := by
      have hscale : (0 : ℝ) < vaughanDirectionScale N := by
        exact_mod_cast vaughanDirectionScale_pos N
      positivity
    have hdiv : (pair.2 : ℝ) / (2 * vaughanDirectionScale N) =
        (pair'.2 : ℝ) / (2 * vaughanDirectionScale N) := by
      linarith
    have hcast : (pair.2 : ℝ) = pair'.2 :=
      (div_left_inj' hden).mp hdiv
    exact_mod_cast hcast

/-- Unit direction attached to a factor pair. -/
@[expose]
def vaughanDirection (N m k : ℕ) : SpatialPoint :=
  NormedSpace.normalize (vaughanRawDirection N m k)

@[surface_novel, surface_published]
theorem vaughanDirection_unit (N m k : ℕ) :
    ‖vaughanDirection N m k‖ = 1 := by
  exact NormedSpace.norm_normalize (vaughanRawDirection_ne_zero N m k)

/-- Normalization retains the pair because every raw vector has third
coordinate exactly one.  Thus distinct factor pairs receive distinct unit
directions; no quantitative Wang--Zahl separation constant is claimed. -/
@[surface_novel, surface_published]
theorem vaughanDirection_pair_injective (N : ℕ) :
    Function.Injective
      (fun pair : ℕ × ℕ ↦ vaughanDirection N pair.1 pair.2) := by
  intro pair pair' hpair
  change vaughanDirection N pair.1 pair.2 =
    vaughanDirection N pair'.1 pair'.2 at hpair
  have hcoord := congrArg (fun x : SpatialPoint ↦ x (2 : Fin 3)) hpair
  simp [vaughanDirection, NormedSpace.normalize, vaughanRawDirection] at hcoord
  have hnorm : ‖vaughanRawDirection N pair.1 pair.2‖ =
      ‖vaughanRawDirection N pair'.1 pair'.2‖ := by
    simpa [vaughanRawDirection] using hcoord
  apply vaughanRawDirection_pair_injective N
  calc
    vaughanRawDirection N pair.1 pair.2 =
        ‖vaughanRawDirection N pair.1 pair.2‖ •
          vaughanDirection N pair.1 pair.2 :=
      (NormedSpace.norm_smul_normalize _).symm
    _ = ‖vaughanRawDirection N pair'.1 pair'.2‖ •
          vaughanDirection N pair'.1 pair'.2 := by rw [hnorm, hpair]
    _ = vaughanRawDirection N pair'.1 pair'.2 :=
      NormedSpace.norm_smul_normalize _

/-! ## Centered unit segments and closed tubes -/

/-- The basepoint `-ω/2`; the other endpoint is `+ω/2`. -/
@[expose]
def vaughanTubeBase (N m k : ℕ) : SpatialPoint :=
  (-(1 / 2 : ℝ)) • vaughanDirection N m k

/-- Concrete centered unit tube for a factor pair. -/
@[expose]
def vaughanPairTube (N m k : ℕ) : UnitTube3 where
  base := vaughanTubeBase N m k
  direction := vaughanDirection N m k
  direction_unit := vaughanDirection_unit N m k
  thickness := vaughanTubeThickness N
  thickness_pos := vaughanTubeThickness_pos N

@[surface_novel, surface_published]
theorem vaughanPairTube_terminalPoint (N m k : ℕ) :
    (vaughanPairTube N m k).base + (vaughanPairTube N m k).direction =
      (1 / 2 : ℝ) • vaughanDirection N m k := by
  simp [vaughanPairTube, vaughanTubeBase]
  module

@[surface_novel, surface_published]
theorem vaughanPairTube_axisSegment (N m k : ℕ) :
    (vaughanPairTube N m k).axisSegment =
      segment ℝ ((-(1 / 2 : ℝ)) • vaughanDirection N m k)
        ((1 / 2 : ℝ) • vaughanDirection N m k) := by
  rw [UnitTube3.axisSegment, vaughanPairTube_terminalPoint]
  rfl

/-- Distinct arithmetic pairs determine distinct oriented tubes.  This is an
exact distinctness result, not a quantitative angular-separation estimate. -/
@[surface_novel, surface_published]
theorem vaughanPairTube_pair_injective (N : ℕ) :
    Function.Injective
      (fun pair : ℕ × ℕ ↦ vaughanPairTube N pair.1 pair.2) := by
  intro pair pair' htube
  apply vaughanDirection_pair_injective N
  change vaughanDirection N pair.1 pair.2 =
    vaughanDirection N pair'.1 pair'.2
  exact congrArg UnitTube3.direction htube

/-- The tube assigned to an effective Type II Vaughan atom. -/
@[expose]
def vaughanTypeIITube {N : ℕ} (a : VaughanTypeIIFactorAtom N) : UnitTube3 :=
  vaughanPairTube N a.1.1.1 a.1.2.1

@[surface_novel, surface_published]
theorem vaughanPairTube_isClosed_carrier (N m k : ℕ) :
    IsClosed (vaughanPairTube N m k).carrier :=
  UnitTube3.isClosed_carrier _

@[surface_novel, surface_published]
theorem vaughanPairTube_measurableSet_carrier (N m k : ℕ) :
    MeasurableSet (vaughanPairTube N m k).carrier :=
  UnitTube3.measurableSet_carrier _

@[surface_novel, surface_published]
theorem vaughanTypeIITube_measurableSet_carrier
    {N : ℕ} (a : VaughanTypeIIFactorAtom N) :
    MeasurableSet (vaughanTypeIITube a).carrier :=
  UnitTube3.measurableSet_carrier _

end

end Surface.Core.ConductorThreeVaughanTubeScaffold
```
