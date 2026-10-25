# checkSeqAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47d5f2c9a8fb21d8b52f57a6b954c4a123366082d174411d63e329d66449bef3",
  "kind": "def",
  "lexical_name": "checkSeqAt",
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
  "slug": "checkseqat--a9eeb9eceaa086e747f03d37",
  "source": {
    "blob": "4e7c3eef92b1bebc73ee70e4ca9346ea4484a7c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 291,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Action/Variant55f599a46aa6a8a99acfd2582b04720d622ddc346273ea6e465ac0447e4fff0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9eeb9eceaa086e747f03d37f016d4bbd73eefe0498847ae5555d9934d724d50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Action/Variant55f599a46aa6a8a99acfd2582b04720d622ddc346273ea6e465ac0447e4fff0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47d5f2c9a8fb21d8b52f57a6b954c4a123366082d174411d63e329d66449bef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkSeqAt (s? : Option SavedState) (goal : Goal) (seq : List TGrind) : GrindM Bool := do
  let some s := s? | return true
  Lean.withoutModifyingState do
    s.restore
    let tac ← mkGrindParen seq
    -- **Note**: Ensure tracing is disabled.
    withTheReader Grind.Context (fun ctx => { ctx with config.trace := false }) do
      try
        let subgoals ← evalTactic goal tac
        return subgoals.isEmpty
      catch _  =>
        return false

/--
Helper action that checks whether the resulting tactic script produced by its continuation
can close the original goal.
If `warnOnly = true`, just generates a warning message instead of an error
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Action/Variant55f599a46aa6a8a99acfd2582b04720d622ddc346273ea6e465ac0447e4fff0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Action/Variant55f599a46aa6a8a99acfd2582b04720d622ddc346273ea6e465ac0447e4fff0f.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e7c3eef92b1bebc73ee70e4ca9346ea4484a7c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
