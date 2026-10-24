# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Execution.Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65c3c692a2d7893a25204bb51b7159e6c9232415",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65c3c692a2d7893a25204bb51b7159e6c9232415`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Machine` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MachineResolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/machineresolution--a890472a62126e853da65985.md) | 13 | `declaration-track:a890472a62126e853da6598569ce5b8d3baf233a0f69b3ddf87cd598bebe3210` |
| 2 | `def` | [runMachine](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/runmachine--bd45c6594739e9e83c672c7c.md) | 33 | `declaration-track:bd45c6594739e9e83c672c7ccaff23290eb586b0d120a2c3ffd73569d45761e0` |
| 3 | `def` | [executeMachine](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/executemachine--0349350ca331165bc9749dab.md) | 80 | `declaration-track:0349350ca331165bc9749dab0e609d3fd8dd80c02e012968cfe16dfcc0ce8684` |
| 4 | `theorem` | [accessMachine_total](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/accessmachine-total--61c6ea7ffc2ea119dc361fe0.md) | 92 | `result-track:61c6ea7ffc2ea119dc361fe0b6ea4f7e5b37af7a2beac3fca9cc8d57c5d4916e` |
| 5 | `theorem` | [completed_has_mode_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/completed-has-mode-certificate--f0c8f6b8755705232bf11c20.md) | 101 | `result-track:f0c8f6b8755705232bf11c206d1a0568d3fba54eebd477b928c348c3003f240b` |
| 6 | `def` | [completed_output_kind_matches_objective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/completed-output-kind-matches-objective--f3a878713f1d94162640a9a5.md) | 117 | `declaration-track:f3a878713f1d94162640a9a523c7dbff6f08dcd7ea1e196c56c974b2fba2bb39` |
| 7 | `theorem` | [zero_fuel_returns_residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/zero-fuel-returns-residual--35fd1cf5feed0c0f33c67ec0.md) | 133 | `result-track:35fd1cf5feed0c0f33c67ec0a25a03fa29563339f274b78ca8a37ffd39144efe` |
| 8 | `theorem` | [budget_exhaustion_returns_residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/budget-exhaustion-returns-residual--1534d3744c8c4131fc19bf6e.md) | 151 | `result-track:1534d3744c8c4131fc19bf6e779a6b0c89e61aa488a82a5ccd07ad61b4102f7a` |
| 9 | `theorem` | [resource_exhaustion_has_no_unreachability_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/resource-exhaustion-has-no-unreachability-certificate--d2a943e6a0083551c2f7cc63.md) | 182 | `result-track:d2a943e6a0083551c2f7cc63e4c250e29f17a7d3be6310c433e8040dc49c2b33` |
| 10 | `theorem` | [executeMachine_deterministic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/executemachine-deterministic--e43a7f0113eba63fc2931f8e.md) | 200 | `result-track:e43a7f0113eba63fc2931f8e2dc0f4f8c7904beb8fd525ff5ad208c0843400f0` |
| 11 | `theorem` | [completed_usage_within_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d.lean/declarations/completed-usage-within-budget--d12510136f4d31f59ea74fc5.md) | 212 | `result-track:d12510136f4d31f59ea74fc589bbea6bf8eb3cd7278a65d7b5a6388b2606dc5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
