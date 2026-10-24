# Verification target: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "695ab506022bb90e9088d8e115f13642ef8322b8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `695ab506022bb90e9088d8e115f13642ef8322b8`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticalcumulativediscrepancy--fc618c004b0d5198cfecb914.md) | 31 | `declaration-track:fc618c004b0d5198cfecb91463be26adbdf5149e3d164bacbe27173cf7702d29` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancyprimitive--a6547ef3a7c6955900007c51.md) | 35 | `declaration-track:a6547ef3a7c6955900007c519de8c04350220cb1bf843e70dcd3289499c1c229` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancybridge--192c5591b597dfdfd39e0ae8.md) | 39 | `declaration-track:192c5591b597dfdfd39e0ae8b711796f57f83de538b9a69584f42c65588dfedc` |
| 4 | `theorem` | [decay_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/decay-continuous--693e7c8fb41f89825138f788.md) | 43 | `result-track:693e7c8fb41f89825138f788b743ab0918b3e1b4691357f943f22349008f37b2` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/decay-hasderivat--ef08d046a959653b846ce0e8.md) | 47 | `result-track:ef08d046a959653b846ce0e8b60bd52d4f8c690455b989c31e829b122b4ad443` |
| 6 | `theorem` | [density_mass](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/density-mass--bac8dcfe97f870258fa26453.md) | 57 | `result-track:bac8dcfe97f870258fa264536cc845d438d587337a4d18146d7c7751f12dcd5f` |
| 7 | `theorem` | [density_mass_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/density-mass-continuous--d102ba6211c9f19bc4d32856.md) | 63 | `result-track:d102ba6211c9f19bc4d328562fd263913190cbd358d533cbf4346efe3db61e98` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/prime-prefix-intervalintegrable--ae034146bb338084d710f53d.md) | 70 | `result-track:ae034146bb338084d710f53dcdd180554170a68408766e59a23c507e0b49cdaa` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticalcumulativediscrepancy-eq--bf30d970101c498278944b08.md) | 83 | `result-track:bf30d970101c498278944b085b90089cdbe1301190c12aeea2f368af097bd411` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticalcumulativediscrepancy-at-upper--451de3e860d001caec4538c0.md) | 90 | `result-track:451de3e860d001caec4538c037538c1912b780d82d2d37c2432ebf327746f468` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticalcumulativediscrepancy-at-zero--5bd4fe6d2a2985969ebe84c5.md) | 94 | `result-track:5bd4fe6d2a2985969ebe84c59dd351cab6aa16a35b13a3e4653c0fd0f92f4938` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticalcumulativediscrepancy-intervalintegrable--ff39e8c2ceead6a43c5d99c7.md) | 98 | `result-track:ff39e8c2ceead6a43c5d99c7f9ca2a2842c01e61d508cc90d671ebdd5ef7c99a` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancyprimitive-at-zero--1a06991e2cc17ad0cc36f59e.md) | 104 | `result-track:1a06991e2cc17ad0cc36f59ec00b612c846a748acdf89721bad0188be950caac` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancyprimitive-continuous--a721ea8f8b22e9d4d9e7040e.md) | 108 | `result-track:a721ea8f8b22e9d4d9e7040e923492e32149012ff08158187f5215bcc1df0bf2` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous--f9e56cb3f8d3e0cbb53707f8.md) | 112 | `result-track:f9e56cb3f8d3e0cbb53707f81fe307b8a5301c26d6cd0798d190fbc4f37f08f6` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat--15b3cd80224b894ad7e47cd3.md) | 118 | `result-track:15b3cd80224b894ad7e47cd397634d06d07ba17a27863189874ec9fbeacbf8e8` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancyprimitive-sub--5c27e753720c87b86b998cbd.md) | 127 | `result-track:5c27e753720c87b86b998cbdeaae266ce6947fa34f777398c9512f68ee20b95c` |
| 18 | `theorem` | [density_mass_integral](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/density-mass-integral--c5d3b31fe19e5899271fbd30.md) | 134 | `result-track:c5d3b31fe19e5899271fbd30b79710f8354a41c1c77d12819a99da0c5acf898a` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum--3df1c8da26b59965a801233c.md) | 155 | `result-track:3df1c8da26b59965a801233c752f7a1464d2f3beb62a137a9537ebbdcb2c0bf3` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancybridge-at-zero--1c4ba637789997a97ebfd620.md) | 177 | `result-track:1c4ba637789997a97ebfd620c2b5a916839f227f170489eb0e5da59c19bbf087` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancybridge-at-upper--64521ad81186bc84c301e79c.md) | 182 | `result-track:64521ad81186bc84c301e79c8c92a20fe4d232dc02d463b433ee8a49bb37ce32` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancybridge-continuous--c573af5d887debc6dd62f586.md) | 188 | `result-track:c573af5d887debc6dd62f5865113998258c0414625e2151ca64c68e1b9b0aaa2` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous--1c25b4a0184a477401086f32.md) | 194 | `result-track:1c25b4a0184a477401086f32e77dc8c5d53d8b8b51073cbcf554094b77835c7b` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/declarations/criticaldiscrepancybridge-ae-hasderivat--6a39fca3fab1ff49f32a07b7.md) | 202 | `result-track:6a39fca3fab1ff49f32a07b7522b5cd628c8760e6eda6b601a2b8444cf9ffd96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
