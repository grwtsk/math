# _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9819a93a23e6ac6d2868613182ebde2a5defa71b97deb90bb90d04bf3e10fb84.MeasureTheory.AEStronglyMeasurable.integral_condExpKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96a2b067-7053-c552-d932-5a69f54b9973",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9819a93a23e6ac6d2868613182ebde2a5defa71b97deb90bb90d04bf3e10fb84.MeasureTheory.AEStronglyMeasurable.integral_condExpKernel",
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
  "slug": "root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--31e4a32d2e1c8a68f91bb9e7",
  "source": {
    "blob": "45df1ede5b0efb7e1c2777d9e55efc9d3d569f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 143,
    "path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e4a32d2e1c8a68f91bb9e7f5226d0defd88105a847c087241fe475f8537d9a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96a2b067-7053-c552-d932-5a69f54b9973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9819a93a23e6ac6d2868613182ebde2a5defa71b97deb90bb90d04bf3e10fb84.MeasureTheory.AEStronglyMeasurable.integral_condExpKernel [NormedSpace ℝ F]
    (hf : AEStronglyMeasurable f μ) :
    AEStronglyMeasurable (fun ω => ∫ y, f y ∂condExpKernel μ m ω) μ := by
  nontriviality Ω
  simp_rw [condExpKernel_apply_eq_condDistrib]
  exact AEStronglyMeasurable.integral_condDistrib
    (aemeasurable_id'' μ (inf_le_right : m ⊓ mΩ ≤ mΩ)) aemeasurable_id
    (hf.comp_snd_map_prod_id inf_le_right)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45df1ede5b0efb7e1c2777d9e55efc9d3d569f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
