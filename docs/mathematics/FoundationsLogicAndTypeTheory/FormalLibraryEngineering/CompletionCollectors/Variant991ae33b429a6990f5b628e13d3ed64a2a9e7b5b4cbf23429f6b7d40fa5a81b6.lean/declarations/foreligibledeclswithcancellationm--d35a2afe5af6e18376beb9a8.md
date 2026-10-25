# forEligibleDeclsWithCancellationM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:192bfc51ddbc1996b364abf42f2a9dece2b134412960c7114a55541135ff9764",
  "kind": "def",
  "lexical_name": "forEligibleDeclsWithCancellationM",
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
  "slug": "foreligibledeclswithcancellationm--d35a2afe5af6e18376beb9a8",
  "source": {
    "blob": "c8b14d07502b84f46376d191f0cd0845ca5a31cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d35a2afe5af6e18376beb9a8a978fb803855cc09123554691df6c6838394c107",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:192bfc51ddbc1996b364abf42f2a9dece2b134412960c7114a55541135ff9764`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private def forEligibleDeclsWithCancellationM [Monad m] [MonadEnv m] [MonadLiftT MetaM m]
      [MonadCancellable m] (f : Name → EligibleDecl → m PUnit) : m PUnit := do
    let _ ← StateT.run (s := 0) <| forEligibleDeclsM fun decl ci => do
      modify (· + 1)
      if (← get) >= 10000 then
        RequestCancellation.check
        set <| 0
      f decl ci

end Utils

section IdCompletionUtils

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8b14d07502b84f46376d191f0cd0845ca5a31cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
