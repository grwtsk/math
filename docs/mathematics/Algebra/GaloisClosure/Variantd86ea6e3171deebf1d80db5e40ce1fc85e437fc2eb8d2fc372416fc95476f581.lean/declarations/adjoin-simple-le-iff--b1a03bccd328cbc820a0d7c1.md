# adjoin_simple_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a27d207a90d0c438577b8e74fdb24e8d68bf2ff0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:575f97cd-a652-d66c-dcf2-92d61d51f210",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3437b32c-2e14-2aee-4eb1-2f2bb3dbd1cb",
  "kind": "theorem",
  "lexical_name": "adjoin_simple_le_iff",
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
  "slug": "adjoin-simple-le-iff--b1a03bccd328cbc820a0d7c1",
  "source": {
    "blob": "a27d207a90d0c438577b8e74fdb24e8d68bf2ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1a03bccd328cbc820a0d7c1fcb5c4bd477ab3cd0b403f0037a1dd3ebe9cfb5a",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3437b32c-2e14-2aee-4eb1-2f2bb3dbd1cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_simple_le_iff [IsGalois k K] {x : K} {L : FiniteGaloisIntermediateField k K} :
    adjoin k {x} ≤ L ↔ x ∈ L.toIntermediateField := by
  simp only [le_iff, adjoin_val, IntermediateField.normalClosure_le_iff_of_normal,
    IntermediateField.adjoin_le_iff, Set.le_eq_subset, Set.singleton_subset_iff, SetLike.mem_coe]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a27d207a90d0c438577b8e74fdb24e8d68bf2ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
