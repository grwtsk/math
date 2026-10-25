# applyS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51d85e9400fd35ec70c7d26f871f0ac4d17b6ef6f07c857dd67f2db38cefba72",
  "kind": "def",
  "lexical_name": "applyS",
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
  "slug": "applys--cee75be031e1c0690fc389f2",
  "source": {
    "blob": "9374966843f5519fdfe32c92a41e76a0cb9819db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cee75be031e1c0690fc389f207514c153e8ebd02d160cb2655854e70d4d6a48d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51d85e9400fd35ec70c7d26f871f0ac4d17b6ef6f07c857dd67f2db38cefba72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def applyS (S : SRec) (x : Expr) : TermElabM (Option Expr) :=
  try
    let f ← mkConstWithFreshMVarLevels S.name
    let v ← elabAppArgs f #[] ((S.args.push x).map .expr)
      (expectedType? := none) (explicit := true) (ellipsis := false)
    -- Now elaborate any remaining instance arguments
    elabAppArgs v #[] #[] (expectedType? := none) (explicit := false) (ellipsis := false)
  catch _ =>
    return none

/-- For a given argument `x`, checks if there is a coercion from `fromS x` to `toS x`
if these expressions are type correct. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9374966843f5519fdfe32c92a41e76a0cb9819db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
