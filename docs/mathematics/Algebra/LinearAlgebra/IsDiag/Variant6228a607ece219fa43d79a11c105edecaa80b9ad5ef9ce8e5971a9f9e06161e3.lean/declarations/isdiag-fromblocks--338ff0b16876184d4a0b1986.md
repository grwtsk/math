# IsDiag.fromBlocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d2fad2318d97bb15911b08107144b9e45ad635a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6a7eedd-750e-0f38-9b3a-3527d7920260",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84e106ac-764d-f8cf-c1d5-8fdef40c368a",
  "kind": "theorem",
  "lexical_name": "IsDiag.fromBlocks",
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
  "slug": "isdiag-fromblocks--338ff0b16876184d4a0b1986",
  "source": {
    "blob": "6d2fad2318d97bb15911b08107144b9e45ad635a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:338ff0b16876184d4a0b198621b1d210a1ffa2cca208d04d36142268d3a4de89",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84e106ac-764d-f8cf-c1d5-8fdef40c368a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsDiag.fromBlocks [Zero α] {A : Matrix m m α} {D : Matrix n n α} (ha : A.IsDiag)
    (hd : D.IsDiag) : (A.fromBlocks 0 0 D).IsDiag := by
  rintro (i | i) (j | j) hij
  · exact ha (ne_of_apply_ne _ hij)
  · rfl
  · rfl
  · exact hd (ne_of_apply_ne _ hij)

/-- This is the `iff` version of `Matrix.IsDiag.fromBlocks`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2fad2318d97bb15911b08107144b9e45ad635a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
