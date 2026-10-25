# librarySearchLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fec5a77508f3570b3ad8d15c3cd22928f072757dc217526e42c93ae5d76e249",
  "kind": "def",
  "lexical_name": "librarySearchLemma",
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
  "slug": "librarysearchlemma--c33bf1a2e5a76838825e0f35",
  "source": {
    "blob": "2296198ad773bb12be7a314a97f67b1dff8e05c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 304,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c33bf1a2e5a76838825e0f351a2f1b3cd2be4b7a955fbda8a9aee0e950a11cd5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fec5a77508f3570b3ad8d15c3cd22928f072757dc217526e42c93ae5d76e249`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def librarySearchLemma (cfg : ApplyConfig) (act : List MVarId → MetaM (List MVarId))
    (allowFailure : MVarId → MetaM Bool) (cand : Candidate)  : MetaM (List MVarId) := do
  let ((goal, mctx), (name, mod)) := cand
  let ppMod (mod : DeclMod) : MessageData :=
        match mod with | .none => "" | .mp => " with mp" | .mpr => " with mpr"
  withTraceNode `Tactic.librarySearch (fun _ => return m!"trying {name}{ppMod mod} ") do
    setMCtx mctx
    let lem ← mkLibrarySearchLemma name mod
    let newGoals ← goal.apply lem cfg
    try
      act newGoals
    catch _ =>
      if ← allowFailure goal then
        pure newGoals
      else
        failure

/--
Sequentially invokes a tactic `act` on each value in candidates on the current state.

The tactic `act` should return a list of meta-variables that still need to be resolved.
If this list is empty, then no variables remain to be solved, and `tryOnEach` returns
`none` with the environment set so each goal is resolved (unless `collectAll` is true,
in which case it continues searching and collects complete solutions in the array).

If the action throws an internal exception with the `abortSpeculationId` id then
further computation is stopped and intermediate results returned. If any other
exception is thrown, then it is silently discarded.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2296198ad773bb12be7a314a97f67b1dff8e05c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
