# sub_mem_iff_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fced5507b5bf2d98b47bb92d688f7c52484edac0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:beeb917b-631c-7022-eda8-780a9f648168",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdccfc94-446a-8353-6fe1-1aefdff9f28a",
  "kind": "theorem",
  "lexical_name": "sub_mem_iff_right",
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
  "slug": "sub-mem-iff-right--6b0b1dbe5c1b47a6f8f4af08",
  "source": {
    "blob": "fced5507b5bf2d98b47bb92d688f7c52484edac0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 349,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b0b1dbe5c1b47a6f8f4af083f4baa958d0d8be30053d4b41f5bbea7860f2731",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdccfc94-446a-8353-6fe1-1aefdff9f28a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_mem_iff_right (hx : x ∈ p) : x - y ∈ p ↔ y ∈ p := by
  rw [sub_eq_add_neg, p.add_mem_iff_right hx, p.neg_mem_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fced5507b5bf2d98b47bb92d688f7c52484edac0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
