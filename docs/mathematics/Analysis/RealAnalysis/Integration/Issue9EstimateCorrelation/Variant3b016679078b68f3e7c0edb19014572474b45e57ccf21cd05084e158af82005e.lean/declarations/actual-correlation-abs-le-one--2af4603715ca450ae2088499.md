# actual_correlation_abs_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b80e175af464edba9adb95e9d037102913f6eb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3a1ff29-ec56-b652-9bac-c09efb1036f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b10e308b-80d9-afb0-7a49-44096888b98b",
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
  "slug": "actual-correlation-abs-le-one--2af4603715ca450ae2088499",
  "source": {
    "blob": "0b80e175af464edba9adb95e9d037102913f6eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2af4603715ca450ae2088499f59059c19e3156470cabba3d114114a89b2b4c7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b10e308b-80d9-afb0-7a49-44096888b98b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–38.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Issue9EstimateCorrelation/Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b80e175af464edba9adb95e9d037102913f6eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
