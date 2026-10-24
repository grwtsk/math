# locallyIntegrableOn_of_locallyIntegrable_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:410f0ec4-afcf-626a-a3ec-da9f8ef2f9c5",
  "kind": "theorem",
  "lexical_name": "locallyIntegrableOn_of_locallyIntegrable_restrict",
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
  "slug": "locallyintegrableon-of-locallyintegrable-restrict--1b56083e9213a525db041dd4",
  "source": {
    "blob": "db2f43cb636d2761d5abf25d1d5d8804a867ce44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 200,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant0719e523e2719c5af1b5fe09a723b13417d5aa08fa49dd6a792f20bfd4cb4f3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b56083e9213a525db041dd4303aa407b21dc03d3ff755eda43fa98ae9b19664",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant0719e523e2719c5af1b5fe09a723b13417d5aa08fa49dd6a792f20bfd4cb4f3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:410f0ec4-afcf-626a-a3ec-da9f8ef2f9c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyIntegrableOn_of_locallyIntegrable_restrict [OpensMeasurableSpace X]
    (hf : LocallyIntegrable f (μ.restrict s)) : LocallyIntegrableOn f s μ := by
  intro x _
  obtain ⟨t, ht_mem, ht_int⟩ := hf x
  obtain ⟨u, hu_sub, hu_o, hu_mem⟩ := mem_nhds_iff.mp ht_mem
  refine' ⟨_, inter_mem_nhdsWithin s (hu_o.mem_nhds hu_mem), _⟩
  simpa only [IntegrableOn, Measure.restrict_restrict hu_o.measurableSet, inter_comm] using
    ht_int.mono_set hu_sub
#align measure_theory.locally_integrable_on_of_locally_integrable_restrict MeasureTheory.locallyIntegrableOn_of_locallyIntegrable_restrict

/-- If `s` is closed, being locally integrable on `s` wrt `μ` is equivalent to being locally
integrable with respect to `μ.restrict s`. For the one-way implication without assuming `s` closed,
see `locallyIntegrableOn_of_locallyIntegrable_restrict`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant0719e523e2719c5af1b5fe09a723b13417d5aa08fa49dd6a792f20bfd4cb4f3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant0719e523e2719c5af1b5fe09a723b13417d5aa08fa49dd6a792f20bfd4cb4f3f.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2f43cb636d2761d5abf25d1d5d8804a867ce44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
