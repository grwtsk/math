# Verification target: GRWTSK.Analysis.MeasureTheory.Condexp.Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "742d05005989bce92e9cb9295aa56b39f1c7cd4d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `742d05005989bce92e9cb9295aa56b39f1c7cd4d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MeasureComp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.CondDistrib` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ConditionalProbability` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_id](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--9dfaef9688efefd6da6e59a4.md) | 52 | `result-track:9dfaef9688efefd6da6e59a4bed695619bf96db45336ffe19eb76dc3b9714daf` |
| 2 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.Integrable.comp_snd_map_prod_id](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--d8455cd11d5e09cb95a3183b.md) | 60 | `result-track:d8455cd11d5e09cb95a3183b0cbad6e2a96c88815b9919748191dd7aa4769870` |
| 3 | `lemma` | [condExpKernel_eq](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexpkernel-eq--7f650fed552ddc849d4ec063.md) | 88 | `result-track:7f650fed552ddc849d4ec06338a30f2cf132c4d9f82d7e3d244a094c3f3b147a` |
| 4 | `lemma` | [condExpKernel_apply_eq_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexpkernel-apply-eq-conddistrib--093e29b1321cbe5fbec69960.md) | 96 | `result-track:093e29b1321cbe5fbec699604943a11476002799fe7f0411b590913fc9cb7f64` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/instance--98ffa50f8b8288a2cbe7d423.md) | 103 | `declaration-track:98ffa50f8b8288a2cbe7d423deda6e1dbd5085714547da929ba054921245888f` |
| 6 | `lemma` | [compProd_trim_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/compprod-trim-condexpkernel--d500b4ee47c78d2d68177eb0.md) | 108 | `result-track:d500b4ee47c78d2d68177eb01add7a134641b9deadff51f820944402cc4027a9` |
| 7 | `lemma` | [condExpKernel_comp_trim](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexpkernel-comp-trim--d77cf7e87581768dedf548ce.md) | 122 | `result-track:d77cf7e87581768dedf548ce5c744a3c16e5207b2aea4c76fccb91b573afde86` |
| 8 | `theorem` | [measurable_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/measurable-condexpkernel--81c540e68576a397bc4a082f.md) | 130 | `result-track:81c540e68576a397bc4a082fc5abe8e0732fbc1a924d7b9b09b6e19ec3f4276d` |
| 9 | `theorem` | [stronglyMeasurable_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/stronglymeasurable-condexpkernel--3c7aee5c5468801a8d58a4a7.md) | 140 | `result-track:3c7aee5c5468801a8d58a4a75037d0b6cbb561cbe9758471ce7e813d17a2946c` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.StronglyMeasurable.integral_condExpKernel'](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--2594baedd8bc2ea548b22ac2.md) | 147 | `result-track:2594baedd8bc2ea548b22ac2c9f86c5f9c2a8e831c7ac6d3146c0d78ac07a8f2` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.StronglyMeasurable.integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--a3e6538d03ea78b9930cc960.md) | 154 | `result-track:a3e6538d03ea78b9930cc960c15e30e34fb5b4aa77f990394cacafd6d1bdf119` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.AEStronglyMeasurable.integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--b542eb18245dfb1429d90c09.md) | 159 | `result-track:b542eb18245dfb1429d90c09e91e9cbe6d222f2d95b12dfa466b92da08cc3fdb` |
| 13 | `theorem` | [aestronglyMeasurable_integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/aestronglymeasurable-integral-condexpkernel--c4443a9d93f3dc1163f6a08f.md) | 172 | `result-track:c4443a9d93f3dc1163f6a08f4ade2ba54407b61dee56047e504fc7ffc0ffd4c7` |
| 14 | `lemma` | [aestronglyMeasurable_trim_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/aestronglymeasurable-trim-condexpkernel--7b2d77027a22ff70f6215a21.md) | 189 | `result-track:7b2d77027a22ff70f6215a217644b5378e736c078c8c811a8bc193266f5d13d4` |
| 15 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.Integrable.condExpKernel_ae](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--8a4a2d16f6cbd2974c9d78dc.md) | 201 | `result-track:8a4a2d16f6cbd2974c9d78dc6c19593b15f91e99e61a45493b8cf920bd9e1d27` |
| 16 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.Integrable.integral_norm_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--671fab3d3e7ed3d57f196782.md) | 213 | `result-track:671fab3d3e7ed3d57f1967824e5eb75a052561d8790842e2a697a9156ed51cc7` |
| 17 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.Integrable.norm_integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--3008cab962cd4cdcff3b9a9f.md) | 225 | `result-track:3008cab962cd4cdcff3b9a9facf228a1f394c19e37022259fad7b5255311f74f` |
| 18 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.Integrable.integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--eed8acd8f947cf1c9677f391.md) | 238 | `result-track:eed8acd8f947cf1c9677f3916f5b17ccbc0feb95a67f9940bf09b70b15a4c84f` |
| 19 | `theorem` | [integrable_toReal_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/integrable-toreal-condexpkernel--925380a3e4975d2f192f9191.md) | 251 | `result-track:925380a3e4975d2f192f91910d52b4ec59cf8a0d106f7ddd5f12b9eb920139d9` |
| 20 | `lemma` | [condExpKernel_ae_eq_condExp'](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexpkernel-ae-eq-condexp--f970410e03cf6af4586651b6.md) | 262 | `result-track:f970410e03cf6af4586651b6b1f60a159baef12d0d6274d5908542dc9baa687e` |
| 21 | `lemma` | [condExpKernel_ae_eq_condExp](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexpkernel-ae-eq-condexp--9244b172345eca0931bfcfcc.md) | 276 | `result-track:9244b172345eca0931bfcfcc36231faabcc81bcb0c7901e690d688afb16ec80f` |
| 22 | `lemma` | [condExpKernel_ae_eq_trim_condExp](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexpkernel-ae-eq-trim-condexp--b916f8c4022c00e43cb07076.md) | 284 | `result-track:b916f8c4022c00e43cb070767a82322b8e446fc7e9d6eee71a6870d8f3c69300` |
| 23 | `theorem` | [condExp_ae_eq_integral_condExpKernel'](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexp-ae-eq-integral-condexpkernel--a469ef6eb44311d27457d5f2.md) | 295 | `result-track:a469ef6eb44311d27457d5f240949f738474529745be36d6b3b042e8718f0088` |
| 24 | `theorem` | [condExp_ae_eq_integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexp-ae-eq-integral-condexpkernel--39fc74f2b99d6f19cf927fd6.md) | 311 | `result-track:39fc74f2b99d6f19cf927fd6b0edbc7c729c5975ab8172a3930d4aae70b98460` |
| 25 | `theorem` | [condExp_ae_eq_trim_integral_condExpKernel_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexp-ae-eq-trim-integral-condexpkernel-of-stronglymeasurable--fdd8068d1bf9b9b2e84da772.md) | 320 | `result-track:fdd8068d1bf9b9b2e84da7722f3fffdda6618eb497ce9068de1a581330812333` |
| 26 | `theorem` | [condExp_ae_eq_trim_integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexp-ae-eq-trim-integral-condexpkernel--abc00ae12893893881305749.md) | 331 | `result-track:abc00ae1289389388130574993aca381d5fe32600e61aaab2f50add3cc5f8074` |
| 27 | `lemma` | [condExp_generateFrom_singleton](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexp-generatefrom-singleton--fea55429372be4ba004364b7.md) | 351 | `result-track:fea55429372be4ba004364b7f780a9c3cbc98dd929c99d32d626b8a1cb4435b8` |
| 28 | `lemma` | [condExp_set_generateFrom_singleton](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexp-set-generatefrom-singleton--6cf6e76a4b1f7936b428a304.md) | 384 | `result-track:6cf6e76a4b1f7936b428a304621679151612be4916e6c809d5848c99aa7cf147` |
| 29 | `lemma` | [condExpKernel_singleton_ae_eq_cond](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/declarations/condexpkernel-singleton-ae-eq-cond--e8e2f7620d3ae7f152aa28e9.md) | 392 | `result-track:e8e2f7620d3ae7f152aa28e90ec39d8c71ae1292aeb295a2a1266cdb5bfed0e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
