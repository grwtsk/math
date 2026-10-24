# Verification target: GRWTSK.Analysis.MeasureTheory.CondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ffe65e35990384bf00c3bd697b65a647e3246dc",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ffe65e35990384bf00c3bd697b65a647e3246dc`.

Source path: `GRWTSK/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Disintegration` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/instance--8117f045c49e6ea00bc03e78.md) | 67 | `declaration-track:8117f045c49e6ea00bc03e78356a5ddff0ee88a1cda07f2611faa7c217b4f861` |
| 2 | `theorem` | [measurable_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/measurable-conddistrib--859b7f98fcdc1d6b0646be9c.md) | 74 | `result-track:859b7f98fcdc1d6b0646be9cfea82d960ef47115940635e08be8969b23cb811b` |
| 3 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.ae_integrable_condDistrib_map_iff](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-aestronglymeasurable-ae-integrable-conddistrib-map-if--b81bee631b61660d5b400c49.md) | 79 | `result-track:b81bee631b61660d5b400c496af8fa41aeb519f3abe5b8d239669ed046ae1ac3` |
| 4 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_condDistrib_map](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-aestronglymeasurable-integral-conddistrib-map--0e14ad72af7c04f4576597c9.md) | 89 | `result-track:0e14ad72af7c04f4576597c9a5444fcbe5ed2d9dc0803e779d49f44d337c4d06` |
| 5 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-aestronglymeasurable-integral-conddistrib--7e652407d6b3b0c5fad97eff.md) | 95 | `result-track:7e652407d6b3b0c5fad97eff9720311a8f294787240affc538a1c2c50b365743` |
| 6 | `theorem` | [aestronglyMeasurable'_integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/aestronglymeasurable-integral-conddistrib--d1beca29a219768d12e8174b.md) | 101 | `result-track:d1beca29a219768d12e8174bae2fffdb6a784e0067d14f46fce7b8c4c64ff8ba` |
| 7 | `theorem` | [integrable_toReal_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/integrable-toreal-conddistrib--32838753862b00da83f7400e.md) | 111 | `result-track:32838753862b00da83f7400e5e56877c93a57c2a202a2ae4f253c4191ac672ae` |
| 8 | `theorem` | [_root_.MeasureTheory.Integrable.condDistrib_ae_map](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-integrable-conddistrib-ae-map--eb4cf9d33211cbbecd253da6.md) | 122 | `result-track:eb4cf9d33211cbbecd253da664c3d4e5cdd2450c25c419401d222c287fb6afa3` |
| 9 | `theorem` | [_root_.MeasureTheory.Integrable.condDistrib_ae](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-integrable-conddistrib-ae--d49051f976a59b9f2b6c07b5.md) | 128 | `result-track:d49051f976a59b9f2b6c07b5dd40caf04d5f0f111b3cc63c1c9f621468dace4a` |
| 10 | `theorem` | [_root_.MeasureTheory.Integrable.integral_norm_condDistrib_map](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-integrable-integral-norm-conddistrib-map--6fe488af5763f96e02002ced.md) | 134 | `result-track:6fe488af5763f96e02002cedae49aa90c52963f92b3b6e617ff92483a5f6d27a` |
| 11 | `theorem` | [_root_.MeasureTheory.Integrable.integral_norm_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-integrable-integral-norm-conddistrib--bbf04b9d5fa3e338c8dec21d.md) | 140 | `result-track:bbf04b9d5fa3e338c8dec21d59b0776940505f5c311fbbbcf5b53fcd049fe347` |
| 12 | `theorem` | [_root_.MeasureTheory.Integrable.norm_integral_condDistrib_map](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-integrable-norm-integral-conddistrib-map--8d90acdb3ca7fba419f0bea0.md) | 148 | `result-track:8d90acdb3ca7fba419f0bea09f20141159db7cd8b51bee8e746c2da17dc998df` |
| 13 | `theorem` | [_root_.MeasureTheory.Integrable.norm_integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-integrable-norm-integral-conddistrib--051c5a1d368da8821004e992.md) | 154 | `result-track:051c5a1d368da8821004e99239c0ce3aa4dca8e495fde4fa19f7e216c5f394a9` |
| 14 | `theorem` | [_root_.MeasureTheory.Integrable.integral_condDistrib_map](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-integrable-integral-conddistrib-map--5e4e3140df79b7cda85dcc50.md) | 160 | `result-track:5e4e3140df79b7cda85dcc508ac90bfcc23ef1d920427e82b006934069ef0902` |
| 15 | `theorem` | [_root_.MeasureTheory.Integrable.integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-integrable-integral-conddistrib--fd7f88eb15dcf0b59df5b4a3.md) | 167 | `result-track:fd7f88eb15dcf0b59df5b4a37e9b58a8262f8b7b7b4a7a4a5ac11ca986b58467` |
| 16 | `theorem` | [set_lintegral_preimage_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/set-lintegral-preimage-conddistrib--22249a342820b41e2bf037e4.md) | 175 | `result-track:22249a342820b41e2bf037e421a7824de8a2e9bee7d3fc22cfa76c187af77886` |
| 17 | `theorem` | [set_lintegral_condDistrib_of_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/set-lintegral-conddistrib-of-measurableset--d32fd287842a830322e042e7.md) | 186 | `result-track:d32fd287842a830322e042e7417af19196a10b72b5681a25b471f76d6a9f3877` |
| 18 | `theorem` | [condDistrib_ae_eq_condexp](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/conddistrib-ae-eq-condexp--d90d48690befcf4ca26d3785.md) | 195 | `result-track:d90d48690befcf4ca26d37851d9f3562eebda76ab6b2d2094a448bf1a4e3070a` |
| 19 | `theorem` | [condexp_prod_ae_eq_integral_condDistrib'](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/condexp-prod-ae-eq-integral-conddistrib--9a7c3c87a05b4e8909c0a0db.md) | 211 | `result-track:9a7c3c87a05b4e8909c0a0db87ec4c3900fed1e02e434bec18140cfe81e100ce` |
| 20 | `theorem` | [condexp_prod_ae_eq_integral_condDistrib₀](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/condexp-prod-ae-eq-integral-conddistrib--3d7f7aa5e34c60e4fa41405b.md) | 236 | `result-track:3d7f7aa5e34c60e4fa41405bff7a532a9a41edf389ccc911eaf55d65f959de7e` |
| 21 | `theorem` | [condexp_prod_ae_eq_integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/condexp-prod-ae-eq-integral-conddistrib--efaf7cd7ea9329c2be96ec34.md) | 248 | `result-track:efaf7cd7ea9329c2be96ec346e10a84de7e322ec7fd88b865185df7850f5f00f` |
| 22 | `theorem` | [condexp_ae_eq_integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/condexp-ae-eq-integral-conddistrib--fb263c08f68bf60890b3d644.md) | 257 | `result-track:fb263c08f68bf60890b3d6441b1eadef7ddebe3a54ba6a0daaeee4e7d9ad24c8` |
| 23 | `theorem` | [condexp_ae_eq_integral_condDistrib'](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/condexp-ae-eq-integral-conddistrib--a1fdd8aba4bd6fd7f98c7237.md) | 266 | `result-track:a1fdd8aba4bd6fd7f98c72370062dbea30776105bf911761facc3c1d6494d553` |
| 24 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_mk](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-aestronglymeasurable-comp-snd-map-prod-mk--e66c0b62222cb719adc63bf1.md) | 275 | `result-track:e66c0b62222cb719adc63bf174eabc7a883a49abd5f49bace2a5acc636a1bf02` |
| 25 | `theorem` | [_root_.MeasureTheory.Integrable.comp_snd_map_prod_mk](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/root-measuretheory-integrable-comp-snd-map-prod-mk--b8eff8656e6a8434a64f5dc1.md) | 296 | `result-track:b8eff8656e6a8434a64f5dc16485f96301805acd9b58bdf649ec514d537a5dca` |
| 26 | `theorem` | [aestronglyMeasurable_comp_snd_map_prod_mk_iff](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/aestronglymeasurable-comp-snd-map-prod-mk-iff--c711a02bad57b2fda4823d17.md) | 309 | `result-track:c711a02bad57b2fda4823d17068088de5eaf58fc9d26c86ac9926a176da63379` |
| 27 | `theorem` | [integrable_comp_snd_map_prod_mk_iff](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/integrable-comp-snd-map-prod-mk-iff--38fcab0d80d1340949d45de3.md) | 316 | `result-track:38fcab0d80d1340949d45de3156ccf181ff4937989a1d51f78a8ea2a5e6693d6` |
| 28 | `theorem` | [condexp_ae_eq_integral_condDistrib_id](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/declarations/condexp-ae-eq-integral-conddistrib-id--d0b2aacff1f4e6f2ddc20cb8.md) | 322 | `result-track:d0b2aacff1f4e6f2ddc20cb8802b0cc6b9673d432f297a7d432c1a94389f502d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
