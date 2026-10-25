# UnquoteState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b60d56e990f92789517f998bf943a28a55b7e08b8d15c1349f6c2f32916a939",
  "kind": "structure",
  "lexical_name": "UnquoteState",
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
  "slug": "unquotestate--a77a6d13ee3f162a967679dd",
  "source": {
    "blob": "80dd26726f6355f44af9535c64e12a255ff5f39e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a77a6d13ee3f162a967679ddb1895ed6f9caa4ae978975dc369e6bb55917ecbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b60d56e990f92789517f998bf943a28a55b7e08b8d15c1349f6c2f32916a939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta structure UnquoteState where
  /--
  Quoted mvars in the outside lctx (of type `Level`, `Quoted _`, or `Type`).
  The outside mvars can also be of the form `?m x y z`.
  -/
  mvars : List (Expr × MVarSynth) := []

  /-- Maps quoted expressions (of type Level) in the old context to level parameter names in the new context -/
  levelSubst : Std.HashMap Expr Level := {}

  /-- Maps quoted expressions (of type Expr) in the old context to expressions in the new context -/
  exprSubst : Std.HashMap Expr Expr := {}

  /-- New unquoted local context -/
  unquoted := LocalContext.empty

  /-- Maps free variables in the new context to expressions in the old context (of type Expr) -/
  exprBackSubst : Std.HashMap Expr ExprBackSubstResult := {}

  /-- Maps free variables in the new context to levels in the old context (of type Level) -/
  levelBackSubst : Std.HashMap Level Expr := {}

  /-- New free variables in the new context that were newly introduced for irreducible expressions. -/
  abstractedFVars : Array FVarId := #[]

  levelNames : List Name := []

  mayPostpone : Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80dd26726f6355f44af9535c64e12a255ff5f39e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
