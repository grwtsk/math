# actual_correlation_abs_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a653389a-4872-3976-4a55-1f77b697d759",
  "kind": "theorem",
  "lexical_name": "actual_correlation_abs_le_one",
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
  "slug": "actual-correlation-abs-le-one--091f9f488568eb39b1c411fd",
  "source": {
    "blob": "63a286a4dc841695dd35171e4940b2dbff177230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variantc5a386d5098130d81c24fcceef3e0e9a2a1456145ca33ce6dfd09a096530e3d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:091f9f488568eb39b1c411fd02ec39e9e89e3c312a3d55e7ff36d8c98fed2d6c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variantc5a386d5098130d81c24fcceef3e0e9a2a1456145ca33ce6dfd09a096530e3d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a653389a-4872-3976-4a55-1f77b697d759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_abs_le_one (A t : ℝ) (hA : 1 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A t| ≤ 1 := by
  let f := normalizedTest explicitSecondDerivative A
  have hf : Integrable (fun x ↦ f x ^ 2) volume := normalized_square_integrable A hA
  have hg : Integrable (fun x ↦ f (x - t) ^ 2) volume := hf.comp_sub_right t
  have hp : Integrable (fun x ↦ f x * f (x - t)) volume :=
    correlation_product_integrable A t (by linarith)
  have nf : (∫ x, f x ^ 2) = 1 := normalized_square_integral A hA
  have ng : (∫ x, f (x - t) ^ 2) = 1 := by
    rw [integral_sub_right_eq_self (μ := volume) (fun x ↦ f x ^ 2) t, nf]
  have upper := integral_mono (hp.const_mul 2) (hf.add hg)
    (fun x ↦ show 2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x - f (x - t))])
  have lower := integral_mono (hp.const_mul (-2)) (hf.add hg)
    (fun x ↦ show -2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x + f (x - t))])
  simp only [Pi.add_apply] at upper lower
  rw [integral_const_mul, integral_add hf hg, nf, ng] at upper lower
  change |∫ x, f x * f (x - t)| ≤ 1
  exact abs_le.mpr ⟨by linarith, by linarith⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variantc5a386d5098130d81c24fcceef3e0e9a2a1456145ca33ce6dfd09a096530e3d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variantc5a386d5098130d81c24fcceef3e0e9a2a1456145ca33ce6dfd09a096530e3d9.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a286a4dc841695dd35171e4940b2dbff177230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
