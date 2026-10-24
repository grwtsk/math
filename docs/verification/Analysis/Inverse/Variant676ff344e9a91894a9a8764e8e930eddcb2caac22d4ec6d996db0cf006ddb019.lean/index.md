# Verification target: GRWTSK.Analysis.Inverse.Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c64d69d3cc3617cbc299981ad781813f657778d4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c64d69d3cc3617cbc299981ad781813f657778d4`.

Source path: `GRWTSK/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Composition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Linear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftInv](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/leftinv--a573371f20f6f2e41572f12b.md) | 70 | `declaration-track:a573371f20f6f2e41572f12bf022b71528ffa2b252592318a99d1b959c71ca7b` |
| 2 | `theorem` | [leftInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/leftinv-coeff-zero--43806dfcf493b6e741a2139e.md) | 80 | `result-track:43806dfcf493b6e741a2139ed483d4b084068ae622b70e900a4fea19d8430176` |
| 3 | `theorem` | [leftInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/leftinv-coeff-one--e32f9f6ce9f58c8abe633df0.md) | 84 | `result-track:e32f9f6ce9f58c8abe633df06f2bd90878b778399c9e401ca574a65b9ada82a7` |
| 4 | `theorem` | [leftInv_removeZero](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/leftinv-removezero--bed7c6062116e5d85d57f7e0.md) | 89 | `result-track:bed7c6062116e5d85d57f7e0d38f2f492125b19b6469081c0410680a44033e45` |
| 5 | `theorem` | [leftInv_comp](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/leftinv-comp--ab22d2fbe678e73805265706.md) | 106 | `result-track:ab22d2fbe678e73805265706995a687a451121d3c9a62aff145de668755b1846` |
| 6 | `def` | [rightInv](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/rightinv--3ab942a419f94051513b1d08.md) | 177 | `declaration-track:3ab942a419f94051513b1d08be7d07338480fce8da73790a62befa2a392da42f` |
| 7 | `theorem` | [rightInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/rightinv-coeff-zero--7bb083d0cb4aedf3563a719b.md) | 186 | `result-track:7bb083d0cb4aedf3563a719bc3252b9f6a0cdd56542487cdd20091e9f32cc4da` |
| 8 | `theorem` | [rightInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/rightinv-coeff-one--b24fb994e568baa2918376f6.md) | 190 | `result-track:b24fb994e568baa2918376f6f1f3943e1b83444b5bd9f96b6c669e6b1b25988a` |
| 9 | `theorem` | [rightInv_removeZero](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/rightinv-removezero--29e4ac2eae8fa82451a70729.md) | 195 | `result-track:29e4ac2eae8fa82451a70729c435628a4f8913ae875edb59fa74a1f4efee4fc8` |
| 10 | `theorem` | [comp_rightInv_aux1](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/comp-rightinv-aux1--39fa5cac6c9a31011807354f.md) | 208 | `result-track:39fa5cac6c9a31011807354f75c9ca616ce6e9179bd053e73fa7b824584bcaf9` |
| 11 | `theorem` | [comp_rightInv_aux2](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/comp-rightinv-aux2--76ccb7a6f77b3de64f9fbb06.md) | 236 | `result-track:76ccb7a6f77b3de64f9fbb068295002c4d7db5d012a569838ceea3566863145f` |
| 12 | `theorem` | [comp_rightInv](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/comp-rightinv--70c7edc9647ec7213ec78e6a.md) | 252 | `result-track:70c7edc9647ec7213ec78e6a02357797ad81d8dde4721e43d70b9f726ef9cfee` |
| 13 | `theorem` | [rightInv_coeff](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/rightinv-coeff--2b36f6a096bf47c892de824b.md) | 270 | `result-track:2b36f6a096bf47c892de824b8ff459f57b548a67b5260af10081abfd1cb8932a` |
| 14 | `theorem` | [leftInv_eq_rightInv](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/leftinv-eq-rightinv--febe5ef21de9e87dc660a826.md) | 290 | `result-track:febe5ef21de9e87dc660a8269b13009d074513aa06cd32c58bc2a7b60d437497` |
| 15 | `theorem` | [radius_right_inv_pos_of_radius_pos_aux1](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/radius-right-inv-pos-of-radius-pos-aux1--a417095adafbe0e754617fc2.md) | 373 | `result-track:a417095adafbe0e754617fc255111ac74bdb0baed2bb2af04dd7e064646239ea` |
| 16 | `theorem` | [radius_rightInv_pos_of_radius_pos_aux2](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/radius-rightinv-pos-of-radius-pos-aux2--9a1a3e95d3bae746a8210508.md) | 435 | `result-track:9a1a3e95d3bae746a82105089176a02831c1b7db3418d5c8cae32e759d841af3` |
| 17 | `theorem` | [radius_rightInv_pos_of_radius_pos](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/radius-rightinv-pos-of-radius-pos--77c4a0619e2c571124b75cf8.md) | 489 | `result-track:77c4a0619e2c571124b75cf8f844c316bfc5b3fc034364ee877c5931caba4d51` |
| 18 | `theorem` | [radius_leftInv_pos_of_radius_pos](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/radius-leftinv-pos-of-radius-pos--79fb312e42ea09eb9af6b676.md) | 560 | `result-track:79fb312e42ea09eb9af6b676189c0be978bd8c1d3942b963434145f0c53f020e` |
| 19 | `lemma` | [HasFPowerSeriesAt.tendsto_partialSum_prod_of_comp](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/hasfpowerseriesat-tendsto-partialsum-prod-of-comp--bed36ec3733906944a1f12f8.md) | 575 | `result-track:bed36ec3733906944a1f12f8afbee18c1c9dfd4da1da63a4aa300f6831742344` |
| 20 | `lemma` | [HasFPowerSeriesAt.eventually_hasSum_of_comp](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/hasfpowerseriesat-eventually-hassum-of-comp--df4c100659b9cfacd3f0f68c.md) | 622 | `result-track:df4c100659b9cfacd3f0f68cd04eba67a87e81a5f6378e3bdc8b949995bc25f8` |
| 21 | `theorem` | [PartialHomeomorph.hasFPowerSeriesAt_symm](../../../../mathematics/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/declarations/partialhomeomorph-hasfpowerseriesat-symm--7bd19074bd860408c2b5b587.md) | 663 | `result-track:7bd19074bd860408c2b5b587aa9457eb2321987b077f223ef361a83783913b11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
