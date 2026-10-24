# Verification target: GRWTSK.Algebra.Energy.Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c26d9d08e89b009d25fe7460401ccfc72d240fb7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Energy/Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Energy/Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537.lean/index.md) · [Full source](../../../../mathematics/Algebra/Energy/Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c26d9d08e89b009d25fe7460401ccfc72d240fb7`.

Source path: `GRWTSK/Algebra/Energy/Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Energy/Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Trajectory.Residual` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compiledEnergy](../../../../mathematics/Algebra/Energy/Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537.lean/declarations/compiledenergy--2ac4017704dadeb90064f901.md) | 11 | `declaration-track:2ac4017704dadeb90064f90108d6eb92f15bb9f96dfefb43478406e3ef609b87` |
| 2 | `def` | [compiledTotalEnergy](../../../../mathematics/Algebra/Energy/Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537.lean/declarations/compiledtotalenergy--b54087be385f08e67df539cd.md) | 16 | `declaration-track:b54087be385f08e67df539cd634a02d43bc186084636b9235d1b07df8a3a5673` |
| 3 | `theorem` | [compiled_energy_channel_decomposition](../../../../mathematics/Algebra/Energy/Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537.lean/declarations/compiled-energy-channel-decomposition--648cc4aa07e8032cf483929c.md) | 20 | `result-track:648cc4aa07e8032cf483929c6609c29556b90a55c7362632453cc1131c35468a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
