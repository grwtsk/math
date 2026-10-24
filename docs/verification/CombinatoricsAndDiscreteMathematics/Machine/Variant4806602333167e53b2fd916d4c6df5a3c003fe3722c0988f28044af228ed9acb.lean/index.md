# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Machine.Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "759bb6b0d2224afff449a97c18c5277dfcccb20d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `759bb6b0d2224afff449a97c18c5277dfcccb20d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Output` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MachineStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean/declarations/machinestep--4fc90c223f7580276da0886c.md) | 13 | `declaration-track:4fc90c223f7580276da0886cbff5e8e8fd1534a2572eccb189a8a00e341f81cd` |
| 2 | `structure` | [AccessMachine](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean/declarations/accessmachine--dce5f2d13af07819834ac214.md) | 26 | `declaration-track:dce5f2d13af07819834ac214334e4e86126947c6e6d7b77756e4eb06192b0c39` |
| 3 | `theorem` | [encode_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean/declarations/encode-injective--34d0f9d06b186d65597dfdfa.md) | 88 | `result-track:34d0f9d06b186d65597dfdfa273c0f06549d3fb0b03bd37bd1448be39a52982f` |
| 4 | `theorem` | [step_preserves_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean/declarations/step-preserves-invariant--434b04c9cd573ff60e3d1ea2.md) | 101 | `result-track:434b04c9cd573ff60e3d1ea2719233a8b641e4b67a1f27d46583f1c1e32c4058` |
| 5 | `theorem` | [continue_advances_one_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean/declarations/continue-advances-one-step--7d879fee63665f486df40762.md) | 115 | `result-track:7d879fee63665f486df40762385dd11726c9ec9e5f9d611c52156f419161d26c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
