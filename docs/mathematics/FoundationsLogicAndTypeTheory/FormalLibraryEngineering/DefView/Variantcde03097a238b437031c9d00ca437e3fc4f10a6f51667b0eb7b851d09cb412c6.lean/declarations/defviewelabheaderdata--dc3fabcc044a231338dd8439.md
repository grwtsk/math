# DefViewElabHeaderData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7880b5221cc6f5df117e4a2dd60fc8e5f3e27c911a4276a15f77738ab388c27",
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
  "slug": "defviewelabheaderdata--dc3fabcc044a231338dd8439",
  "source": {
    "blob": "2257a4e77cfc1dda38427df20acc14147b394210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcde03097a238b437031c9d00ca437e3fc4f10a6f51667b0eb7b851d09cb412c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc3fabcc044a231338dd8439b433f003347e1f3f0caf1282218b977bdf82a6c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcde03097a238b437031c9d00ca437e3fc4f10a6f51667b0eb7b851d09cb412c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7880b5221cc6f5df117e4a2dd60fc8e5f3e27c911a4276a15f77738ab388c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–46.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcde03097a238b437031c9d00ca437e3fc4f10a6f51667b0eb7b851d09cb412c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcde03097a238b437031c9d00ca437e3fc4f10a6f51667b0eb7b851d09cb412c6.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2257a4e77cfc1dda38427df20acc14147b394210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
