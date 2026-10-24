# min_le_min_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8381abf4fcd3de81e54a8537ff20e7cc2d0b325",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c576fc1-4147-7222-1739-93b48a296418",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa553fd0-2023-6bcf-0a51-6d3e2372d61b",
  "kind": "theorem",
  "lexical_name": "min_le_min_add",
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
  "slug": "min-le-min-add--c5099c4b958d5982ec302b77",
  "source": {
    "blob": "e8381abf4fcd3de81e54a8537ff20e7cc2d0b325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5099c4b958d5982ec302b77c54be9e1a030d9dbb7dd1d51fe3aa90e545f9d40",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa553fd0-2023-6bcf-0a51-6d3e2372d61b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem min_le_min_add {Γ} [LinearOrder Γ] {x y : R⟦Γ⟧} (hx : x ≠ 0)
    (hy : y ≠ 0) (hxy : x + y ≠ 0) :
    min (Set.IsWF.min x.isWF_support (support_nonempty_iff.2 hx))
      (Set.IsWF.min y.isWF_support (support_nonempty_iff.2 hy)) ≤
      Set.IsWF.min (x + y).isWF_support (support_nonempty_iff.2 hxy) := by
  rw [← Set.IsWF.min_union]
  exact Set.IsWF.min_le_min_of_subset (support_add_subset (x := x) (y := y))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8381abf4fcd3de81e54a8537ff20e7cc2d0b325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
