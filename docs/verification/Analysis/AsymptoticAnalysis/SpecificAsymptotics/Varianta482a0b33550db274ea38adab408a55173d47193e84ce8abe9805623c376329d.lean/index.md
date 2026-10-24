# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SpecificAsymptotics.Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b62925af74918e5451da98f0cd18869567bb9b97",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b62925af74918e5451da98f0cd18869567bb9b97`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.IsBoundedUnder.isLittleO_sub_self_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/filter-isboundedunder-islittleo-sub-self-inv--29844770bdbbe6b7e29ecf8d.md) | 27 | `result-track:29844770bdbbe6b7e29ecf8d91423b098507067d67841aaf2cad27b487c25123` |
| 2 | `theorem` | [pow_div_pow_eventuallyEq_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/pow-div-pow-eventuallyeq-attop--a4fae9c969fcff7642b67cf5.md) | 41 | `result-track:a4fae9c969fcff7642b67cf5d4a6e543930d3b46de897f8b9c2f1eb3a1af93e5` |
| 3 | `theorem` | [pow_div_pow_eventuallyEq_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/pow-div-pow-eventuallyeq-atbot--79b86541a20b4407e9c72a49.md) | 48 | `result-track:79b86541a20b4407e9c72a49ec83b1c0f7de9626a01c3ea62356466af938b66b` |
| 4 | `theorem` | [tendsto_zpow_atTop_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/tendsto-zpow-attop-attop--509ce9b4d5f5e8e15140256d.md) | 55 | `result-track:509ce9b4d5f5e8e15140256db3cf612415bb712e55b778bfa40e066ad08e978e` |
| 5 | `theorem` | [tendsto_pow_div_pow_atTop_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/tendsto-pow-div-pow-attop-attop--28e92033f883fd1b24e78568.md) | 62 | `result-track:28e92033f883fd1b24e78568dae7b40fec9c1348590f1b04aca9b0c3c1d0dd47` |
| 6 | `theorem` | [tendsto_pow_div_pow_atTop_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/tendsto-pow-div-pow-attop-zero--002b52f14dd34cd5508b0201.md) | 69 | `result-track:002b52f14dd34cd5508b0201a31e9a73479a9dd41f34edf9927c12a4bf43567f` |
| 7 | `theorem` | [Asymptotics.isLittleO_pow_pow_atTop_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/asymptotics-islittleo-pow-pow-attop-of-lt--0a344d3f2bdec0d6a258433d.md) | 82 | `result-track:0a344d3f2bdec0d6a258433d55a9389ab3024e4d13a4e13c7a7db6fa5ea581f9` |
| 8 | `theorem` | [Asymptotics.IsBigO.trans_tendsto_norm_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/asymptotics-isbigo-trans-tendsto-norm-attop--88d846dd09c9c138194fa2db.md) | 88 | `result-track:88d846dd09c9c138194fa2db4714f3178bf9e6b737ffd94d0a0c2d69c4299b52` |
| 9 | `theorem` | [Asymptotics.IsLittleO.sum_range](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/asymptotics-islittleo-sum-range--77f84daa70311d6feb8993e9.md) | 106 | `result-track:77f84daa70311d6feb8993e9e236537ebfbe3694de09fa2c6f708181886e9970` |
| 10 | `theorem` | [Asymptotics.isLittleO_sum_range_of_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/asymptotics-islittleo-sum-range-of-tendsto-zero--47f683a7a65a439c0380377c.md) | 139 | `result-track:47f683a7a65a439c0380377c677865ae39196f32d0f8b351961bd801cf55ba22` |
| 11 | `theorem` | [Filter.Tendsto.cesaro_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/filter-tendsto-cesaro-smul--010f4d2ff99fd012a6ef9233.md) | 148 | `result-track:010f4d2ff99fd012a6ef9233948a4adca09bf5dfde77e4199bd447d35e5d817f` |
| 12 | `theorem` | [Filter.Tendsto.cesaro](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/declarations/filter-tendsto-cesaro--0ca6a842740cbdd4a89afdba.md) | 164 | `result-track:0ca6a842740cbdd4a89afdba467808afe022f3178692e4952b293c8cbf359fdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
