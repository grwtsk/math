# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Periodic.Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b98d43e3ae423759ab05972f2cf37c281ff1e9c8",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b98d43e3ae423759ab05972f2cf37c281ff1e9c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AddCircle.measurable_mk'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/addcircle-measurable-mk--5642298c27766d2fd2fcb3af.md) | 35 | `result-track:5642298c27766d2fd2fcb3af02fcbcc87331fa6be64f58b8848f62edb4d37886` |
| 2 | `theorem` | [isAddFundamentalDomain_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/isaddfundamentaldomain-ioc--872fc568ac4feba1bac31770.md) | 39 | `result-track:872fc568ac4feba1bac31770085739cdebd6dd11e7f5fd9330d42d186094195b` |
| 3 | `theorem` | [isAddFundamentalDomain_Ioc'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/isaddfundamentaldomain-ioc--d71c25f801935f1d75a5ea87.md) | 48 | `result-track:d71c25f801935f1d75a5ea8771c84d0978a0f35605d9bc41df5df25145734d3c` |
| 4 | `instance` | [measureSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/measurespace--d658c031480f413b5ac7f565.md) | 62 | `declaration-track:d658c031480f413b5ac7f5657aedbf3096d3ea007a73058065af5a0fa73e9ec0` |
| 5 | `theorem` | [measure_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/measure-univ--414d666ec128be2660b68e78.md) | 66 | `result-track:414d666ec128be2660b68e780f9e381357be6e78b3461a77b1d0819ca4398276` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/instance--210f80f54f9d1e844cf00e11.md) | 71 | `declaration-track:210f80f54f9d1e844cf00e11fc18aacee823d0cfe404e313e908851d4554677f` |
| 7 | `instance` | [isFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/isfinitemeasure--26f3699a10017757bdd7ef0d.md) | 74 | `declaration-track:26f3699a10017757bdd7ef0d0633ba30ace4d01265692223581d28accb034169` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/instance--8ea344b85a5826a173108dfd.md) | 77 | `declaration-track:8ea344b85a5826a173108dfdef73d69946f1a5666469a293771c5b395c63a896` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/instance--2574eeed75774d1dab9b3aad.md) | 80 | `declaration-track:2574eeed75774d1dab9b3aade142f63e92f6e510d93807b74bd59a4da076473b` |
| 10 | `theorem` | [measurePreserving_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/measurepreserving-mk--3f64985b2193d01f441b9c0b.md) | 88 | `result-track:3f64985b2193d01f441b9c0b09df220802f4799f730401976c155ef1d39d2157` |
| 11 | `lemma` | [add_projection_respects_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/add-projection-respects-measure--83f8e00fbbb1c764cbf2ddff.md) | 94 | `result-track:83f8e00fbbb1c764cbf2ddff982de65073dc461b1cc5d4af4977ba116e42efa6` |
| 12 | `theorem` | [volume_closedBall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/volume-closedball--47cff83149bec3017a39cdb2.md) | 99 | `result-track:47cff83149bec3017a39cdb276bb1439cd54d30a180a47d512f1c5912bf9fb65` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/instance--4ddb7a083176ef99753e0250.md) | 118 | `declaration-track:4ddb7a083176ef99753e0250a8e86c773e8bad334014cde7791cc28eb3d62c74` |
| 14 | `def` | [measurableEquivIoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/measurableequivioc--1a81b710aa8aa23328910777.md) | 128 | `declaration-track:1a81b710aa8aa2332891077750c421367c4dee0679c9a0110f802a2e66cdb7e4` |
| 15 | `def` | [measurableEquivIco](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/measurableequivico--ad34f019773cf629bacb7d95.md) | 137 | `declaration-track:ad34f019773cf629bacb7d951795e506ba2a7957a9e2a8b11b8a24c4f7f6c8f9` |
| 16 | `theorem` | [lintegral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/lintegral-preimage--3ceb86298650d1127f26a8f4.md) | 147 | `result-track:3ceb86298650d1127f26a8f430fa26a72bfe9e74ad939dc7e50a8936721eee8b` |
| 17 | `theorem` | [integral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/integral-preimage--b7885b2cabed7a9719de02ec.md) | 169 | `result-track:b7885b2cabed7a9719de02ec426e484617393d424f76fcb4c04cdec600257f9e` |
| 18 | `theorem` | [intervalIntegral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/intervalintegral-preimage--05d3f19d405ce83c78bcde8b.md) | 184 | `result-track:05d3f19d405ce83c78bcde8b0dde3c0ddf1966d7292d8cdf3fc4cf69544ee3fc` |
| 19 | `theorem` | [measure_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/measure-univ--68c1082b210e6ec4e303b049.md) | 195 | `result-track:68c1082b210e6ec4e303b049f15fb829cc192e630f2d949918abe69cd7c6f946` |
| 20 | `theorem` | [measurePreserving_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/measurepreserving-mk--e7eb85dcb464cafc5abb7957.md) | 201 | `result-track:e7eb85dcb464cafc5abb79575fcf84bed10f823ef627275284dd113f233fe984` |
| 21 | `theorem` | [lintegral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/lintegral-preimage--492a6a9f87e718cc1de8b10b.md) | 208 | `result-track:492a6a9f87e718cc1de8b10b9d4302e062597d415c2b3cbcbdec214df5f6b7bb` |
| 22 | `theorem` | [integral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/integral-preimage--3dbd99febe22d768413873fd.md) | 216 | `result-track:3dbd99febe22d768413873fd872ea4c3330bbed9f0138f67c2310e4e4bacfe16` |
| 23 | `theorem` | [intervalIntegral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/intervalintegral-preimage--ecb93b9773db5a123cc33a7f.md) | 222 | `result-track:ecb93b9773db5a123cc33a7ff40770818321f5e5751b59f9ba74b3cd8504b7ac` |
| 24 | `theorem` | [intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/intervalintegrable--f9bb2e2c1e7e3a8f6a4c7b66.md) | 241 | `result-track:f9bb2e2c1e7e3a8f6a4c7b66d354eb3d331ae38833de65335fd078258674010c` |
| 25 | `theorem` | [intervalIntegrable₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/intervalintegrable--79cdee20674494e5432e2dc0.md) | 271 | `result-track:79cdee20674494e5432e2dc05ac57d1e6f38ba4719ef0fedbb42c001fb5167f7` |
| 26 | `theorem` | [intervalIntegral_add_eq_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/intervalintegral-add-eq-of-pos--ae22c9063efc4d143868741d.md) | 284 | `result-track:ae22c9063efc4d143868741d50091661178384dfa58019be12b174b18f1f3e20` |
| 27 | `theorem` | [intervalIntegral_add_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/intervalintegral-add-eq--e78c362bcb3e568a8dbf712a.md) | 294 | `result-track:e78c362bcb3e568a8dbf712a564506e5246a47a30a438fcb78c1117178a0a0bb` |
| 28 | `theorem` | [intervalIntegral_add_eq_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/intervalintegral-add-eq-add--0bbb93ff61665514f7da5afc.md) | 305 | `result-track:0bbb93ff61665514f7da5afc4d6c9d170c6c7fcc3152652fe69ae6b552b1f731` |
| 29 | `theorem` | [intervalIntegral_add_zsmul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/intervalintegral-add-zsmul-eq--7ab471d50903fada8772e6ef.md) | 312 | `result-track:7ab471d50903fada8772e6ef7b7b51d797a222d55676b2b094fd360d31d34a5f` |
| 30 | `theorem` | [sInf_add_zsmul_le_integral_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/sinf-add-zsmul-le-integral-of-pos--82009371957d0a7121e0d086.md) | 345 | `result-track:82009371957d0a7121e0d086906a9a9f956b9bd7ddb9626fe14746e5571f7df6` |
| 31 | `theorem` | [integral_le_sSup_add_zsmul_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/integral-le-ssup-add-zsmul-of-pos--f07f237606f6ed546c2f305c.md) | 362 | `result-track:f07f237606f6ed546c2f305c37b750410be674393b8fd7b5cb5623340b6115ce` |
| 32 | `theorem` | [tendsto_atTop_intervalIntegral_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/tendsto-attop-intervalintegral-of-pos--174e361e64a00fbee455b3e4.md) | 378 | `result-track:174e361e64a00fbee455b3e4f38ae231e2d6c5163445b061424203357636a93b` |
| 33 | `theorem` | [tendsto_atBot_intervalIntegral_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/tendsto-atbot-intervalintegral-of-pos--ec40b03dfd64ed5e4b34a7cb.md) | 388 | `result-track:ec40b03dfd64ed5e4b34a7cb0a1ecaf4e90df62e79a381a14b6cda04abffe7d2` |
| 34 | `theorem` | [tendsto_atTop_intervalIntegral_of_pos'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/tendsto-attop-intervalintegral-of-pos--3983bd88ac3009dcc4c493d9.md) | 398 | `result-track:3983bd88ac3009dcc4c493d993cb99557513fb6b2d110aeebfc02ae485c75c65` |
| 35 | `theorem` | [tendsto_atBot_intervalIntegral_of_pos'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/declarations/tendsto-atbot-intervalintegral-of-pos--c4abaa2674e7daffff41b216.md) | 405 | `result-track:c4abaa2674e7daffff41b21686d6f9d2dd129095572b6e28ef7bee0de5246b55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
