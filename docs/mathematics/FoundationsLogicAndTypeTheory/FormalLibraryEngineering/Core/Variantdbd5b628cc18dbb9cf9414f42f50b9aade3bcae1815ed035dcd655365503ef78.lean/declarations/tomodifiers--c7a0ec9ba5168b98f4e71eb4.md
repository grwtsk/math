# toModifiers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:840426706979cd2a215efd081b0b097744136b6ff4300d3ca1434d735daee925",
  "kind": "def",
  "lexical_name": "toModifiers",
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
  "slug": "tomodifiers--c7a0ec9ba5168b98f4e71eb4",
  "source": {
    "blob": "aac70184d582b32391c0f2e474b4393d63d608aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdbd5b628cc18dbb9cf9414f42f50b9aade3bcae1815ed035dcd655365503ef78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7a0ec9ba5168b98f4e71eb4c08ed9d34ba6de48c3cf654fd9967dd311daedfa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdbd5b628cc18dbb9cf9414f42f50b9aade3bcae1815ed035dcd655365503ef78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:840426706979cd2a215efd081b0b097744136b6ff4300d3ca1434d735daee925`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toModifiers (nm : Name) (newDoc : Option String := none) :
  CoreM Modifiers := do
  let env ← getEnv
  let d ← getConstInfo nm
  let mods : Modifiers :=
  { docString? := newDoc
    visibility :=
    if isPrivateNameExport nm then
      Visibility.private
    else if isProtected env nm then
      Visibility.regular
    else
      Visibility.protected
    isNoncomputable := if (env.find? $ nm.mkStr "_cstage1").isSome then false else true
    recKind := RecKind.default -- nonrec only matters for name resolution, so is irrelevant (?)
    isUnsafe := d.isUnsafe
    attrs := #[] }
  return mods

/--
Make a PreDefinition taking some metadata from declaration `nm`.
You can provide a new type, value and (optional) docstring, but the remaining information is taken
from `nm`.
Currently only implemented for definitions and theorems. Also see docstring of `toModifiers`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdbd5b628cc18dbb9cf9414f42f50b9aade3bcae1815ed035dcd655365503ef78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdbd5b628cc18dbb9cf9414f42f50b9aade3bcae1815ed035dcd655365503ef78.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aac70184d582b32391c0f2e474b4393d63d608aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
