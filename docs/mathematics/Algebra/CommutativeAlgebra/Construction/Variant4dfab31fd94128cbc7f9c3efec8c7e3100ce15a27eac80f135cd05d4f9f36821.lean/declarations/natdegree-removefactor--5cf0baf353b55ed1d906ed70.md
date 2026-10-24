# natDegree_removeFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "253d03173a92cdb54f5f2577ee549c714ad4a1d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10ae9a18-9805-9a15-d5f5-9e30fb885010",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2f82e7a-414f-258d-e6e9-ab0e0a791abc",
  "kind": "theorem",
  "lexical_name": "natDegree_removeFactor",
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
  "slug": "natdegree-removefactor--5cf0baf353b55ed1d906ed70",
  "source": {
    "blob": "253d03173a92cdb54f5f2577ee549c714ad4a1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 99,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cf0baf353b55ed1d906ed7038195bca7356e59bcc81d417d424921cd4ef7dcd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2f82e7a-414f-258d-e6e9-ab0e0a791abc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_removeFactor (f : K[X]) : f.removeFactor.natDegree = f.natDegree - 1 := by
  rw [removeFactor, natDegree_divByMonic _ (monic_X_sub_C _), natDegree_map, natDegree_X_sub_C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `253d03173a92cdb54f5f2577ee549c714ad4a1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
