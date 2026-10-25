# updateForwardState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:706f368d2eb399bb52ca4d43f9fd9c0574b402168b7edc2ad5d559277fc85aa3",
  "kind": "def",
  "lexical_name": "updateForwardState",
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
  "slug": "updateforwardstate--7a95d971e45269d66fb74e6c",
  "source": {
    "blob": "96b24ccde1a1151a932ad277f3890a7a5e60ae3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpdateGoal/Variantfa1ddbc5830defb7f276dbe47d81f653ea02b94e4fa9576363539810666d29c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a95d971e45269d66fb74e6c2aaa7cad9d89440c8d0a0b777329b4da7a1bfee7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpdateGoal/Variantfa1ddbc5830defb7f276dbe47d81f653ea02b94e4fa9576363539810666d29c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:706f368d2eb399bb52ca4d43f9fd9c0574b402168b7edc2ad5d559277fc85aa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def updateForwardState (phase : PhaseName) (gref : GoalRef) : TreeM Unit := do
  let g ← gref.get
  if phase == .norm then
    throwError "aesop: internal error: {decl_name%}: at goal {g.id}: norm phase not supported"
  if ! g.isNormal then
    throwError "aesop: internal error: {decl_name%}: attempt to update forward state of non-normal goal {g.id} to phase {phase}"
  let (fs, ms) ← g.runMetaMInPostNormState' fun goal =>
    g.forwardState.update goal phase
  let ms := g.forwardRuleMatches.update ms ∅ ∅
  gref.set <| g.setForwardState fs |>.setForwardRuleMatches ms

end Aesop.GoalRef
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpdateGoal/Variantfa1ddbc5830defb7f276dbe47d81f653ea02b94e4fa9576363539810666d29c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpdateGoal/Variantfa1ddbc5830defb7f276dbe47d81f653ea02b94e4fa9576363539810666d29c8.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96b24ccde1a1151a932ad277f3890a7a5e60ae3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
