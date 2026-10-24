# Verification target: GRWTSK.Algebra.UniversalAlgebra.Power.Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e26847e1c5bfeab9585f23a44b02cf0b09531cc5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e26847e1c5bfeab9585f23a44b02cf0b09531cc5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Power/Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Power/Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Power` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Parity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zpow_bit1_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f.lean/declarations/zpow-bit1-neg--32121fc44b0fd8e57b1343dc.md) | 29 | `result-track:32121fc44b0fd8e57b1343dc4952bbc1a79923d76e7ff6cd77e303ac90caa608` |
| 2 | `theorem` | [Odd.neg_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f.lean/declarations/odd-neg-zpow--3c56c558778d2dd6e445d460.md) | 33 | `result-track:3c56c558778d2dd6e445d460eecf4aae5f32f4f64f510663ea44b9ead23acdf9` |
| 3 | `theorem` | [Odd.neg_one_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f.lean/declarations/odd-neg-one-zpow--884818872e8451ac07c7e5dc.md) | 38 | `result-track:884818872e8451ac07c7e5dc76192d68ba4c228b8a4e2f9ebff0da39d49f40c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
