# Glob.toLean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7826c4d444a56d7595d2bd8db5fe9ddbfdf548b429aee00cd755fa50025664d",
  "kind": "def",
  "lexical_name": "Glob.toLean",
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
  "slug": "glob-tolean--a1c6311c28b83beaf315afd9",
  "source": {
    "blob": "df0f3ae67fe392b6879fe7439d1e2c5a07db7677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1c6311c28b83beaf315afd9cf94dcfdae6569933b57781b81d2513a382ba705",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7826c4d444a56d7595d2bd8db5fe9ddbfdf548b429aee00cd755fa50025664d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Glob.toLean (glob : Glob) : Term := Unhygienic.run do
  match glob with
  | .one n => return toLean n
  | .submodules n =>
    match mkNameLit? n with
    | some lit =>`($lit:name.+)
    | none => return mkCApp ``submodules #[toLean n]
  | .andSubmodules n =>
    match mkNameLit? n with
    | some lit =>`($lit:name.*)
    | none => return mkCApp ``andSubmodules #[toLean n]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0f3ae67fe392b6879fe7439d1e2c5a07db7677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
