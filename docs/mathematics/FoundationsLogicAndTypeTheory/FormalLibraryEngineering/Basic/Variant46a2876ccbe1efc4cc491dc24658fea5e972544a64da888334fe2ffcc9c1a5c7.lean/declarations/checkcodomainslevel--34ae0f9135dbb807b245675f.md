# checkCodomainsLevel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2049999bf794dd2be56fd2496384a33ba873cd462cc02973e5d3307b64a9432b",
  "kind": "def",
  "lexical_name": "checkCodomainsLevel",
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
  "slug": "checkcodomainslevel--34ae0f9135dbb807b245675f",
  "source": {
    "blob": "c31e13045fd34779db5fbbe3efc03909af17432a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34ae0f9135dbb807b245675fbcbb61b9e36754c116333b6fb65413c4a3ecc9d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2049999bf794dd2be56fd2496384a33ba873cd462cc02973e5d3307b64a9432b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkCodomainsLevel (preDefs : Array PreDefinition) : MetaM Unit := do
  if preDefs.size = 1 then return
  let arities ← preDefs.mapM fun preDef =>
    lambdaTelescope preDef.value fun xs _ => return xs.size
  forallBoundedTelescope preDefs[0]!.type arities[0]!  fun _ type₀ => do
    let u₀ ← getLevel type₀
    for h : i in 1...preDefs.size do
      forallBoundedTelescope preDefs[i].type arities[i]! fun _ typeᵢ =>
      unless ← isLevelDefEq u₀ (← getLevel typeᵢ) do
        withOptions (fun o => pp.sanitizeNames.set o false) do
          throwError m!"invalid mutual definition, result types must be in the same universe " ++
            m!"level, resulting type " ++
            m!"for `{preDefs[0]!.declName}` is{indentExpr type₀} : {← inferType type₀}\n" ++
            m!"and for `{preDefs[i]!.declName}` is{indentExpr typeᵢ} : {← inferType typeᵢ}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c31e13045fd34779db5fbbe3efc03909af17432a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
