# NormalizedHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f6630e265c5812e97a4afdc1627870ef5be21f5fb73cefd434dd371a0c9e0a3",
  "kind": "inductive",
  "lexical_name": "NormalizedHom",
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
  "slug": "normalizedhom--36bd6120bbfbfdeb369d42d1",
  "source": {
    "blob": "f7bb797e2716cea8c8f02d466eb262de7fe2f1d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant4f3e663fac6c5a30a322dcccecdf95aaf1c6f063c44953f96a1fd6d77b4b767c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36bd6120bbfbfdeb369d42d120af1c187b08e51c22de0c833dea5ec8ae7cfcb0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant4f3e663fac6c5a30a322dcccecdf95aaf1c6f063c44953f96a1fd6d77b4b767c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f6630e265c5812e97a4afdc1627870ef5be21f5fb73cefd434dd371a0c9e0a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive NormalizedHom : Type
  /-- The identity 1-morphism `𝟙 a`. -/
  | nil (e : Mor₁) (a : Obj) : NormalizedHom
  /-- The `cons` composes an atomic 1-morphism at the end of a normalized 1-morphism. -/
  | cons (e : Mor₁) : NormalizedHom → Atom₁ → NormalizedHom
  deriving Inhabited

/-- The underlying expression of a normalized 1-morphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant4f3e663fac6c5a30a322dcccecdf95aaf1c6f063c44953f96a1fd6d77b4b767c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant4f3e663fac6c5a30a322dcccecdf95aaf1c6f063c44953f96a1fd6d77b4b767c.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7bb797e2716cea8c8f02d466eb262de7fe2f1d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
