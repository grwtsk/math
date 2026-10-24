# Verification target: GRWTSK.Analysis.Inverse.Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4002faa92ad69e93264c02064e7a1f74a0447741",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4002faa92ad69e93264c02064e7a1f74a0447741`.

Source path: `GRWTSK/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Composition` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftInv](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/leftinv--8b16d753f47f9d3115d6a460.md) | 57 | `declaration-track:8b16d753f47f9d3115d6a46012d1bcdd2c009cd1bfc4eea5885fccd07aeff2d9` |
| 2 | `theorem` | [leftInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/leftinv-coeff-zero--2dc3bf3dd64874ccb02f4d0b.md) | 69 | `result-track:2dc3bf3dd64874ccb02f4d0be98d20be48517fb05c941a111d66df2ed2b4a53b` |
| 3 | `theorem` | [leftInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/leftinv-coeff-one--8147651e892bf21045f6020c.md) | 74 | `result-track:8147651e892bf21045f6020ca821691f1c9a8dd5b77f991361bc41e4841b3742` |
| 4 | `theorem` | [leftInv_removeZero](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/leftinv-removezero--aad2f357534f0945c8d105af.md) | 80 | `result-track:aad2f357534f0945c8d105af0586a25ead50b67c7752eb0c91d90157ce1aceb9` |
| 5 | `theorem` | [leftInv_comp](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/leftinv-comp--bfe942956f45f0b0488c728a.md) | 98 | `result-track:bfe942956f45f0b0488c728af46b5b51150006757023b4b5f39b6f8cad9be300` |
| 6 | `def` | [rightInv](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/rightinv--0683198566c968ae24ba8623.md) | 168 | `declaration-track:0683198566c968ae24ba862356224558dcc3bfd21ed7519262abd5065f54a82e` |
| 7 | `theorem` | [rightInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/rightinv-coeff-zero--65c979318297812bd8ac634d.md) | 178 | `result-track:65c979318297812bd8ac634d178f7244e290e63f502f341c5701fae850a85ca5` |
| 8 | `theorem` | [rightInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/rightinv-coeff-one--adfd4a078fa7f4fa1516b785.md) | 183 | `result-track:adfd4a078fa7f4fa1516b785d057957f679aa8275cb88d3f9a9df69c4670ffcb` |
| 9 | `theorem` | [rightInv_removeZero](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/rightinv-removezero--43136d1265b2b2b919ffb518.md) | 189 | `result-track:43136d1265b2b2b919ffb518ef4034c6ace54c81fcc2968b29112219b5815f74` |
| 10 | `theorem` | [comp_rightInv_aux1](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/comp-rightinv-aux1--5cb057cd505ff8c70f7a6e82.md) | 203 | `result-track:5cb057cd505ff8c70f7a6e82939bbe066442ef292fb704f9c063f7b4a5ef1eaa` |
| 11 | `theorem` | [comp_rightInv_aux2](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/comp-rightinv-aux2--b0f1f0b66cd05ea7e49c3e54.md) | 232 | `result-track:b0f1f0b66cd05ea7e49c3e54ae3c01c00bb733cc338f71a38941ed75dd3bdbcd` |
| 12 | `theorem` | [comp_rightInv](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/comp-rightinv--c9e9145aa66ab6fc7a97d79c.md) | 249 | `result-track:c9e9145aa66ab6fc7a97d79c167a476734fad40d742a21868bc90bf0606a0beb` |
| 13 | `theorem` | [rightInv_coeff](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/rightinv-coeff--59a7fb3dfe4ef2d059cb291e.md) | 266 | `result-track:59a7fb3dfe4ef2d059cb291e59d3c8c254e51dbe945b7f87d180400b1f4bccc2` |
| 14 | `theorem` | [leftInv_eq_rightInv_aux](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/leftinv-eq-rightinv-aux--a5a8fd0c838ed89198831f81.md) | 286 | `result-track:a5a8fd0c838ed89198831f81f84766b1c85c3eac46919333d9df5157704df662` |
| 15 | `theorem` | [leftInv_eq_rightInv](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/leftinv-eq-rightinv--21e1b39939d709dda12728fa.md) | 299 | `result-track:21e1b39939d709dda12728fa08dac3e09fd464627b71140635199dfae0d774a0` |
| 16 | `theorem` | [radius_right_inv_pos_of_radius_pos_aux1](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/radius-right-inv-pos-of-radius-pos-aux1--521fe43493b035bdb758c8b2.md) | 380 | `result-track:521fe43493b035bdb758c8b2e999ac227394422005a8450004e5b4f8e4b67872` |
| 17 | `theorem` | [radius_rightInv_pos_of_radius_pos_aux2](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/radius-rightinv-pos-of-radius-pos-aux2--7a92baecec14ae202e3989c3.md) | 444 | `result-track:7a92baecec14ae202e3989c3fdcab17fa28a1024918866f4f2b89b319fb39223` |
| 18 | `theorem` | [radius_rightInv_pos_of_radius_pos](../../../../mathematics/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/declarations/radius-rightinv-pos-of-radius-pos--ddadf0884c657e990395fda9.md) | 505 | `result-track:ddadf0884c657e990395fda9ddaa9d44fd4f6dd2657363f7118889987b915f66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
