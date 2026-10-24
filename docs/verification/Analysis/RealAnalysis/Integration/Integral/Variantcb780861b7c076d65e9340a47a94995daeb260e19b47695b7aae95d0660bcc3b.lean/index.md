# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15120f67a0852374a3c7892571e950caa92ca4fa",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15120f67a0852374a3c7892571e950caa92ca4fa`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Prod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurableSet_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/measurableset-integrable--0a2ff547cf9144059eb92aa5.md) | 64 | `result-track:0a2ff547cf9144059eb92aa56245bd3a842f8ff43f28844f510db9534039fda0` |
| 2 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/measuretheory-stronglymeasurable-integral-prod-right--2efaacd0d375a03ac7efaf89.md) | 77 | `result-track:2efaacd0d375a03ac7efaf89198dc4a48a70d14b64a81c7b67a3cc3345db58f9` |
| 3 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/measuretheory-stronglymeasurable-integral-prod-right--246550e6268d5a2ea761a73c.md) | 125 | `result-track:246550e6268d5a2ea761a73c8ae4b3a2d8b1b338724b1abe4adb5af1e7236b4d` |
| 4 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/measuretheory-stronglymeasurable-integral-prod-left--62d9365ee5561718ed6ef58b.md) | 133 | `result-track:62d9365ee5561718ed6ef58ba422c9f3ed699fb15644ebc64a787890eb722792` |
| 5 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/measuretheory-stronglymeasurable-integral-prod-left--4b9bc258804cc01f100a3bd4.md) | 140 | `result-track:4b9bc258804cc01f100a3bd46a22383f883ba4e9c185c6d1a2e100a8379f7964` |
| 6 | `theorem` | [integrable_measure_prod_mk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-measure-prod-mk-left--e3d94d0a72d66ee182bbd748.md) | 156 | `result-track:e3d94d0a72d66ee182bbd74888bdd4be8faf7fa4cef5598ef575cbf4bded0209` |
| 7 | `theorem` | [MeasureTheory.AEStronglyMeasurable.prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/measuretheory-aestronglymeasurable-prod-swap--d89618aedf04c965f36acd88.md) | 178 | `result-track:d89618aedf04c965f36acd883dfd73d1495bb0f53fae00720622b6c171b9c6e8` |
| 8 | `theorem` | [MeasureTheory.AEStronglyMeasurable.fst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/measuretheory-aestronglymeasurable-fst--4a0ebbef66c67ad087dcbf6d.md) | 185 | `result-track:4a0ebbef66c67ad087dcbf6d6dc193bf7ea1a4f6d71fa6c3d094c420d65289d1` |
| 9 | `theorem` | [MeasureTheory.AEStronglyMeasurable.snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/measuretheory-aestronglymeasurable-snd--c0e386e6760e163cf5a3d4da.md) | 190 | `result-track:c0e386e6760e163cf5a3d4da8817f7f9317186c3fd63d4176f8ddf2a31f20417` |
| 10 | `theorem` | [MeasureTheory.AEStronglyMeasurable.integral_prod_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/measuretheory-aestronglymeasurable-integral-prod-right--1ec6f0eab0c9c719b07222f7.md) | 197 | `result-track:1ec6f0eab0c9c719b07222f7958157943320d3616f441025210d9d38b1d019d5` |
| 11 | `theorem` | [MeasureTheory.AEStronglyMeasurable.prod_mk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/measuretheory-aestronglymeasurable-prod-mk-left--dffab87954fcad6fffd21f92.md) | 204 | `result-track:dffab87954fcad6fffd21f9263818257ad28c03a03d8e6c8e0b795f978c7bb97` |
| 12 | `theorem` | [Integrable.swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-swap--1b8d4b29c6615be0bcf3a999.md) | 223 | `result-track:1b8d4b29c6615be0bcf3a99915b9522864deb7f4b2483ece4568a0988f9cfcf7` |
| 13 | `theorem` | [integrable_swap_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-swap-iff--00b1328e3c39ccee19067c24.md) | 229 | `result-track:00b1328e3c39ccee19067c241db0d5e92dc0215ced9b0d6ce409629688ad91a4` |
| 14 | `theorem` | [hasFiniteIntegral_prod_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/hasfiniteintegral-prod-iff--f71ab84055ba697b32d8475d.md) | 234 | `result-track:f71ab84055ba697b32d8475d9f6635c3d8b74db68ec061ffafdb6c8326fbf1c9` |
| 15 | `theorem` | [hasFiniteIntegral_prod_iff'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/hasfiniteintegral-prod-iff--c5e41d2746c447e4e1158916.md) | 255 | `result-track:c5e41d2746c447e4e1158916180722d1ec5e5adb90ee2fc890f02e8739064280` |
| 16 | `theorem` | [integrable_prod_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-prod-iff--ea98bce8ab3f05e75f57dc13.md) | 273 | `result-track:ea98bce8ab3f05e75f57dc13c67fb5aa4e51a77b209c7f24ce3f49ee47ea062d` |
| 17 | `theorem` | [integrable_prod_iff'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-prod-iff--1af544b9b9ce8f216db51f51.md) | 282 | `result-track:1af544b9b9ce8f216db51f5196469e1020039199b39010e866a51160bd232d42` |
| 18 | `theorem` | [Integrable.prod_left_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-prod-left-ae--f83c4217ceeae93b15818e43.md) | 290 | `result-track:f83c4217ceeae93b15818e4311d5984b9982cd35855f92c20b89e342708e0bf0` |
| 19 | `theorem` | [Integrable.prod_right_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-prod-right-ae--ce3e501fd6f54047d4f880d0.md) | 295 | `result-track:ce3e501fd6f54047d4f880d08659aab814feafe7a40f502195ace009cac35cab` |
| 20 | `theorem` | [Integrable.integral_norm_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-integral-norm-prod-left--33694676667891e4cb874fbe.md) | 300 | `result-track:33694676667891e4cb874fbea99b5d9f78ff7e97a0b22d794b9fa049bf869f1e` |
| 21 | `theorem` | [Integrable.integral_norm_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-integral-norm-prod-right--dee27523e11adf519e96aa61.md) | 305 | `result-track:dee27523e11adf519e96aa61ff78ed53ba8b7a175248f11f0790a1781b3b80f1` |
| 22 | `theorem` | [integrable_prod_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-prod-mul--5c4f51bdc0a0e0cc7625d191.md) | 310 | `result-track:5c4f51bdc0a0e0cc7625d19128bb3b54f43aa1b993c76dd5497d6655500c9908` |
| 23 | `theorem` | [Integrable.integral_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-integral-prod-left--b0479df4cbe2310611cd0f6b.md) | 322 | `result-track:b0479df4cbe2310611cd0f6b189002826280796287aa41fc2ce70be2ab31a904` |
| 24 | `theorem` | [Integrable.integral_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integrable-integral-prod-right--d7c7c7af84e099c6b9b7c7d5.md) | 332 | `result-track:d7c7c7af84e099c6b9b7c7d50522aec1da459b081dbc85352f6220b84a53be6c` |
| 25 | `theorem` | [integral_prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-prod-swap--81d3347962513978c5dd0c59.md) | 342 | `result-track:81d3347962513978c5dd0c59ccfcac3819c5d1cca768bcce809123e5a02eb350` |
| 26 | `theorem` | [integral_fn_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-fn-integral-add--a20f8565f884b928dbf5da34.md) | 355 | `result-track:a20f8565f884b928dbf5da34c8b4b5085b1ca9a7c7700b0d8cf73a4765618180` |
| 27 | `theorem` | [integral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-fn-integral-sub--28e62572c7730cfe0a7e1718.md) | 366 | `result-track:28e62572c7730cfe0a7e1718c0fc40a49deb5bad3f9c71bcc8268bcda741a555` |
| 28 | `theorem` | [lintegral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/lintegral-fn-integral-sub--9627c076cc6e76f1ff187e87.md) | 377 | `result-track:9627c076cc6e76f1ff187e875015d0a96f0532874b80bf544e232dc04286608e` |
| 29 | `theorem` | [integral_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-integral-add--9b68d9bcaa0875674424fbd4.md) | 387 | `result-track:9b68d9bcaa0875674424fbd462ccd25213a7d993a222f336fe8e4d02e04d61f8` |
| 30 | `theorem` | [integral_integral_add'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-integral-add--fd7330bbb1b1c3df06e61fd4.md) | 396 | `result-track:fd7330bbb1b1c3df06e61fd47c4f47ad2d57f5e4470b7b993c9206f4d1fad13f` |
| 31 | `theorem` | [integral_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-integral-sub--3f64cc9b10df884d243951da.md) | 403 | `result-track:3f64cc9b10df884d243951da996ad82ddb3de2a4e0b29f461bf651f1c1928c67` |
| 32 | `theorem` | [integral_integral_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-integral-sub--c5f6d0143893a2d917bd37be.md) | 412 | `result-track:c5f6d0143893a2d917bd37bea16e9d2a185f19620427e6e4bb61254cdcf73c90` |
| 33 | `theorem` | [continuous_integral_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/continuous-integral-integral--0e298dd2f235ac17717e854b.md) | 419 | `result-track:0e298dd2f235ac17717e854bf92d50766de882584b21437a07674e055db513b5` |
| 34 | `theorem` | [integral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-prod--408f9e0f421e1a4c0a301271.md) | 453 | `result-track:408f9e0f421e1a4c0a301271d1069560bf696eeb22ee3e8297d01a89d4fe38ab` |
| 35 | `theorem` | [integral_prod_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-prod-symm--74c732581c589582b652e57b.md) | 478 | `result-track:74c732581c589582b652e57ba7c5908280f7820ed25da29de0c6a89660d54d2b` |
| 36 | `theorem` | [integral_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-integral--62e20785deda692ef853da1a.md) | 484 | `result-track:62e20785deda692ef853da1a388c725f1d13b0c297e9648d78adc94c4ccca901` |
| 37 | `theorem` | [integral_integral_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-integral-symm--fd5c6599cafcc0961e0e6b12.md) | 490 | `result-track:fd5c6599cafcc0961e0e6b124d18fe53a463c3e3f66f2253d9dfeea10b7df84e` |
| 38 | `theorem` | [integral_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-integral-swap--7a224933480c6ac16c4669b6.md) | 496 | `result-track:7a224933480c6ac16c4669b693c91c1b4ba5ad6f538c8b8eaba7f23044bf4ca5` |
| 39 | `theorem` | [set_integral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/set-integral-prod--e0faf825ae1ba3f6eba2798f.md) | 502 | `result-track:e0faf825ae1ba3f6eba2798f08f6b3a3829e455ecd9eaea9e829d307430a6c35` |
| 40 | `theorem` | [integral_prod_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/integral-prod-mul--3a2f72f3f436161da5ce6401.md) | 509 | `result-track:3a2f72f3f436161da5ce6401af8cc7277022efe84c2ee27e0709410593709f86` |
| 41 | `theorem` | [set_integral_prod_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/declarations/set-integral-prod-mul--989004703045ee0828e64a99.md) | 520 | `result-track:989004703045ee0828e64a9979d56941150374aede869b869ff6969424d8767b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
