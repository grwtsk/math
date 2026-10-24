# exists_measurableEmbedding_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c4544dd77e7a66fc3c3966deb5f71757c42dfb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76926295ee58e30ed649053bc99347d1bb3fbde495a02727525959d8ee0b5a5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1520302-ccfd-8df3-1da3-da70138daf6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ce6a7c5-7557-417b-71dc-0a2f7eb1e3f1",
  "kind": "theorem",
  "lexical_name": "exists_measurableEmbedding_real",
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
  "slug": "exists-measurableembedding-real--d9bdecbae6372dc4728eb4b8",
  "source": {
    "blob": "6c4544dd77e7a66fc3c3966deb5f71757c42dfb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Analysis/MeasureTheory/EmbeddingReal/Variant76926295ee58e30ed649053bc99347d1bb3fbde495a02727525959d8ee0b5a5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9bdecbae6372dc4728eb4b88ce8968435fcb3deb3c3be8a8276033a0051e9fc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EmbeddingReal/Variant76926295ee58e30ed649053bc99347d1bb3fbde495a02727525959d8ee0b5a5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ce6a7c5-7557-417b-71dc-0a2f7eb1e3f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_measurableEmbedding_real : ∃ f : α → ℝ, MeasurableEmbedding f := by
  obtain ⟨s, hs, ⟨e⟩⟩ := exists_subset_real_measurableEquiv α
  exact ⟨(↑) ∘ e, (MeasurableEmbedding.subtype_coe hs).comp e.measurableEmbedding⟩

/-- A measurable embedding of a standard Borel space into `ℝ`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EmbeddingReal/Variant76926295ee58e30ed649053bc99347d1bb3fbde495a02727525959d8ee0b5a5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EmbeddingReal/Variant76926295ee58e30ed649053bc99347d1bb3fbde495a02727525959d8ee0b5a5b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c4544dd77e7a66fc3c3966deb5f71757c42dfb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
