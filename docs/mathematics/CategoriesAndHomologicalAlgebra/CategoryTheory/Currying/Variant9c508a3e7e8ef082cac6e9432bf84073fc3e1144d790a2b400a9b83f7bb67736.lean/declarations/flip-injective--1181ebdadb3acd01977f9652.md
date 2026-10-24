# flip_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08b95ace-88b8-9abb-7b05-870c8f6ab6c7",
  "kind": "lemma",
  "lexical_name": "flip_injective",
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
  "slug": "flip-injective--1181ebdadb3acd01977f9652",
  "source": {
    "blob": "0de8e7ff2a68fa79c59dd92c45188d3a3d154e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1181ebdadb3acd01977f96525c84a938e80e2a53fc54e5355db503a58c2b5d59",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08b95ace-88b8-9abb-7b05-870c8f6ab6c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma flip_injective {F₁ F₂ : B ⥤ C ⥤ D} (h : F₁.flip = F₂.flip) :
    F₁ = F₂ := by
  rw [← flip_flip F₁, ← flip_flip F₂, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0de8e7ff2a68fa79c59dd92c45188d3a3d154e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
