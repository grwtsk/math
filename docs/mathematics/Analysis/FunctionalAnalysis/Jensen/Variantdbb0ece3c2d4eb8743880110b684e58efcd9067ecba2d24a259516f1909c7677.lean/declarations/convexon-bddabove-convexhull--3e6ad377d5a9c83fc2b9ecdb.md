# ConvexOn.bddAbove_convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fb5f5c192359128a63127e47d13e24b9105814c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 320,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:708c7f35-3971-1b61-7b60-85ed5971d478",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a643b005-84d1-1858-4ad6-a6f091e6c33e",
  "kind": "lemma",
  "lexical_name": "ConvexOn.bddAbove_convexHull",
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
  "slug": "convexon-bddabove-convexhull--3e6ad377d5a9c83fc2b9ecdb",
  "source": {
    "blob": "0fb5f5c192359128a63127e47d13e24b9105814c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 320,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e6ad377d5a9c83fc2b9ecdbc39a12e62d1cca5260cccec295585408b822ddde",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a643b005-84d1-1858-4ad6-a6f091e6c33e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConvexOn.bddAbove_convexHull {s t : Set E} (hst : s ⊆ t) (hf : ConvexOn 𝕜 t f) :
    BddAbove (f '' s) → BddAbove (f '' convexHull 𝕜 s) := by
  rintro ⟨b, hb⟩
  refine ⟨b, ?_⟩
  rintro _ ⟨x, hx, rfl⟩
  obtain ⟨y, hy, hxy⟩ := hf.exists_ge_of_mem_convexHull hst hx
  exact hxy.trans <| hb <| mem_image_of_mem _ hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb5f5c192359128a63127e47d13e24b9105814c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
