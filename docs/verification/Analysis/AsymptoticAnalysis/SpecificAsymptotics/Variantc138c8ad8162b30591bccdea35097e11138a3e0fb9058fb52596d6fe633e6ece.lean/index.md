# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SpecificAsymptotics.Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e4f5503272b3d598fcee79bb8d5d29701a02f4f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e4f5503272b3d598fcee79bb8d5d29701a02f4f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.IsBoundedUnder.isLittleO_sub_self_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/filter-isboundedunder-islittleo-sub-self-inv--7fe0734f03666a3f686d5c97.md) | 25 | `result-track:7fe0734f03666a3f686d5c974c517dd8a100d41930acfd3e037dd15a31db12cf` |
| 2 | `theorem` | [pow_div_pow_eventuallyEq_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/pow-div-pow-eventuallyeq-attop--c45f53ab9d2256ed512dbaaf.md) | 38 | `result-track:c45f53ab9d2256ed512dbaafbe3ed2ac8e7150d50123c05b81a430d2bfd9f9f7` |
| 3 | `theorem` | [pow_div_pow_eventuallyEq_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/pow-div-pow-eventuallyeq-atbot--b8972552e8cd6e61844e6209.md) | 44 | `result-track:b8972552e8cd6e61844e6209b485720d634d399028c0bf8bcb7cc5cfd9f58899` |
| 4 | `theorem` | [tendsto_pow_div_pow_atTop_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/tendsto-pow-div-pow-attop-attop--e8f421091eaad174692447b1.md) | 50 | `result-track:e8f421091eaad174692447b1a5c7ef5442540af611e4c52318430e1a08adae37` |
| 5 | `theorem` | [tendsto_pow_div_pow_atTop_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/tendsto-pow-div-pow-attop-zero--4fc6e3a29bba0302f30be2fc.md) | 56 | `result-track:4fc6e3a29bba0302f30be2fcd71554524dac224c0e7d29fed3ca511da77c0fdc` |
| 6 | `theorem` | [Asymptotics.isLittleO_pow_pow_atTop_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/asymptotics-islittleo-pow-pow-attop-of-lt--905177d425fc56a1f126ade6.md) | 68 | `result-track:905177d425fc56a1f126ade6a217143b459816bbee3d863c855c9612b2f4250d` |
| 7 | `theorem` | [Asymptotics.IsBigO.trans_tendsto_norm_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/asymptotics-isbigo-trans-tendsto-norm-attop--47e53b339010d137a0add6ee.md) | 74 | `result-track:47e53b339010d137a0add6eed747966dcceebdfed6ceb1493c5e73fbbc12aad1` |
| 8 | `theorem` | [Asymptotics.IsLittleO.sum_range](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/asymptotics-islittleo-sum-range--cbe4cee35e8b4dece776f865.md) | 88 | `result-track:cbe4cee35e8b4dece776f865aa6d4f18767c3f27b18c43c138bfc4a176fe5260` |
| 9 | `theorem` | [Asymptotics.isLittleO_sum_range_of_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/asymptotics-islittleo-sum-range-of-tendsto-zero--56cdeca18e74ec9a172a06ee.md) | 118 | `result-track:56cdeca18e74ec9a172a06ee6ec23b13f07a4eb16c8c919d616c98714d0f1e6e` |
| 10 | `theorem` | [Filter.Tendsto.cesaro_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/filter-tendsto-cesaro-smul--74b50525f4f6709c4624ef85.md) | 126 | `result-track:74b50525f4f6709c4624ef8525e235d3c6f141b75fcd2a15a9ab9cf2878593d3` |
| 11 | `theorem` | [Filter.Tendsto.cesaro](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/filter-tendsto-cesaro--bd85dd241f039f3b9ee0dc75.md) | 141 | `result-track:bd85dd241f039f3b9ee0dc753e3a83eaad4a9f0fedeb74d0d23afb2af5675fe3` |
| 12 | `theorem` | [Asymptotics.isEquivalent_nat_floor](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/asymptotics-isequivalent-nat-floor--ae856ba21295d8d55e641651.md) | 152 | `result-track:ae856ba21295d8d55e641651410da4196d9a7d0c3049ef923d4975df2e2f93d6` |
| 13 | `theorem` | [Asymptotics.isEquivalent_nat_ceil](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variantc138c8ad8162b30591bccdea35097e11138a3e0fb9058fb52596d6fe633e6ece.lean/declarations/asymptotics-isequivalent-nat-ceil--f3b3a5f57c43a2f592f90f7d.md) | 157 | `result-track:f3b3a5f57c43a2f592f90f7d55e5ace2df6b8d4c7b2059ee6aa98bbef29466f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
