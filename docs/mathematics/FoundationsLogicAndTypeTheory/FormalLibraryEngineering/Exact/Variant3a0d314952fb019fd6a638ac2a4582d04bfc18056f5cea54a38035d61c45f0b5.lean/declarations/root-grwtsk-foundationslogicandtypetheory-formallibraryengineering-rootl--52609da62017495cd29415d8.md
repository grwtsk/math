# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanElabTacticDoProofModeMGoalExact.Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd.Lean.Elab.Tactic.Do.ProofMode.MGoal.exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f08412d3d857ad8311490630762197394a82c16140bada0af64d2294a49b1b6",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanElabTacticDoProofModeMGoalExact.Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd.Lean.Elab.Tactic.Do.ProofMode.MGoal.exact",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--52609da62017495cd29415d8",
  "source": {
    "blob": "8bbb8cb2a3c4c6c539de3b83a17ba42ec63e20f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exact/Variant3a0d314952fb019fd6a638ac2a4582d04bfc18056f5cea54a38035d61c45f0b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52609da62017495cd29415d8b1cca97d3e6ce6fe216c0ac44f8d10a3b184f70b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exact/Variant3a0d314952fb019fd6a638ac2a4582d04bfc18056f5cea54a38035d61c45f0b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f08412d3d857ad8311490630762197394a82c16140bada0af64d2294a49b1b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanElabTacticDoProofModeMGoalExact.Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd.Lean.Elab.Tactic.Do.ProofMode.MGoal.exact (goal : MGoal) (hyp : Syntax) : OptionT MetaM Expr := do
  if goal.findHyp? hyp.getId |>.isNone then failure
  let focusRes ← goal.focusHypWithInfo ⟨hyp⟩
  OptionT.mk do
  let proof := mkApp5 (mkConst ``Exact.assumption [goal.u]) goal.σs goal.hyps focusRes.restHyps goal.target focusRes.proof
  unless ← isDefEq focusRes.focusHyp goal.target do
    throwError "mexact tactic failed, hypothesis {hyp} is not definitionally equal to {goal.target}"
  return proof

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exact/Variant3a0d314952fb019fd6a638ac2a4582d04bfc18056f5cea54a38035d61c45f0b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exact/Variant3a0d314952fb019fd6a638ac2a4582d04bfc18056f5cea54a38035d61c45f0b5.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbb8cb2a3c4c6c539de3b83a17ba42ec63e20f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
