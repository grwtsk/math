# actual_first_source_pole_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a15b9be6-c73f-1a30-3295-2142a30a7f8a",
  "kind": "theorem",
  "lexical_name": "actual_first_source_pole_moment",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "actual-first-source-pole-moment--503e035272f5f2fcb1188547",
  "source": {
    "blob": "e6c6e423fac39c15da9eb014599478be5eadc8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic02/Variant0623bb547e28a1a095f9d68783fd35724120f9098268dfad123b80db5d0461bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:503e035272f5f2fcb1188547d15fdaff4f183d9658516864bb8a186c87d9bad4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic02/Variant0623bb547e28a1a095f9d68783fd35724120f9098268dfad123b80db5d0461bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a15b9be6-c73f-1a30-3295-2142a30a7f8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_source_pole_moment {A : ℝ} (hA : 1 ≤ A) :
    (∫ x : ℝ, x*Real.exp (x/2)*normalizedTest explicitSecondDerivative A x) =
      primitivePoleMoment A := by
  have hp : 0 < A := by linarith
  let b := normalizedPrimitiveBump A
  have hb : ContDiff ℝ 2 b := normalizedPrimitiveBump_contDiff hp
  have hs : HasCompactSupport b := normalizedPrimitiveBump_hasCompactSupport hp
  have hbd : ContDiff ℝ 1 (deriv b) := hb.deriv'
  have hbs : ContDiff ℝ 1 b := hb.of_le (by norm_num)
  have h0 := weighted_derivative b hbs hs (1/2)
  have h1 := first_weighted_derivative b hbs hs (1/2)
  have h2 := first_weighted_derivative (deriv b) hbd hs.deriv (1/2)
  rw [h0,h1] at h2
  have hi0 : Integrable (fun x : ℝ => x*Real.exp (x/2)*b x) := by
    exact ((show Continuous (fun x : ℝ => x*Real.exp (x/2)) by fun_prop).mul
      hbs.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hi2 : Integrable (fun x : ℝ => x*Real.exp (x/2)*deriv (deriv b) x) := by
    exact ((show Continuous (fun x : ℝ => x*Real.exp (x/2)) by fun_prop).mul
      hbd.continuous_deriv_one).integrable_of_hasCompactSupport (μ := volume) hs.deriv.deriv.mul_left
  have he (x : ℝ) : x*Real.exp (x/2)*normalizedTest explicitSecondDerivative A x =
      x*Real.exp (x/2)*deriv (deriv b) x-(x*Real.exp (x/2)*b x)/4 := by
    rw [← normalizedPrimitiveBump_second_sub_quarter hp x]
    dsimp [b]
    ring
  simp_rw [he]
  rw [integral_sub hi2 (hi0.div_const 4),integral_div]
  have hscale (x : ℝ) : (1/2 : ℝ)*x=x/2 := by ring
  simp only [hscale] at h2
  unfold primitivePoleMoment
  change _ = ∫ x : ℝ, Real.exp (x/2)*b x
  rw [h2]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic02/Variant0623bb547e28a1a095f9d68783fd35724120f9098268dfad123b80db5d0461bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic02/Variant0623bb547e28a1a095f9d68783fd35724120f9098268dfad123b80db5d0461bf.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6c6e423fac39c15da9eb014599478be5eadc8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
