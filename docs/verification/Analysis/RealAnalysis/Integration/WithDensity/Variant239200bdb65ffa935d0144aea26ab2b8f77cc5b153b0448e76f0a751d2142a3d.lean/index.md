# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.WithDensity.Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f4c007dfc99f21978e24db23e09b2b7e8d8d920",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f4c007dfc99f21978e24db23e09b2b7e8d8d920`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.withDensityᵥ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/measure-withdensity--c738504d56f95457a8c9aefa.md) | 49 | `declaration-track:c738504d56f95457a8c9aefa4605cd9ac315ca31cbda621b1adea1deda3db006` |
| 2 | `theorem` | [withDensityᵥ_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-apply--01062ceea7f13eedbe687e72.md) | 64 | `result-track:01062ceea7f13eedbe687e727c6a065ccbfa8a8796fe7806bdd2606ca4f52b7d` |
| 3 | `theorem` | [withDensityᵥ_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-zero--00835722ca0acc0aa0625c12.md) | 68 | `result-track:00835722ca0acc0aa0625c1295cfa6919202e05c41034cd554caa68692420d15` |
| 4 | `theorem` | [withDensityᵥ_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-neg--c4d781456b51bb889ac36a97.md) | 74 | `result-track:c4d781456b51bb889ac36a972829ce9e4e674bc5db0bbc44aff048455944dab1` |
| 5 | `theorem` | [withDensityᵥ_neg'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-neg--19cd95ecf61938456be3f79d.md) | 83 | `result-track:19cd95ecf61938456be3f79d918e42a731bd77502f327e49fcf0262a5274bb6e` |
| 6 | `theorem` | [withDensityᵥ_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-add--ab2cbd5ff6a243009e92c775.md) | 87 | `result-track:ab2cbd5ff6a243009e92c775e6e0b71ec06064b0f300e82d1444e2f68e547263` |
| 7 | `theorem` | [withDensityᵥ_add'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-add--5d0440dedc846109e251ef65.md) | 97 | `result-track:5d0440dedc846109e251ef65752758c89f71baefc88d8a2bc9d207af222d0ddd` |
| 8 | `theorem` | [withDensityᵥ_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-sub--6e4be5f2f26063dae226a9ba.md) | 102 | `result-track:6e4be5f2f26063dae226a9ba98d72f0a916acfcec026795927daeabae20b80b8` |
| 9 | `theorem` | [withDensityᵥ_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-sub--51c79d15b8722290b76e5841.md) | 106 | `result-track:51c79d15b8722290b76e5841d2a78447ccc489bb52721b006dfaec6677cb87cb` |
| 10 | `theorem` | [withDensityᵥ_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-smul--d341e5bd355e9cf0d09aaebf.md) | 111 | `result-track:d341e5bd355e9cf0d09aaebf7885e68b246e559c8f6361fc31c70a2edff2f477` |
| 11 | `theorem` | [withDensityᵥ_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-smul--2aa1114746d4ebbc4861f496.md) | 123 | `result-track:2aa1114746d4ebbc4861f496eb844c231b9c858aa0453ee771e3ecc20fa7dd33` |
| 12 | `theorem` | [withDensityᵥ_smul_eq_withDensityᵥ_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-smul-eq-withdensity-withdensity--cf426a4d7d52938e5d9dd0c9.md) | 128 | `result-track:cf426a4d7d52938e5d9dd0c977f4bf67776e5c5768d2f95ca594a18470d8ee3b` |
| 13 | `theorem` | [withDensityᵥ_smul_eq_withDensityᵥ_withDensity'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-smul-eq-withdensity-withdensity--9db832cc396adac7aafa32f2.md) | 137 | `result-track:9db832cc396adac7aafa32f2cc91a7f8d953263582e64e7c57e036b6a215f9cd` |
| 14 | `theorem` | [Measure.withDensityᵥ_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/measure-withdensity-absolutelycontinuous--ba453fa657f09137aa4e37f5.md) | 147 | `result-track:ba453fa657f09137aa4e37f500f0cdc158b5fb5d4e334bd96389c9aaa3ba9f4c` |
| 15 | `theorem` | [Integrable.ae_eq_of_withDensityᵥ_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/integrable-ae-eq-of-withdensity-eq--8318ca805a70980f6c73cd11.md) | 157 | `result-track:8318ca805a70980f6c73cd114d96cba40e829ec496b30e5ee52f835fa4017dbe` |
| 16 | `theorem` | [WithDensityᵥEq.congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-eq-congr-ae--a7bd6172d3cabe4494911e34.md) | 162 | `result-track:a7bd6172d3cabe4494911e34485056a996794cc675eefa37738a5280db8d96bb` |
| 17 | `theorem` | [Integrable.withDensityᵥ_eq_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/integrable-withdensity-eq-iff--f3cad549da072452994279d2.md) | 171 | `result-track:f3cad549da072452994279d2ad9e3257f7fe6fa1fede3e7dba14224458789235` |
| 18 | `theorem` | [withDensityᵥ_toReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-toreal--be33de914543a02e86e3037b.md) | 178 | `result-track:be33de914543a02e86e3037b4aba05c77406d608b4c0022383fcf26be839e020` |
| 19 | `theorem` | [withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/withdensity-eq-withdensity-pos-part-sub-withdensity-neg-part--23de404b22d6d56093546d92.md) | 190 | `result-track:23de404b22d6d56093546d9252736d8d3d8963ca6bdcf07d429c7bed2f3cc4b9` |
| 20 | `theorem` | [Integrable.withDensityᵥ_trim_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/integrable-withdensity-trim-eq-integral--921ea8ffb7de334e2554cc19.md) | 206 | `result-track:921ea8ffb7de334e2554cc1942cf2052f96bf370c02cc650f07924aa28b73085` |
| 21 | `theorem` | [Integrable.withDensityᵥ_trim_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/declarations/integrable-withdensity-trim-absolutelycontinuous--856a318573c578f6f5ecd526.md) | 211 | `result-track:856a318573c578f6f5ecd526b57f874b65dfef4fd54035c3e8a1e42f06aec3da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
