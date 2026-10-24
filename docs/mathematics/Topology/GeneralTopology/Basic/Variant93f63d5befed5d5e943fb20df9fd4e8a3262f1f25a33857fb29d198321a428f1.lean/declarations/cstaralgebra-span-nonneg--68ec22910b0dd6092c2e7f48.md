# CStarAlgebra.span_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5db851974ad54f1d897b93267b0d34c4bc5e0e65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93f63d5befed5d5e943fb20df9fd4e8a3262f1f25a33857fb29d198321a428f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9654734a-aa25-564f-cf5a-5f4416c017c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88e66513-b1f9-7178-bedf-a788b274ada0",
  "kind": "lemma",
  "lexical_name": "CStarAlgebra.span_nonneg",
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
  "slug": "cstaralgebra-span-nonneg--68ec22910b0dd6092c2e7f48",
  "source": {
    "blob": "5db851974ad54f1d897b93267b0d34c4bc5e0e65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 371,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant93f63d5befed5d5e943fb20df9fd4e8a3262f1f25a33857fb29d198321a428f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68ec22910b0dd6092c2e7f488c75b62eae4769f56b8a5324dc92201fdb0db189",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant93f63d5befed5d5e943fb20df9fd4e8a3262f1f25a33857fb29d198321a428f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88e66513-b1f9-7178-bedf-a788b274ada0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CStarAlgebra.span_nonneg : Submodule.span ℂ {a : A | 0 ≤ a} = ⊤ := by
  refine eq_top_iff.mpr fun x _ => ?_
  rw [← CStarAlgebra.linear_combination_nonneg x]
  apply_rules [sub_mem, Submodule.smul_mem, add_mem]
  all_goals
    refine subset_span ?_
    first | apply CFC.negPart_nonneg | apply CFC.posPart_nonneg

end SpanNonneg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant93f63d5befed5d5e943fb20df9fd4e8a3262f1f25a33857fb29d198321a428f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant93f63d5befed5d5e943fb20df9fd4e8a3262f1f25a33857fb29d198321a428f1.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5db851974ad54f1d897b93267b0d34c4bc5e0e65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
