# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleExclusion.Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64dabdcf5d6abf3a700c901dcf70fd56c14f7fb4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64dabdcf5d6abf3a700c901dcf70fd56c14f7fb4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/finitetransform--71aec6388df49f4c93b0bbb2.md) | 37 | `declaration-track:71aec6388df49f4c93b0bbb225ba1f89053fa628ecd8388b82f1ba9ef47fd3a3` |
| 2 | `def` | [exclusionBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/exclusionbound--476f2993e19b70be7c77365a.md) | 42 | `declaration-track:476f2993e19b70be7c77365aef4b880d9235ef1befaf77b4052a878901209093` |
| 3 | `theorem` | [exclusionBound_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/exclusionbound-eq--cb01c73858a2baebd0dd4564.md) | 46 | `result-track:cb01c73858a2baebd0dd4564d7d70592f158152b97161e1ebec6f52c2733bc80` |
| 4 | `theorem` | [exclusionBound_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/exclusionbound-pos--56fff8691ed93dd52207f4eb.md) | 53 | `result-track:56fff8691ed93dd52207f4ebb26d228dd65e48ce34bdea6e571acbcce4286396` |
| 5 | `theorem` | [regularPart_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/regularpart-lower-bound--0163f4364bb18c5aec6259b8.md) | 65 | `result-track:0163f4364bb18c5aec6259b82d10191a1fe3274cc8d82da8c1ce07ccbbced5c0` |
| 6 | `theorem` | [finite_regularPart_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/finite-regularpart-bound--4682e2325c27712e80d094ad.md) | 80 | `result-track:4682e2325c27712e80d094adff0a8a2568c30803d6ceca35577cd857827e0b08` |
| 7 | `theorem` | [finiteTransform_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/finitetransform-lower-bound--5eeabfc7892afacfd8ecc384.md) | 105 | `result-track:5eeabfc7892afacfd8ecc384db1ac7c2e3eee1da08a876538995be9a5a0cb3f7` |
| 8 | `theorem` | [finiteTransform_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/finitetransform-ne-zero--0b4cd4eb3a02079f092f76af.md) | 118 | `result-track:0b4cd4eb3a02079f092f76af3fa4cdcb64f7e84e58b8ed25e3a8d5d69a8e2392` |
| 9 | `theorem` | [finiteTransform_ne_zero_of_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/finitetransform-ne-zero-of-radius--a7a94b8adbc28ac7797c9d12.md) | 134 | `result-track:a7a94b8adbc28ac7797c9d12e4b851ccbc74ae2b086e2d4bf3dbbbac506ebbb3` |
| 10 | `theorem` | [perturbative_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/perturbative-ne-zero--7e66dc18058c46fb95b3a5ce.md) | 151 | `result-track:7e66dc18058c46fb95b3a5ced1de3cbbcafe30a4c3abe79a170c84207aa88daa` |
| 11 | `theorem` | [finiteTransform_comparison_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/finitetransform-comparison-ne-zero--e0fc49b88e9d73231cbff988.md) | 160 | `result-track:e0fc49b88e9d73231cbff9881b5636a1bc533cce6c508eadb69d7b80343c551a` |
| 12 | `def` | [twoAtomTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/twoatomtransform--43460d5000a2f0a63581f67a.md) | 173 | `declaration-track:43460d5000a2f0a63581f67a5de7aa899835dcc1851f9d3cd9e91ddaa00011ba` |
| 13 | `theorem` | [twoAtomTransform_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/twoatomtransform-eq--483769ddcc2effe499a7adac.md) | 177 | `result-track:483769ddcc2effe499a7adacf8a3bb0b667855728d727b55646cde034d0616b7` |
| 14 | `theorem` | [twoAtomTransform_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/twoatomtransform-zero--cae7e28634a89121f819e91b.md) | 185 | `result-track:cae7e28634a89121f819e91b45398f04b0d4b309faab267e9353cbf65ab2877b` |
| 15 | `theorem` | [no_gap_only_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/declarations/no-gap-only-radius--43064066235ade2f6cee997a.md) | 193 | `result-track:43064066235ade2f6cee997a14b5f591b21dcc96429c1d2004017866edad4db9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
