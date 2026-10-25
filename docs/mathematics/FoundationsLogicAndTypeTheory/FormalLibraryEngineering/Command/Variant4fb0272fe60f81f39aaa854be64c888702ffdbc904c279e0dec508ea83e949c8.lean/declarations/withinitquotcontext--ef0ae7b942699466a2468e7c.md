# withInitQuotContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ab8a5378ca25ef8914b0fc23d3cfaba5179bbaa2c6d868c42e5c34866ebdc4d",
  "kind": "def",
  "lexical_name": "withInitQuotContext",
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
  "slug": "withinitquotcontext--ef0ae7b942699466a2468e7c",
  "source": {
    "blob": "64dd38ae66f95db8e5109b5b0e7ec2e229855a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 613,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef0ae7b942699466a2468e7c7c32bb8d7efe4138343db575d076e3e2997415af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ab8a5378ca25ef8914b0fc23d3cfaba5179bbaa2c6d868c42e5c34866ebdc4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withInitQuotContext (hint? : Option UInt64) (act : CommandElabM Unit) : CommandElabM Unit := do
  let some hint := hint?
    | act
  let mut idx := hint.toUInt32.toNat
  while (← get).usedQuotCtxts.contains ((← getMainModule).num idx |>.str "_hygCtx") do
    idx := idx + 1
  let quotCtx := (← getMainModule).num idx |>.str "_hygCtx"
  let nextMacroScope := (← get).nextMacroScope
  try
    modify fun st => { st with
      usedQuotCtxts  := st.usedQuotCtxts.insert quotCtx
      nextMacroScope := firstFrontendMacroScope + 1
    }
    withReader (fun ctx => { ctx with
      quotContext?   := some quotCtx
      currMacroScope := firstFrontendMacroScope
    }) act
  finally
    modify ({ · with nextMacroScope })

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64dd38ae66f95db8e5109b5b0e7ec2e229855a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
