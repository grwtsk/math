# TranslateData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efd47cb7259295f7761116945a97efe3a5056b5e71c192e22436ff71d0b4ab1e",
  "kind": "structure",
  "lexical_name": "TranslateData",
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
  "slug": "translatedata--9ff4d76a1428fe5eb146ebd9",
  "source": {
    "blob": "b666c64abc5bdecd2b7cbf8a39b6630e0227a986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ff4d76a1428fe5eb146ebd9e51bf6cbc9f29edc7ce4d272a3f0d49811a8708d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efd47cb7259295f7761116945a97efe3a5056b5e71c192e22436ff71d0b4ab1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TranslateData : Type where
  /-- An attribute that tells that certain arguments of this definition are not
  involved when translating.
  This helps the translation heuristic by also transforming definitions if `ℕ` or another
  fixed type occurs as one of these arguments. -/
  ignoreArgsAttr : NameMapExtension (List Nat)
  /-- The global `do_translate`/`dont_translate` attributes specify whether operations on
  a given type should be translated. `dont_translate` can be used for types that are translated,
  such as `MonoidAlgebra` -> `AddMonoidAlgebra`, or for fixed types, such as `Fin n`/`ZMod n`.
  `do_translate` is for types without arguments, like `Unit` and `Empty`, where the structure on it
  can be translated.

  Note: The name generation is not aware of `dont_translate`, so if some part of a lemma is not
    translated thanks to this, you generally have to specify the translated name manually.
  -/
  doTranslateAttr : NameMapExtension Bool
  /-- The `insert_cast`/`insert_cast_fun` attributes create an abstraction boundary for the tagged
  constant when translating it. For example, `Set.Icc`, `Monotone`, `DecidableLT`, `WCovBy` are all
  morally self-dual, but their definition is not self-dual. So, in order to allow these constants
  to be self-dual, we need to not unfold their definition in the proof term that we translate. -/
  unfoldBoundaries? : Option UnfoldBoundary.UnfoldBoundaryExt := none
  /-- `translations` stores all of the constants that have been tagged with this attribute,
  and maps them to their translation. -/
  translations : NameMapExtension TranslationInfo
  /-- The name of the attribute, for example `to_additive` or `to_dual`. -/
  attrName : Name
  /-- If `changeNumeral := true`, then try to translate the number `1` to `0`. -/
  changeNumeral : Bool
  /-- When `isDual := true`, every translation `A → B` will also give a translation `B → A`. -/
  isDual : Bool
  guessNameExt : GuessName.GuessNameExt

attribute [inherit_doc GuessName.GuessNameExt] TranslateData.guessNameExt

/-- Get the translation for the given name. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b666c64abc5bdecd2b7cbf8a39b6630e0227a986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
