# archimedeanClassMk_of_mem_stratum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71da2c4628ce8fd00d15e2167fbe86d9e4b8d71f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/164be3cecaa80d97f20f15e8b19b293ec031b891233b6bc58cb8b7eb6b3502b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecba8dcb-8f73-1fd9-67c4-42c8fce7510a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fac794e-24d2-4b8f-a8b2-e318d8529ae7",
  "kind": "theorem",
  "lexical_name": "archimedeanClassMk_of_mem_stratum",
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
  "slug": "archimedeanclassmk-of-mem-stratum--5b032a4228a9c9880f3eb0aa",
  "source": {
    "blob": "71da2c4628ce8fd00d15e2167fbe86d9e4b8d71f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variant164be3cecaa80d97f20f15e8b19b293ec031b891233b6bc58cb8b7eb6b3502b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b032a4228a9c9880f3eb0aacc27d2edc74d1e2a331218126f95eee28387cfbf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HahnEmbedding/Variant164be3cecaa80d97f20f15e8b19b293ec031b891233b6bc58cb8b7eb6b3502b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fac794e-24d2-4b8f-a8b2-e318d8529ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedeanClassMk_of_mem_stratum {a : M}
    (ha : a ∈ u.stratum c) (h0 : a ≠ 0) : ArchimedeanClass.mk a = c := by
  apply le_antisymm
  · contrapose! h0 with hlt
    have ha' : a ∈ ball K c := (mem_ball_iff K).mpr fun _ ↦ hlt
    exact (Submodule.disjoint_def.mp (u.disjoint_ball_stratum _)) _ ha' ha
  · apply (mem_closedBall_iff K).mp _ h0
    rw [← u.ball_sup_stratum_eq c]
    exact Submodule.mem_sup_right ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HahnEmbedding/Variant164be3cecaa80d97f20f15e8b19b293ec031b891233b6bc58cb8b7eb6b3502b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variant164be3cecaa80d97f20f15e8b19b293ec031b891233b6bc58cb8b7eb6b3502b8.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71da2c4628ce8fd00d15e2167fbe86d9e4b8d71f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
