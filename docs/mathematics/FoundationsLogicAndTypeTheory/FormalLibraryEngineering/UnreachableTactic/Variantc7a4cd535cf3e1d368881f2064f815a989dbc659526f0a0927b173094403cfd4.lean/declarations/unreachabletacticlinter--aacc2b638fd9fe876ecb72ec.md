# unreachableTacticLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:831e719b659fa9f0fb6d9a99903f007da6c5b2403cd13097b6b29f4698eab644",
  "kind": "def",
  "lexical_name": "unreachableTacticLinter",
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
  "slug": "unreachabletacticlinter--aacc2b638fd9fe876ecb72ec",
  "source": {
    "blob": "1da37ef564b7a5bed4ffd3f5a565d61f32ebf123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aacc2b638fd9fe876ecb72ec3460df5feb29dac8d3096268b701779a3b5275cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:831e719b659fa9f0fb6d9a99903f007da6c5b2403cd13097b6b29f4698eab644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unreachableTacticLinter : Linter where run := withSetOptionIn fun stx => do
  unless getLinterUnreachableTactic (← getOptions) && (← getInfoState).enabled do
    return
  if (← get).messages.hasErrors then
    return
  let cats := (Parser.parserExtension.getState (← getEnv)).categories
  let tactics := cats.find! `tactic |>.kinds
  let convs := cats.find! `conv |>.kinds
  let trees ← getInfoTrees
  let go : M Unit := do
    getTactics (← ignoreTacticKindsRef.get) (fun k => tactics.contains k || convs.contains k) stx
    eraseUsedTacticsList trees
  let (_, map) ← go.run {}
  let unreachable := map.toArray
  let key (r : String.Range) := (r.start.byteIdx, (-r.stop.byteIdx : Int))
  let mut last : String.Range := ⟨0, 0⟩
  for (r, stx) in let _ := @lexOrd; let _ := @ltOfOrd.{0}; unreachable.qsort (key ·.1 < key ·.1) do
    if stx.getKind ∈ [``Std.Tactic.unreachable, ``Std.Tactic.unreachableConv] then continue
    if last.start ≤ r.start && r.stop ≤ last.stop then continue
    logLint linter.unreachableTactic stx "this tactic is never executed"
    last := r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1da37ef564b7a5bed4ffd3f5a565d61f32ebf123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
