# Verification target: GRWTSK.Analysis.MeasureTheory.CondDistrib.Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c82bcd2c96aeab904421d9ac11eeb468e5f138b0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c82bcd2c96aeab904421d9ac11eeb468e5f138b0`.

Source path: `GRWTSK/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Disintegration` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/instance--a07ec2f065173c4fa3336707.md) | 75 | `declaration-track:a07ec2f065173c4fa3336707edfff4c6d7342dce91eece44d989cb2c15de3f91` |
| 2 | `theorem` | [measurable_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/measurable-conddistrib--5c44687e21198ee756a4228d.md) | 82 | `result-track:5c44687e21198ee756a4228d9f19bb4fdb089656c92a8a1a4bad4d4bcf9ab4d0` |
| 3 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.AEStronglyMeasurable.ae_integrable_condDistrib_map_iff](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--03ab89880079278120a998d5.md) | 87 | `result-track:03ab89880079278120a998d516a7b1136870b0b6844e7d4ba06a5636341472be` |
| 4 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.AEStronglyMeasurable.integral_condDistrib_map](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--2b06ac7a82656629cc76c12b.md) | 97 | `result-track:2b06ac7a82656629cc76c12b2ddbe8036b4242a7016abd69f182aca6e126587e` |
| 5 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.AEStronglyMeasurable.integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--245a75c7891f2b87164ee2ca.md) | 103 | `result-track:245a75c7891f2b87164ee2cafeaa54d94c6b76a70dabdc600de1c1c84ad3cc41` |
| 6 | `theorem` | [aestronglyMeasurable'_integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/aestronglymeasurable-integral-conddistrib--7b08a9b33262b3e398d3cac4.md) | 109 | `result-track:7b08a9b33262b3e398d3cac4390cd6dabc6d3bfc2b5c0daea50e65ef52766661` |
| 7 | `theorem` | [integrable_toReal_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/integrable-toreal-conddistrib--607a0a6cd3c401a4c9a171fc.md) | 119 | `result-track:607a0a6cd3c401a4c9a171fce37338388f6c012a604efe62172f5a4f0a29323e` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.condDistrib_ae_map](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--d3f2344f5bb438ac449f9bd1.md) | 130 | `result-track:d3f2344f5bb438ac449f9bd1ada397c39e53c8149bd2e59aa31a0c1e67ec15ea` |
| 9 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.condDistrib_ae](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--b5621165f0ed75b22ae7e2c9.md) | 136 | `result-track:b5621165f0ed75b22ae7e2c96883c30401505e7a2e9c85a35210ea808aa6890a` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.integral_norm_condDistrib_map](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--38b9a303243f6ad2741729c1.md) | 142 | `result-track:38b9a303243f6ad2741729c1edb099c2f862d1df977d7bd9086fff45a98f0608` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.integral_norm_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--be98adacbc1677a4917f3f02.md) | 148 | `result-track:be98adacbc1677a4917f3f027a11b46b67d2d6cadee3b8b47c4ab960c18b32de` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.norm_integral_condDistrib_map](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--269d280d355399e56d12d4a9.md) | 156 | `result-track:269d280d355399e56d12d4a9f7ce32fdf19ce2a5f40219cc04585141e10463fe` |
| 13 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.norm_integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--8e710078ac2cbb481f3f742e.md) | 162 | `result-track:8e710078ac2cbb481f3f742e36d119ec6f0adaa5e1f017d0a53676c5c2a69665` |
| 14 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.integral_condDistrib_map](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--d21c9d311cf88c9d5458362f.md) | 168 | `result-track:d21c9d311cf88c9d5458362fb87d8b94cce45497e6d8e2c1fd859d5a5866bcbe` |
| 15 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--968728a8be994ed561ab11aa.md) | 175 | `result-track:968728a8be994ed561ab11aa3e4ea76410b24aefb26f4225f0ba34af54ec4308` |
| 16 | `theorem` | [set_lintegral_preimage_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/set-lintegral-preimage-conddistrib--ff8df73633cffd155956a453.md) | 183 | `result-track:ff8df73633cffd155956a4532113dc9175da1f1c66c8167b241dd20809318f6d` |
| 17 | `theorem` | [set_lintegral_condDistrib_of_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/set-lintegral-conddistrib-of-measurableset--b1db91589cd36176664d0778.md) | 194 | `result-track:b1db91589cd36176664d0778b7ab86cacce508217837105e2099d5c92e77a226` |
| 18 | `theorem` | [condDistrib_ae_eq_condexp](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/conddistrib-ae-eq-condexp--29e18ceafe325e3f10a758bf.md) | 203 | `result-track:29e18ceafe325e3f10a758bf9c4d1c4d79baa1e9bfcfd53f43b388d088a02b57` |
| 19 | `theorem` | [condexp_prod_ae_eq_integral_condDistrib'](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/condexp-prod-ae-eq-integral-conddistrib--3c5a8d236447893feb59117a.md) | 219 | `result-track:3c5a8d236447893feb59117a14a8e52955c4428a91afaedc6c02114f0c07ed15` |
| 20 | `theorem` | [condexp_prod_ae_eq_integral_condDistrib₀](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/condexp-prod-ae-eq-integral-conddistrib--2d3a79c7209afb4610ca9e8c.md) | 244 | `result-track:2d3a79c7209afb4610ca9e8cf17495e839c2dc1fcc1de9b0dc24f81228f1d1c9` |
| 21 | `theorem` | [condexp_prod_ae_eq_integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/condexp-prod-ae-eq-integral-conddistrib--7e6b4c7bb64db39370aa0dc7.md) | 256 | `result-track:7e6b4c7bb64db39370aa0dc70a66c0dfcb2bdfacd1a1fa8da1f401ea30098c74` |
| 22 | `theorem` | [condexp_ae_eq_integral_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/condexp-ae-eq-integral-conddistrib--7a4a981145ff308cb88256a5.md) | 265 | `result-track:7a4a981145ff308cb88256a5a258607b64d3f094a4217996b929b1c7a307f72b` |
| 23 | `theorem` | [condexp_ae_eq_integral_condDistrib'](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/condexp-ae-eq-integral-conddistrib--6397f5c1ba1b57bf4b945f66.md) | 274 | `result-track:6397f5c1ba1b57bf4b945f66c00558d80dc3fa7350cdec8630f7e7fc6f9def9b` |
| 24 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_mk](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--595d3a72a6bf0895132418df.md) | 283 | `result-track:595d3a72a6bf0895132418df4eeffec07177543cbd2ff047c3f6f3939d501bcb` |
| 25 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.comp_snd_map_prod_mk](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--68ce4d7b8e491c1840fa0f45.md) | 304 | `result-track:68ce4d7b8e491c1840fa0f454fb50dd8b23b4b67ce7051683fb21cf93821a374` |
| 26 | `theorem` | [aestronglyMeasurable_comp_snd_map_prod_mk_iff](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/aestronglymeasurable-comp-snd-map-prod-mk-iff--32f308f58ad8c718e6967c06.md) | 317 | `result-track:32f308f58ad8c718e6967c068ce17363290bb7d6cb2dbb7cbc9991a6bf057e83` |
| 27 | `theorem` | [integrable_comp_snd_map_prod_mk_iff](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/integrable-comp-snd-map-prod-mk-iff--71d6a59a01621692da8e7b66.md) | 324 | `result-track:71d6a59a01621692da8e7b66beb5906ea7d80fbdbd6d190cf1bc73cf0f5e3b73` |
| 28 | `theorem` | [condexp_ae_eq_integral_condDistrib_id](../../../../../mathematics/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/declarations/condexp-ae-eq-integral-conddistrib-id--180777b72e13cd610d6a4a7d.md) | 330 | `result-track:180777b72e13cd610d6a4a7d03da73dd4445e1722e47a746c3e9ccb7eecfc0b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
