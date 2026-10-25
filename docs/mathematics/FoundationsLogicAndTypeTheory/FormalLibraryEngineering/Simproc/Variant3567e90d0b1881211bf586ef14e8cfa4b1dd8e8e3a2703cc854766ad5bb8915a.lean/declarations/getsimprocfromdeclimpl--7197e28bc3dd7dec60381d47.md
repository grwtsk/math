# getSimprocFromDeclImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ddcc36a2779b0a55bf9595d08a043ddfd5d845366729b093e0b1a8a28337830",
  "kind": "def",
  "lexical_name": "getSimprocFromDeclImpl",
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
  "slug": "getsimprocfromdeclimpl--7197e28bc3dd7dec60381d47",
  "source": {
    "blob": "0ad940daf61f35aa2ef047582ba0c9c3aa907223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant3567e90d0b1881211bf586ef14e8cfa4b1dd8e8e3a2703cc854766ad5bb8915a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7197e28bc3dd7dec60381d47550103e8f03c82f25f0313b311731d885da9b9ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant3567e90d0b1881211bf586ef14e8cfa4b1dd8e8e3a2703cc854766ad5bb8915a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ddcc36a2779b0a55bf9595d08a043ddfd5d845366729b093e0b1a8a28337830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def getSimprocFromDeclImpl (declName : Name) : ImportM (Sum Simproc DSimproc) := do
  let ctx ← read
  match ctx.env.find? declName with
  | none      => throw <| IO.userError ("Unknown constant `" ++ toString declName ++ "`")
  | some info =>
    match info.type with
    | .const ``Simproc _ =>
      return .inl (← IO.ofExcept <| ctx.env.evalConst Simproc ctx.opts declName)
    | .const ``DSimproc _ =>
      return .inr (← IO.ofExcept <| ctx.env.evalConst DSimproc ctx.opts declName)
    | _ => throw <| IO.userError s!"Simproc `{privateToUserName declName}` has an unexpected type: Expected `Simproc` or `DSimproc`, but found `{info.type}`"

@[implemented_by getSimprocFromDeclImpl]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant3567e90d0b1881211bf586ef14e8cfa4b1dd8e8e3a2703cc854766ad5bb8915a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant3567e90d0b1881211bf586ef14e8cfa4b1dd8e8e3a2703cc854766ad5bb8915a.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad940daf61f35aa2ef047582ba0c9c3aa907223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
