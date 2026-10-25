# _root_.Lean.Elab.Tactic.Do.ProofMode.MGoal.exactPure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00b6ae52f66521d976e8efca0968de9530900d0e59644dc2f838b739381562f2",
  "kind": "def",
  "lexical_name": "_root_.Lean.Elab.Tactic.Do.ProofMode.MGoal.exactPure",
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
  "slug": "root-lean-elab-tactic-do-proofmode-mgoal-exactpure--43732fc8430216ac91d178ad",
  "source": {
    "blob": "685772de53bd8bba47fb5dacd726441149bf7a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exact/Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43732fc8430216ac91d178ad9bafefe2891f93b9a0b71f6ae5f9460810cd1601",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exact/Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00b6ae52f66521d976e8efca0968de9530900d0e59644dc2f838b739381562f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.Elab.Tactic.Do.ProofMode.MGoal.exactPure (goal : MGoal) (hyp : Syntax) : TacticM Expr := do
  let φ ← mkFreshExprMVar (mkSort .zero)
  let h ← elabTermEnsuringType hyp φ
  let P ← mkFreshExprMVar (mkApp (mkConst ``SPred [goal.u]) goal.σs)
  let some inst ← synthInstance? (mkApp3 (mkConst ``PropAsSPredTautology [goal.u]) φ goal.σs P)
    | throwError "mexact tactic failed, {hyp} is not an SPred tautology"
  return mkApp6 (mkConst ``Exact.from_tautology [goal.u]) goal.σs φ goal.hyps goal.target inst h

@[builtin_tactic Lean.Parser.Tactic.mexact]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exact/Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exact/Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `685772de53bd8bba47fb5dacd726441149bf7a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
