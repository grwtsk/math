# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mate.Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2484df9419329193a4be3e527158a0826c4f286e",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2484df9419329193a4be3e527158a0826c4f286e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/mateequiv--98888248bbbb3954f8528489.md) | 69 | `declaration-track:98888248bbbb3954f85284897facf0c02f333190c4eaf7923628c180f1b2cc20` |
| 2 | `def` | [leftAdjointSquare.vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/leftadjointsquare-vcomp--9e2c7d4b2cb5b6d13491a146.md) | 130 | `declaration-track:9e2c7d4b2cb5b6d13491a1461d8ba839e9e57dc638080f21a3a1f4224a496b14` |
| 3 | `def` | [rightAdjointSquare.vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/rightadjointsquare-vcomp--a0951d6c26455add4e1f6f94.md) | 135 | `declaration-track:a0951d6c26455add4e1f6f9433413a22937052ab7d251f4797ddfc240f184097` |
| 4 | `theorem` | [mateEquiv_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/mateequiv-vcomp--ea1ab32030f6a38ef03c41a8.md) | 140 | `result-track:ea1ab32030f6a38ef03c41a8d864269c3dc07f7829036d47556e2d4babf98da2` |
| 5 | `def` | [leftAdjointSquare.hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/leftadjointsquare-hcomp--2b66f2045aa1d75f2aa70bb2.md) | 187 | `declaration-track:2b66f2045aa1d75f2aa70bb252523b880ee9d4f12527a1fe26bcaf9adfdb48de` |
| 6 | `def` | [rightAdjointSquare.hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/rightadjointsquare-hcomp--5cacd04e4d7c23a844431e5c.md) | 192 | `declaration-track:5cacd04e4d7c23a844431e5cdb858d825f43d0cd07de07944e524b1896eee42a` |
| 7 | `theorem` | [mateEquiv_hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/mateequiv-hcomp--7130021899619bbf28f391d8.md) | 197 | `result-track:7130021899619bbf28f391d8fcaca9e0b023ef554495c1f48aed299c53546de8` |
| 8 | `def` | [leftAdjointSquare.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/leftadjointsquare-comp--7bd2f0209ca7f7650af91504.md) | 235 | `declaration-track:7bd2f0209ca7f7650af91504846b36ecc9f11b0e56f31c477ad357c8020fa83f` |
| 9 | `theorem` | [leftAdjointSquare.comp_vhcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/leftadjointsquare-comp-vhcomp--236f500c4a7ffce5fa10ae99.md) | 239 | `result-track:236f500c4a7ffce5fa10ae99eaa0d9efe71eef5ef07473090e53124d7b2884bc` |
| 10 | `theorem` | [leftAdjointSquare.comp_hvcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/leftadjointsquare-comp-hvcomp--2690e12d9d9663e02bd2fcda.md) | 242 | `result-track:2690e12d9d9663e02bd2fcdaf218acf661e54b64c02df8ff372d3acef063f4dd` |
| 11 | `def` | [rightAdjointSquare.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/rightadjointsquare-comp--4ddd867b9d970a8d2a560da5.md) | 262 | `declaration-track:4ddd867b9d970a8d2a560da588dee51393448c913a46ce2882c0aa289e03013b` |
| 12 | `theorem` | [rightAdjointSquare.comp_vhcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/rightadjointsquare-comp-vhcomp--899b546071d4a4062a9d3338.md) | 266 | `result-track:899b546071d4a4062a9d3338880e7e04cd5199a676e72a3cc9a1f8368f429fcd` |
| 13 | `theorem` | [rightAdjointSquare.comp_hvcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/rightadjointsquare-comp-hvcomp--ff48c83aed56a85651d93be3.md) | 269 | `result-track:ff48c83aed56a85651d93be3283eb36d61668d9f2dba93c551840f5a6ef646bf` |
| 14 | `theorem` | [mateEquiv_square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/mateequiv-square--48c6baaa80742470f4221631.md) | 284 | `result-track:48c6baaa80742470f4221631a59d533b9688e619adb0b793a94b7b4ce8e74dfe` |
| 15 | `def` | [conjugateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv--ce37aa2e395b4d435a823ac0.md) | 316 | `declaration-track:ce37aa2e395b4d435a823ac03b388d088102cfd2d6afaf5fd6d04a09b310da45` |
| 16 | `theorem` | [conjugateEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-apply--4948b4ab59ec345a453fde1b.md) | 322 | `result-track:4948b4ab59ec345a453fde1bf4056c486b7f40b03cce5d961485f7d7634b0235` |
| 17 | `theorem` | [conjugateEquiv_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-apply--b264aed94cdfd1a4aa34e689.md) | 327 | `result-track:b264aed94cdfd1a4aa34e6896ac3a2d26b77aa979f4aa8aa4ed23dcafd441f73` |
| 18 | `theorem` | [conjugateEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-symm-apply--a021af16805e6eaaefc8618e.md) | 334 | `result-track:a021af16805e6eaaefc8618ef91f18647e4dd14aa4a9c167883b0baaecb76ed9` |
| 19 | `theorem` | [conjugateEquiv_symm_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-symm-apply--ffe4c274c5ce323381f13796.md) | 339 | `result-track:ffe4c274c5ce323381f13796ae2719beca1d9e928573f8e55409f8d70f17fef8` |
| 20 | `theorem` | [conjugateEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-id--b053a2d83476e3944907399f.md) | 347 | `result-track:b053a2d83476e3944907399fc532976a9f73f441498268ae8a25ef59598c8d53` |
| 21 | `theorem` | [conjugateEquiv_symm_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-symm-id--fc7f2c0673a38935060a9610.md) | 357 | `result-track:fc7f2c0673a38935060a9610c933f94c61b0b831e89b367823e02e4a624f52b4` |
| 22 | `theorem` | [conjugateEquiv_adjunction_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-adjunction-id--728ac7ddf47ba570c778dc3e.md) | 360 | `result-track:728ac7ddf47ba570c778dc3e2361a8b1cda0790b4119bb5364e63d1500578c9e` |
| 23 | `theorem` | [conjugateEquiv_adjunction_id_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-adjunction-id-symm--4b3c3164fb0a173c3b377a24.md) | 365 | `result-track:4b3c3164fb0a173c3b377a2419decca3696f33c366496a29adeefdffed193cc0` |
| 24 | `theorem` | [conjugateEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-comp--47ed192d961de528f7d4090b.md) | 378 | `result-track:47ed192d961de528f7d4090ba0a4ff1870d7c088b0a182f9322a58e942cc8fbf` |
| 25 | `theorem` | [conjugateEquiv_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-symm-comp--b11da8ffab72c32f97023301.md) | 395 | `result-track:b11da8ffab72c32f970233018048b84f09b2d22908a1978079c7f2c625db3a84` |
| 26 | `theorem` | [conjugateEquiv_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-comm--1d59841cbd7a50e7c9ac8a60.md) | 401 | `result-track:1d59841cbd7a50e7c9ac8a6035cef2217858ccf30f1b2492158b119eb85b4306` |
| 27 | `theorem` | [conjugateEquiv_symm_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-symm-comm--a69fc64d6a7ca93f0f308f74.md) | 405 | `result-track:a69fc64d6a7ca93f0f308f7431f5975ccd657799616931f190e7d9ed89f85b67` |
| 28 | `instance` | [conjugateEquiv_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-iso--46d775a1e2e4ba77b3b3c229.md) | 420 | `declaration-track:46d775a1e2e4ba77b3b3c2298602671ac12340795d40fe7643128d901645b4c3` |
| 29 | `instance` | [conjugateEquiv_symm_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-symm-iso--af862e7dd3c915fdf2ebef48.md) | 428 | `declaration-track:af862e7dd3c915fdf2ebef4801c2fcf1e484430b9c16d7826cfb2bcc515cb658` |
| 30 | `theorem` | [conjugateEquiv_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-of-iso--d43e7aae217b85ebb6fcc0b4.md) | 436 | `result-track:d43e7aae217b85ebb6fcc0b43bf57e6f5edc4bfdc15892b92f2ae9f9314ae82d` |
| 31 | `theorem` | [conjugateEquiv_symm_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-symm-of-iso--8d26b0d1ba21e9e77dce681e.md) | 446 | `result-track:8d26b0d1ba21e9e77dce681ea20efe575d884a357222a95e37a012e179ed6c83` |
| 32 | `def` | [conjugateIsoEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateisoequiv--b8afce71272af9a7354223d1.md) | 454 | `declaration-track:b8afce71272af9a7354223d1eb2efd8ef6b87465e497aa0b280e525dbb5e3084` |
| 33 | `theorem` | [iterated_mateEquiv_conjugateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/iterated-mateequiv-conjugateequiv--ddbcc355c96a1568db6f6c12.md) | 494 | `result-track:ddbcc355c96a1568db6f6c120c0ba7938cd074a523bbe819281d16d95bad2dfb` |
| 34 | `theorem` | [iterated_mateEquiv_conjugateEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/iterated-mateequiv-conjugateequiv-symm--839c087ce0f1efa39f312247.md) | 500 | `result-track:839c087ce0f1efa39f31224704b58e35adcac4838a7782ac2d4ac121e7907682` |
| 35 | `def` | [leftAdjointSquareConjugate.vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/leftadjointsquareconjugate-vcomp--4aeaeee19fd21c35967aefb6.md) | 516 | `declaration-track:4aeaeee19fd21c35967aefb64635480a8cbe5c6278e859c60dcb6451142f9dfc` |
| 36 | `def` | [rightAdjointSquareConjugate.vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/rightadjointsquareconjugate-vcomp--4c2746f0e1b0dea7b7d4c644.md) | 521 | `declaration-track:4c2746f0e1b0dea7b7d4c644c86ac752bb5257c33a5b9f1a7c7e2a33cd8da2ee` |
| 37 | `theorem` | [mateEquiv_conjugateEquiv_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/mateequiv-conjugateequiv-vcomp--4f32b8b97c70eaaa52b15e94.md) | 526 | `result-track:4f32b8b97c70eaaa52b15e94c0c42053c1717a45ce14b0cbd29d97354e41a156` |
| 38 | `def` | [leftAdjointConjugateSquare.vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/leftadjointconjugatesquare-vcomp--fb9b1274a6b2c836017dfb77.md) | 554 | `declaration-track:fb9b1274a6b2c836017dfb77f5db4e6e227be15aaff84196edefa095763036c3` |
| 39 | `def` | [rightAdjointConjugateSquare.vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/rightadjointconjugatesquare-vcomp--6204163b6216a41559c99512.md) | 559 | `declaration-track:6204163b6216a41559c99512c1c00302eea76e8dd1e1ac334923759a05dc26d1` |
| 40 | `theorem` | [conjugateEquiv_mateEquiv_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/declarations/conjugateequiv-mateequiv-vcomp--13ab545f0871ec4eccde147f.md) | 564 | `result-track:13ab545f0871ec4eccde147f859bab275fc908cdb388e09b9fced3bb36030f51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
