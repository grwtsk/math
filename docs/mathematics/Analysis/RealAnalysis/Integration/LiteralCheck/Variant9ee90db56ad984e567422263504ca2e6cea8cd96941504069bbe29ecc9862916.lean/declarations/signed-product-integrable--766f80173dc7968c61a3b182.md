# signed_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3002e56ad0dbc0f0eae50ccfd9e957786e9d1424",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41db4ca7-0b15-cd6e-0bf0-35e60024dfef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cbd822d-a8e8-6a59-50a1-3183be6921ed",
  "kind": "theorem",
  "lexical_name": "signed_product_integrable",
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
  "slug": "signed-product-integrable--766f80173dc7968c61a3b182",
  "source": {
    "blob": "3002e56ad0dbc0f0eae50ccfd9e957786e9d1424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:766f80173dc7968c61a3b182ba472086d95fa5c8d877200e152110fd17d23c2f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cbd822d-a8e8-6a59-50a1-3183be6921ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_product_integrable :
    Integrable (fun p : ℝ × ℝ => fixedKernel p.1 * fixedKernel (p.1 + p.2))
      (halfLineMeasure.prod halfLineMeasure) := by
  have hmeas : StronglyMeasurable
      (fun p : ℝ × ℝ => fixedKernel p.1 * fixedKernel (p.1 + p.2)) :=
    (fixedKernel_measurable.comp measurable_fst).stronglyMeasurable.mul
      (fixedKernel_measurable.comp (measurable_fst.add measurable_snd)).stronglyMeasurable
  refine (integrable_prod_iff hmeas.aestronglyMeasurable).mpr ⟨?_, ?_⟩
  · filter_upwards [] with u
    exact ((fixedKernel_integrable.comp_add_left u).const_mul (fixedKernel u)).integrableOn
  · refine (fixedKernel_integrable.norm.mul_const (∫ s : ℝ, ‖fixedKernel s‖)).integrableOn.mono'
      hmeas.norm.integral_prod_right'.aestronglyMeasurable ?_
    filter_upwards [] with u
    rw [Real.norm_of_nonneg (integral_nonneg (fun s => norm_nonneg _))]
    simp only [norm_mul, integral_const_mul]
    apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
    calc
      _ ≤ ∫ s : ℝ, ‖fixedKernel (u + s)‖ :=
        integral_mono_measure Measure.restrict_le_self (Filter.Eventually.of_forall
          (fun s => norm_nonneg _)) (fixedKernel_integrable.comp_add_left u).norm
      _ = _ := shifted_kernel_norm_integral u

/-- Exponential weighting preserves genuine absolute product integrability for a≥0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3002e56ad0dbc0f0eae50ccfd9e957786e9d1424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
