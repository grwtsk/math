# mkFrameBackwardRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6548a621145bd941ef0597e8bde36adb2401a1d264ff893778c93f6c2ccaa1b4",
  "kind": "def",
  "lexical_name": "mkFrameBackwardRule",
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
  "slug": "mkframebackwardrule--3eedb83885d14e397843ecc9",
  "source": {
    "blob": "386fc1cd07d277bd6d4447ec159ec1f8f074b80f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 442,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3eedb83885d14e397843ecc961adcf0a730398d47a9567d7029a1698217bb910",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6548a621145bd941ef0597e8bde36adb2401a1d264ff893778c93f6c2ccaa1b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkFrameBackwardRule (op : Expr) (info : WPApp) : MetaM BackwardRule := do
  -- Pin the monad and the operator, leaving the frame `F`, program, and postconditions schematic;
  -- `tryMkBackwardRuleFromSpec` turns them into rule parameters and `hoistFrameVar` surfaces `F`.
  let specProof ← mkAppOptM ``Std.Internal.Do.WP.Frames.op_wp_upperAdjoint_le_wp
    ((info.args.take 7).map some ++ #[none, some op, none])
  let some specThm ← mkSpecTheoremFromStx (← getRef) specProof
    | throwError "frame: could not build the upper-adjoint frame spec for operator{indentExpr op}"
  let some rule ← (tryMkBackwardRuleFromSpec specThm info).run
    | throwError "frame: could not build the frame rule for operator{indentExpr op}"
  hoistFrameVar rule

end VCGen
end Lean.Elab.Tactic.Do.Internal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `386fc1cd07d277bd6d4447ec159ec1f8f074b80f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
