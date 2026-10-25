# DefViewElabHeaderData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95f3aafdf2c8cf71fde63a50acda8166f587d3d91ca12ca49f44d0c4266b27ee",
  "kind": "structure",
  "lexical_name": "DefViewElabHeaderData",
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
  "slug": "defviewelabheaderdata--da62d304222c31e9b0dc35e0",
  "source": {
    "blob": "9d948cdfa83cbc4fb4c411e2d57cdf1831066814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcd9df348d1fdb6c6f6c2809360fd4ff7bd0819f7c69224b5ed7f4e8ee4a6f28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da62d304222c31e9b0dc35e01c0dfb337f89f59633fd15447da61a9c572b94df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcd9df348d1fdb6c6f6c2809360fd4ff7bd0819f7c69224b5ed7f4e8ee4a6f28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95f3aafdf2c8cf71fde63a50acda8166f587d3d91ca12ca49f44d0c4266b27ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DefViewElabHeaderData where
  /--
    Short name. Recall that all declarations in Lean 4 are potentially recursive. We use `shortDeclName` to refer
    to them at `valueStx`, and other declarations in the same mutual block. -/
  shortDeclName : Name
  /-- Full name for this declaration. This is the name that will be added to the `Environment`. -/
  declName      : Name
  /-- Universe level parameter names explicitly provided by the user. -/
  levelNames    : List Name
  /-- Syntax objects for the binders occurring before `:`, we use them to populate the `InfoTree` when elaborating `valueStx`. -/
  binderIds     : Array Syntax
  /-- Number of parameters before `:`, it also includes auto-implicit parameters automatically added by Lean. -/
  numParams     : Nat
  /-- Type including parameters. -/
  type          : Expr
deriving Inhabited

section Snapshots
open Language

/-- Snapshot after processing of a definition body.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcd9df348d1fdb6c6f6c2809360fd4ff7bd0819f7c69224b5ed7f4e8ee4a6f28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcd9df348d1fdb6c6f6c2809360fd4ff7bd0819f7c69224b5ed7f4e8ee4a6f28a.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d948cdfa83cbc4fb4c411e2d57cdf1831066814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
