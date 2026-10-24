# Int.zmultiples_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a913c78fed9e52a810ad2bb2a6285caedae4db3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:588ed1cc-b46e-8534-afc0-0f5fc5ca415c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa4705f3-0f96-7b49-0860-0d0ac95c9238",
  "kind": "lemma",
  "lexical_name": "Int.zmultiples_one",
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
  "slug": "int-zmultiples-one--33071ac6385ec657b2fcb8fe",
  "source": {
    "blob": "a913c78fed9e52a810ad2bb2a6285caedae4db3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 94,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33071ac6385ec657b2fcb8fe307b0bec90b5fb00e2fdb5155f3fcc02890e2bb9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa4705f3-0f96-7b49-0860-0d0ac95c9238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Int.zmultiples_one : AddSubgroup.zmultiples (1 : ℤ) = ⊤ := by
  ext z
  simp [Int.mem_zmultiples_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a913c78fed9e52a810ad2bb2a6285caedae4db3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
