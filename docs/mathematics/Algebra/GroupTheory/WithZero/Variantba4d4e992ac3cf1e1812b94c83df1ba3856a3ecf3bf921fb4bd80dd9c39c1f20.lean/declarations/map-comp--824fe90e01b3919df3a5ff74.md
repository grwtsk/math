# map'_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "868a2d52c68dd3491abf1414b84702efca0ff30a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbc5f45f-1cef-3401-a941-4244f2d02079",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5b05ea9-e50e-bf1c-2f77-6fa9a6da5bb6",
  "kind": "lemma",
  "lexical_name": "map'_comp",
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
  "slug": "map-comp--824fe90e01b3919df3a5ff74",
  "source": {
    "blob": "868a2d52c68dd3491abf1414b84702efca0ff30a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 134,
    "path": "GRWTSK/Algebra/GroupTheory/WithZero/Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:824fe90e01b3919df3a5ff742e173b52d1eb986f7630476bb65345db5fe43782",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/WithZero/Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5b05ea9-e50e-bf1c-2f77-6fa9a6da5bb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map'_comp (f : α →* β) (g : β →* γ) : map' (g.comp f) = (map' g).comp (map' f) :=
  MonoidWithZeroHom.ext fun x => (map'_map' f g x).symm

end MulOneClass

section Pow
variable [One α] [Pow α ℕ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/WithZero/Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/WithZero/Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `868a2d52c68dd3491abf1414b84702efca0ff30a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
