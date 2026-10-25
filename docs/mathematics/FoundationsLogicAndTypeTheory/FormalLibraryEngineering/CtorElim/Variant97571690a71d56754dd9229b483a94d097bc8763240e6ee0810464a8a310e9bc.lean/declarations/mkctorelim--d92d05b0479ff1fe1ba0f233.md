# mkCtorElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e04f770103b9184a7772adfdb04ff73a99f7e1ddd5c44efc0f5ddd1e719b31fb",
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
  "slug": "mkctorelim--d92d05b0479ff1fe1ba0f233",
  "source": {
    "blob": "7ef2d9523ddb474456e8ba536aa789bb27db371f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variant97571690a71d56754dd9229b483a94d097bc8763240e6ee0810464a8a310e9bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d92d05b0479ff1fe1ba0f2339cb6d5fcc53bee3baff4abbcba2994b315f692c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variant97571690a71d56754dd9229b483a94d097bc8763240e6ee0810464a8a310e9bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e04f770103b9184a7772adfdb04ff73a99f7e1ddd5c44efc0f5ddd1e719b31fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–236.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variant97571690a71d56754dd9229b483a94d097bc8763240e6ee0810464a8a310e9bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variant97571690a71d56754dd9229b483a94d097bc8763240e6ee0810464a8a310e9bc.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ef2d9523ddb474456e8ba536aa789bb27db371f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
