# permanent_eq_elem_of_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b6d0b855c68349faa02a0297f979d08dd6006c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d347e8e1-e7c8-7473-54d0-a63383ea3c86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43a1fd02-2da8-c954-5a0b-90e78e21c143",
  "kind": "theorem",
  "lexical_name": "permanent_eq_elem_of_subsingleton",
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
  "slug": "permanent-eq-elem-of-subsingleton--f7fe6fa16177326a4fe9010b",
  "source": {
    "blob": "38b6d0b855c68349faa02a0297f979d08dd6006c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7fe6fa16177326a4fe9010b8e9c223e00eec68737c4f39ab64ac6ce30d7f6c2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43a1fd02-2da8-c954-5a0b-90e78e21c143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem permanent_eq_elem_of_subsingleton [Subsingleton n] (A : Matrix n n R) (k : n) :
    permanent A = A k k := by
  have := uniqueOfSubsingleton k
  convert permanent_unique A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b6d0b855c68349faa02a0297f979d08dd6006c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
