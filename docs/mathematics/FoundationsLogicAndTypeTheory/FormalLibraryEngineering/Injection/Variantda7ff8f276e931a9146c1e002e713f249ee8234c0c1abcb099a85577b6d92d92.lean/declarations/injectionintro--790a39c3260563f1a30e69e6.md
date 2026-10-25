# injectionIntro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4387fe7335620f14241a55c13b32784dbb5d9bd50055e7ce3af6b505c2e132ac",
  "kind": "def",
  "lexical_name": "injectionIntro",
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
  "slug": "injectionintro--790a39c3260563f1a30e69e6",
  "source": {
    "blob": "6e6241b42d7b14fccc333a66aca3c0a90eb8e289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:790a39c3260563f1a30e69e68452f403606cca5a0d42b9c0ed702bf3928f280a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4387fe7335620f14241a55c13b32784dbb5d9bd50055e7ce3af6b505c2e132ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def injectionIntro (mvarId : MVarId) (numEqs : Nat) (newNames : List Name) (tryToClear := true) : MetaM InjectionResult := do
  let rec go : Nat → MVarId → Array FVarId → List Name → MetaM InjectionResult
    | 0, mvarId, fvarIds, remainingNames =>
      return InjectionResult.subgoal mvarId fvarIds remainingNames
    | n+1, mvarId, fvarIds, name::remainingNames => do
      let (fvarId, mvarId) ← mvarId.intro name
      let (fvarId, mvarId) ← heqToEq mvarId fvarId tryToClear
      go n mvarId (fvarIds.push fvarId) remainingNames
    | n+1, mvarId, fvarIds, [] => do
      let (fvarId, mvarId) ← mvarId.intro1
      let (fvarId, mvarId) ← heqToEq mvarId fvarId tryToClear
      go n mvarId (fvarIds.push fvarId) []
  trace[Meta.Tactic.injection] "introducing {numEqs} new equalities at\n{mvarId}"
  go numEqs mvarId #[] newNames

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e6241b42d7b14fccc333a66aca3c0a90eb8e289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
