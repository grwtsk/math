# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SpecificAsymptotics.Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f445eeecd65c833be95f73160f385da835ce926",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f445eeecd65c833be95f73160f385da835ce926`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.IsBoundedUnder.isLittleO_sub_self_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/filter-isboundedunder-islittleo-sub-self-inv--e27b219674808df1fa4b2f43.md) | 33 | `result-track:e27b219674808df1fa4b2f431c8767696d99a53a2b9fd7e42f724cc08a0a3cab` |
| 2 | `theorem` | [pow_div_pow_eventuallyEq_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/pow-div-pow-eventuallyeq-attop--1b95a224daa709054a303160.md) | 46 | `result-track:1b95a224daa709054a3031609d814c117c2e6389b2c05890c5f3cc22ae31c6e4` |
| 3 | `theorem` | [pow_div_pow_eventuallyEq_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/pow-div-pow-eventuallyeq-atbot--0404b773d2821bd405878585.md) | 52 | `result-track:0404b773d2821bd405878585c04982fcd97f2204fc94b7c8f99a3bfc41041391` |
| 4 | `theorem` | [tendsto_pow_div_pow_atTop_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/tendsto-pow-div-pow-attop-attop--d00ac9987f9524d4c2523841.md) | 58 | `result-track:d00ac9987f9524d4c2523841a50902e129772c64c7e8fd4406d8135b409d234e` |
| 5 | `theorem` | [tendsto_pow_div_pow_atTop_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/tendsto-pow-div-pow-attop-zero--2a50e0bd46ea3e4109376f6c.md) | 64 | `result-track:2a50e0bd46ea3e4109376f6c7874abbceb24e28436e553421f580e3893e686e4` |
| 6 | `theorem` | [Asymptotics.isLittleO_pow_pow_atTop_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/asymptotics-islittleo-pow-pow-attop-of-lt--1166ceaaf48bc4db55a3ea67.md) | 76 | `result-track:1166ceaaf48bc4db55a3ea67790d24abb643d87646404e5183a85d0f82c7299c` |
| 7 | `theorem` | [Asymptotics.IsBigO.trans_tendsto_norm_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/asymptotics-isbigo-trans-tendsto-norm-attop--9c41d7f9518f1dd658789b21.md) | 82 | `result-track:9c41d7f9518f1dd658789b21b606f2592fa40e7544dc753565c8238a1d0af231` |
| 8 | `theorem` | [Asymptotics.IsLittleO.sum_range](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/asymptotics-islittleo-sum-range--a54dfbf6909c51c89db5e2bf.md) | 96 | `result-track:a54dfbf6909c51c89db5e2bf57b98d77d6cb8bf5c09d9524a60249f379ab9dff` |
| 9 | `theorem` | [Asymptotics.isLittleO_sum_range_of_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/asymptotics-islittleo-sum-range-of-tendsto-zero--132a990a30d5f0e532bb319b.md) | 126 | `result-track:132a990a30d5f0e532bb319b947fdb44467e0321977b33e99f9fe7ee1124e9a3` |
| 10 | `theorem` | [Filter.Tendsto.cesaro_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/filter-tendsto-cesaro-smul--6dc83471a6ad692b218d3b60.md) | 134 | `result-track:6dc83471a6ad692b218d3b609cceef4edbaf41beb5ed590fa396fbd08a6a87c5` |
| 11 | `theorem` | [Filter.Tendsto.cesaro](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/filter-tendsto-cesaro--bf66995340bb0dcad3d6b81f.md) | 149 | `result-track:bf66995340bb0dcad3d6b81f4da61f3dd19ab7485ec8df82e1e1a1107f623c5e` |
| 12 | `theorem` | [Asymptotics.isEquivalent_nat_floor](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/asymptotics-isequivalent-nat-floor--39f93a23a3bd49d248124d4f.md) | 160 | `result-track:39f93a23a3bd49d248124d4ffc00558568f03df4d516898baf1726ad35078d10` |
| 13 | `theorem` | [Asymptotics.isEquivalent_nat_ceil](../../../../../mathematics/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant211a504824a8ee0060f633b5ed0a2268844d3d627d1af35cd3ea26dd4b6a9f40.lean/declarations/asymptotics-isequivalent-nat-ceil--c513e13ddc99fecb195983b3.md) | 165 | `result-track:c513e13ddc99fecb195983b3ca8d3e4b454b582c371f283c3228d594891f1790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
