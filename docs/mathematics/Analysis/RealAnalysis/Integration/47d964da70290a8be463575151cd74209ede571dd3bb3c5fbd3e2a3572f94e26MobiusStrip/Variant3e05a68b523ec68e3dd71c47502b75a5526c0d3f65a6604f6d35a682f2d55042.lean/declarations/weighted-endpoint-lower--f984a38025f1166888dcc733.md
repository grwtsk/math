# weighted_endpoint_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64b59bde-b1eb-967b-6e51-58b6508d5e7d",
  "kind": "theorem",
  "lexical_name": "weighted_endpoint_lower",
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
  "slug": "weighted-endpoint-lower--f984a38025f1166888dcc733",
  "source": {
    "blob": "ce26f376a53cac584bc777addb5fd986765d3061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f984a38025f1166888dcc73348f6911f0cfc75cee79d097644557cc893d795c9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64b59bde-b1eb-967b-6e51-58b6508d5e7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_endpoint_lower (A v : ℝ) (hA : 1 ≤ A)
    (hv : 0 ≤ v) (hv1 : v ≤ 1/2) :
    (8/15)*A^8*v^5 ≤ scaleWeight A * sourceCorrelation explicitSecondDerivative A (2*A-v) := by
  have hA0 : 0 < A := by linarith
  have hw0 : 0 ≤ v/A := div_nonneg hv hA0.le
  have hw : v/A ≤ 1/(2*A) := by rw [div_le_iff₀ hA0]; field_simp; linarith
  have hw1 : v/A ≤ 1/2 := by rw [div_le_iff₀ hA0]; linarith
  have hs := sourceCorrelation_eq_unit_integral A (2-v/A) hA (by linarith) (by linarith)
  have he : A*(2-v/A) = 2*A-v := by field_simp
  rw [he] at hs
  have hi (x : ℝ) (hx : x ∈ Icc (1-v/A) 1) :
      (16/A^4)*((1-x)^2*(x-(1-v/A))^2) ≤
        unitDilation (1/A^2) x * unitDilation (1/A^2) (x-(2-v/A)) := by
    have h1 := unitDilation_endpoint_lower A x hA (by linarith [hx.1]) hx.2
    have h2 := unitDilation_endpoint_lower A (2-v/A-x) hA
      (by linarith [hx.2]) (by linarith [hx.1])
    have hneg : x-(2-v/A) = -(2-v/A-x) := by ring
    rw [hneg, unitDilation_even]
    have hm := mul_le_mul h1 h2 (by positivity : 0 ≤ 4/A^2*(1-(2-v/A-x))^2)
      (le_trans (by positivity : 0 ≤ 4/A^2*(1-x)^2) h1)
    calc
      _ = (4/A^2*(1-x)^2)*(4/A^2*(1-(2-v/A-x))^2) := by ring
      _ ≤ _ := hm
  have hmono := intervalIntegral.integral_mono_on (μ := volume)
    (show 1-v/A ≤ 1 by linarith)
    ((by fun_prop : Continuous (fun x : ℝ ↦
      (16/A^4)*((1-x)^2*(x-(1-v/A))^2))).intervalIntegrable _ _)
    ((by unfold unitDilation unitSecond unitBump; fun_prop : Continuous (fun x : ℝ ↦
      unitDilation (1/A^2) x * unitDilation (1/A^2) (x-(2-v/A)))).intervalIntegrable _ _) hi
  have hint : (∫ x in (1-v/A)..(1:ℝ),
      (16/A^4)*((1-x)^2*(x-(1-v/A))^2)) = (8/15)*v^5/A^9 := by
    rw [intervalIntegral.integral_const_mul, integral_endpoint_polynomial]
    field_simp [hA0.ne']
    ring
  rw [hint] at hmono
  rw [hs, scaleWeight]
  have hz := ne_of_gt (source_normalization_pos A hA)
  have hend : 2-v/A-1 = 1-v/A := by ring
  rw [hend]
  have hzclear : A^17*sourceNormalization A *
      ((∫ x in (1-v/A)..(1:ℝ), unitDilation (1/A^2) x *
        unitDilation (1/A^2) (x-(2-v/A))) / sourceNormalization A) =
      A^17*(∫ x in (1-v/A)..(1:ℝ), unitDilation (1/A^2) x *
        unitDilation (1/A^2) (x-(2-v/A))) := by field_simp
  rw [hzclear]
  have hh := mul_le_mul_of_nonneg_left hmono (show 0 ≤ A^17 by positivity)
  calc
    _ = A^17*((8/15)*v^5/A^9) := by field_simp
    _ ≤ _ := hh

/-- The exact endpoint window has a positive scale integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce26f376a53cac584bc777addb5fd986765d3061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
