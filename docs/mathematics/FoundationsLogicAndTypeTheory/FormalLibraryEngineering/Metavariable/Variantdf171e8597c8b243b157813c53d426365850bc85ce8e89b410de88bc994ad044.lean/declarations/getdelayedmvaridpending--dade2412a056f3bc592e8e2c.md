# getDelayedMVarIdPending

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25135bfac9c7a57c1fe9cfb734d29d7d221f3c2280aed85ef26691eec4ee4051",
  "kind": "def",
  "lexical_name": "getDelayedMVarIdPending",
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
  "slug": "getdelayedmvaridpending--dade2412a056f3bc592e8e2c",
  "source": {
    "blob": "da2cd1a2fd561b484459d897e806f7754d9b9782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dade2412a056f3bc592e8e2c4caae84d8fdc2bc6eff52f06aa3379c735c26506",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25135bfac9c7a57c1fe9cfb734d29d7d221f3c2280aed85ef26691eec4ee4051`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getDelayedMVarIdPending (mvarIdPending : MVarId) : MetaM MVarId := do
  let some e ← getExprMVarAssignment? mvarIdPending | return mvarIdPending
  unless e.getAppFn'.isMVar do return mvarIdPending
  let e := (← instantiateMVars e).consumeMData
  if let .mvar mvarId := e then
    return mvarId
  let .mvar mvarId := e.getAppFn' | return mvarIdPending
  if let some decl ← getDelayedMVarAssignment? mvarId then
    unless ← checkDelayedMVarAssignment e decl do return mvarIdPending
    getDelayedMVarIdPending decl.mvarIdPending
  else
    return mvarIdPending

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da2cd1a2fd561b484459d897e806f7754d9b9782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
