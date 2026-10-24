# forget_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "976b3adb0f969870a8d92fbcb6d4f14333002845",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/372d07652a196f3b36c2106ea82aac41e8f86427c7ca65f7d915fea946495abd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ac50f91-32c4-0302-95b7-41abc5cbdd07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92aa93c6-b8b7-74e2-10ca-d16626e50c75",
  "kind": "lemma",
  "lexical_name": "forget_map",
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
  "slug": "forget-map--c8f74ebbf5e084e7afc2bef5",
  "source": {
    "blob": "976b3adb0f969870a8d92fbcb6d4f14333002845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant372d07652a196f3b36c2106ea82aac41e8f86427c7ca65f7d915fea946495abd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8f74ebbf5e084e7afc2bef5e06e6905b86ce5a47eba05d577e60f967a286155",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant372d07652a196f3b36c2106ea82aac41e8f86427c7ca65f7d915fea946495abd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92aa93c6-b8b7-74e2-10ca-d16626e50c75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma forget_map {X Y : Frm} (f : X ⟶ Y) :
    (forget Frm).map f = (f : _ → _) := rfl

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant372d07652a196f3b36c2106ea82aac41e8f86427c7ca65f7d915fea946495abd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Frm/Variant372d07652a196f3b36c2106ea82aac41e8f86427c7ca65f7d915fea946495abd.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `976b3adb0f969870a8d92fbcb6d4f14333002845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
