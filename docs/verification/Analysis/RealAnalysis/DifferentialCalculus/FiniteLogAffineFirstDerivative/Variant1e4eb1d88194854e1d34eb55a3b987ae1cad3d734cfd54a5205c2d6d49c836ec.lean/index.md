# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineFirstDerivative.Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c5528f65bf8cd50253abf7bcfcef64e53d2ca25",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c5528f65bf8cd50253abf7bcfcef64e53d2ca25`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineCovariance` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Linear` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/weightderivative--0e0b00e7743b00621fb7ee85.md) | 44 | `declaration-track:0e0b00e7743b00621fb7ee85a9a04af50ee0997260ee72323d804685cc07e11c` |
| 2 | `theorem` | [weightDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/weightderivative-apply--738d40b5aacf70cd37c14d51.md) | 48 | `result-track:738d40b5aacf70cd37c14d518152d1cc695215ed99f58a3323a5a877fbe729a1` |
| 3 | `theorem` | [analyticAt_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/analyticat-unnormalizedweight--59b344795b7f689ad8cf7900.md) | 55 | `result-track:59b344795b7f689ad8cf7900794fab291e3ef5c6a4a9921428af8c718ab30202` |
| 4 | `theorem` | [hasFDerivAt_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/hasfderivat-unnormalizedweight--300ab0c94ea2b0fa81692bfe.md) | 64 | `result-track:300ab0c94ea2b0fa81692bfe9857756b90d2e51d5d4968864a78885e57469a6a` |
| 5 | `def` | [partitionDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/partitionderivative--28afdb155f0d6398e0177134.md) | 75 | `declaration-track:28afdb155f0d6398e01771346019f0b7b6152cb95660c6c180778b5f1ca35c95` |
| 6 | `theorem` | [partitionDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/partitionderivative-apply--7974a7d9353e4361274e7a03.md) | 79 | `result-track:7974a7d9353e4361274e7a03a0859b44b1b05d8c8c26e77113852a6e961a0aa6` |
| 7 | `theorem` | [analyticAt_partition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/analyticat-partition--fb40f2a6dc3fc42831920998.md) | 88 | `result-track:fb40f2a6dc3fc42831920998e39b8f3df7c6e764249548afda7bbe54c2fd26f2` |
| 8 | `theorem` | [hasFDerivAt_partition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/hasfderivat-partition--9942a1123c3c1be11647a567.md) | 98 | `result-track:9942a1123c3c1be11647a56753924ef4051b1e9def007dd325e8005225b383a9` |
| 9 | `theorem` | [partition_mul_probability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/partition-mul-probability--713a508604e48f312f40b77f.md) | 111 | `result-track:713a508604e48f312f40b77fff09dcd6ae66db82d5c6de609e5a30dc85c85d8e` |
| 10 | `theorem` | [partitionDerivative_eq_partition_smul_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/partitionderivative-eq-partition-smul-centroid--1d2692534a88163e9094f1dd.md) | 119 | `result-track:1d2692534a88163e9094f1ddaa6ff8c61b8ff523087a13d21fbb509a777cbfc8` |
| 11 | `theorem` | [inv_smul_partitionDerivative_eq_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/inv-smul-partitionderivative-eq-centroid--8de814fd2e22869d39dd8807.md) | 131 | `result-track:8de814fd2e22869d39dd8807fe64c466c7ecc83be03a56f70061c339398bc133` |
| 12 | `theorem` | [analyticAt_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/analyticat-logpartition--49a3568fb6b6f0c38cf270a9.md) | 141 | `result-track:49a3568fb6b6f0c38cf270a993eebce980ed3385bc51f7c67f12571015adc9d0` |
| 13 | `theorem` | [hasFDerivAt_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/hasfderivat-logpartition--4d7e6ae517d8d27f3cf56275.md) | 147 | `result-track:4d7e6ae517d8d27f3cf562753ca9dc9575f11012014f69233668a69226bda79b` |
| 14 | `theorem` | [fderiv_logPartition_eq_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/fderiv-logpartition-eq-centroid--9c79ffd6100ad3e565dc8f71.md) | 158 | `result-track:9c79ffd6100ad3e565dc8f712183471f48755f9513e9baea11e255e04dc18481` |
| 15 | `theorem` | [analyticAt_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/analyticat-centroid--901de5502aabf8a4cc663195.md) | 165 | `result-track:901de5502aabf8a4cc6631956604ca12c9ba63fd01c7a0e8dfc4fd732f41f0b3` |
| 16 | `theorem` | [directional_derivative_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean/declarations/directional-derivative-logpartition--47d80688a8d7527df3905461.md) | 178 | `result-track:47d80688a8d7527df3905461599547a03f29ea9822de6d49f98f1b4e20fe05cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
