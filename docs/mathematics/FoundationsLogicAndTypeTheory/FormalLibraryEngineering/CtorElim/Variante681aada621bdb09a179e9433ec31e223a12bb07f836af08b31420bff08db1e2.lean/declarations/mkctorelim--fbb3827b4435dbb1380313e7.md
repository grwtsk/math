# mkCtorElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42b52681a3f1df23da4256f19701f63d5b7e789ebd1c7725216073c3593180a7",
  "kind": "def",
  "lexical_name": "mkCtorElim",
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
  "slug": "mkctorelim--fbb3827b4435dbb1380313e7",
  "source": {
    "blob": "307f49c25a891932c543d1df191c71a60b38a69e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbb3827b4435dbb1380313e70d40d0ab949f90c4c0f34a554b7a4339bd56b9c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42b52681a3f1df23da4256f19701f63d5b7e789ebd1c7725216073c3593180a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkCtorElim (indName : Name) : MetaM Unit := do
  -- We need the `.ctorIdx` function to exist
  unless (← getEnv).contains (mkCtorIdxName indName) do return
  let .inductInfo indVal ← getConstInfo indName | return
  -- Do not do anything if there are not multiple constructors
  unless indVal.numCtors > 1 do return
  -- Do not do anything unless its a type and can elim to type
  if (← isPropFormerType indVal.type) then return
  let recInfo ← getConstInfo (mkRecName indName)
  unless recInfo.levelParams.length > indVal.levelParams.length do return

  -- Expose if indName is not private
  withExporting (isExporting := ! isPrivateName indName) do
    mkCtorElimType indName
    mkIndCtorElim indName
    mkConstructorElim indName


/--
Generate the `.toCtorIdx` and `.ctor.elim` definitions for the given inductive.

This attribute is only meant to be used in `Init.Prelude` to build these constructions for
types where we did not generate them immediately (due to `set_option genCtorIdx false`).
-/
@[builtin_doc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `307f49c25a891932c543d1df191c71a60b38a69e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
