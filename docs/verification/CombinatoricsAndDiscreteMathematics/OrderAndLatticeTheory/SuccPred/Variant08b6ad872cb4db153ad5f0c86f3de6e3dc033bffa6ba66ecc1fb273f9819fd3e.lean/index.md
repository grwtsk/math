# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccPred.Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c1371917e59fefbe83458ad3790205fffea9ce9",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c1371917e59fefbe83458ad3790205fffea9ce9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.SuccPred` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ico_succ_left_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ico-succ-left-eq-ioo--2ed03b147be5432ad29070cc.md) | 47 | `result-track:2ed03b147be5432ad29070cc8d5a210e046aeb93f3a5d6e94f5af51b80aadf00` |
| 2 | `lemma` | [Icc_succ_left_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/icc-succ-left-eq-ioc-of-not-ismax--779c51f217bff8321f0ee23a.md) | 50 | `result-track:779c51f217bff8321f0ee23ac6bc44ad5ba11d5833b6ef633d7bdd9a94ddfed3` |
| 3 | `lemma` | [Ico_succ_right_eq_Icc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ico-succ-right-eq-icc-of-not-ismax--8d94830973e687297e8ffa19.md) | 53 | `result-track:8d94830973e687297e8ffa19ecf42c9a30671d4c3a82b42da9fc58f140b245a2` |
| 4 | `lemma` | [Ioo_succ_right_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioo-succ-right-eq-ioc-of-not-ismax--c00e0d4c47fa2e5d189c36eb.md) | 56 | `result-track:c00e0d4c47fa2e5d189c36eb2de6d75b67dbe9100e2dfabc9865b9cadeaf013d` |
| 5 | `lemma` | [Ico_succ_succ_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ico-succ-succ-eq-ioc-of-not-ismax--b7bfc54308ff0c81b44d0c2e.md) | 59 | `result-track:b7bfc54308ff0c81b44d0c2ea5e49f5c1a0e3bdfb9fe3eac2f3ad2b09f78397b` |
| 6 | `lemma` | [insert_Icc_succ_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-icc-succ-left-eq-icc--69d3ae5e7ef357f73195d91e.md) | 65 | `result-track:69d3ae5e7ef357f73195d91eb4830766872db528412855ce80771ec0890d6eb3` |
| 7 | `lemma` | [insert_Icc_right_eq_Icc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-icc-right-eq-icc-succ--09e7c312e1e9844cd42dc220.md) | 68 | `result-track:09e7c312e1e9844cd42dc22016746208589e5ddb6e36eb56662e2afc2d245b6a` |
| 8 | `lemma` | [insert_Ico_right_eq_Ico_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ico-right-eq-ico-succ-of-not-ismax--b83770587e902ed5da4398a0.md) | 74 | `result-track:b83770587e902ed5da4398a0a68f1c0cd7782be8a5421501c5e6aebc035367f7` |
| 9 | `lemma` | [insert_Ico_succ_left_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ico-succ-left-eq-ico--ef2a41bf84bc58627da60236.md) | 81 | `result-track:ef2a41bf84bc58627da602366b65b675a25cc3b8dc3c62f38b94488fb1b55535` |
| 10 | `lemma` | [insert_Ioc_right_eq_Ioc_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ioc-right-eq-ioc-succ-of-not-ismax--89d230cb3a72e769bbf7e679.md) | 84 | `result-track:89d230cb3a72e769bbf7e6798a9ca8bf7af35a08c266b64bbcbc2ab118205aef` |
| 11 | `lemma` | [insert_Ioc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ioc-succ-left-eq-ioc--b37d7fd0d1ca23217b267bea.md) | 88 | `result-track:b37d7fd0d1ca23217b267bea0973c886da65f3849770fc6054ae85265bf6398e` |
| 12 | `lemma` | [Icc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/icc-succ-left-eq-ioc--8109f24e27a1f329b56df671.md) | 99 | `result-track:8109f24e27a1f329b56df67115f387b9305e02aaaafe4ae24ad48300c097af4f` |
| 13 | `lemma` | [Ico_succ_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ico-succ-right-eq-icc--b0165d3fd1bf6ae2cfb1cb80.md) | 100 | `result-track:b0165d3fd1bf6ae2cfb1cb80616ca1a14af486cddc2e50dd29c6b95ad8f1fb11` |
| 14 | `lemma` | [Ioo_succ_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioo-succ-right-eq-ioc--64f2d2ae4049f048863807d6.md) | 101 | `result-track:64f2d2ae4049f048863807d6e32e255a76a5ff0e4f8549a1287155ebea8966fb` |
| 15 | `lemma` | [Ico_succ_succ_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ico-succ-succ-eq-ioc--2c682b357b8e5ea72e38845f.md) | 102 | `result-track:2c682b357b8e5ea72e38845f4a2fcf29821ec5df88f0703dc227b6b91c0d7f5c` |
| 16 | `lemma` | [insert_Ico_right_eq_Ico_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ico-right-eq-ico-succ--bd76fb44e45d8d8cc64e40ca.md) | 106 | `result-track:bd76fb44e45d8d8cc64e40ca11380bfb7f2bac717f30d7abf2a37266ef2709c8` |
| 17 | `lemma` | [insert_Ioc_right_eq_Ioc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ioc-right-eq-ioc-succ--c0303637b413ef91a059cc4c.md) | 112 | `result-track:c0303637b413ef91a059cc4c343ca64a1a9eb4c2c90aa4c339082ecbe22c2aea` |
| 18 | `lemma` | [Ioc_pred_right_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioc-pred-right-eq-ioo--7ac3374a98b56750faa7c304.md) | 126 | `result-track:7ac3374a98b56750faa7c3043adb801f2bd67b2b90caf2c748b1a644c54dfc51` |
| 19 | `lemma` | [Icc_pred_right_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/icc-pred-right-eq-ico-of-not-ismin--ca9129e039f8fe966c0be8c3.md) | 129 | `result-track:ca9129e039f8fe966c0be8c3e2d4fc6e7fe418115f6a801415f3b280a78bdd70` |
| 20 | `lemma` | [Ioc_pred_left_eq_Icc_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioc-pred-left-eq-icc-of-not-ismin--a6dbb0f16576e330949e7884.md) | 132 | `result-track:a6dbb0f16576e330949e7884e5a8405f84bc7b67ad6f08e45f49be3a941dd3c7` |
| 21 | `lemma` | [Ioo_pred_left_eq_Ioc_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioo-pred-left-eq-ioc-of-not-ismin--428ad154f6df527b8bee512d.md) | 135 | `result-track:428ad154f6df527b8bee512d2994437ec179e307d82fe39ff82b505aa28beb44` |
| 22 | `lemma` | [Ioc_pred_pred_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioc-pred-pred-eq-ico-of-not-ismin--2f0adfced398d8e851c6e0cc.md) | 138 | `result-track:2f0adfced398d8e851c6e0ccedaea5675f7644e65cbf9f21dc0454fe516e792f` |
| 23 | `lemma` | [insert_Icc_pred_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-icc-pred-right-eq-icc--6569b3f16c661f47841eaac8.md) | 144 | `result-track:6569b3f16c661f47841eaac85f1b8fd96cb6baa53830ce1b10cb12c665c9fc50` |
| 24 | `lemma` | [insert_Icc_left_eq_Icc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-icc-left-eq-icc-pred--5495f4e78ec165add2b133c5.md) | 147 | `result-track:5495f4e78ec165add2b133c5fa967e87f269f2273a7763d6b0736686d7820cea` |
| 25 | `lemma` | [insert_Ioc_left_eq_Ioc_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ioc-left-eq-ioc-pred-of-not-ismin--1988ad67561ce0818106f650.md) | 153 | `result-track:1988ad67561ce0818106f6509fa2d6bd629f0d321c13e8ffdfd194ab6bb5b4b0` |
| 26 | `lemma` | [insert_Ioc_pred_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ioc-pred-right-eq-ioc--e9ce61f9856ba5ea6ad76c01.md) | 160 | `result-track:e9ce61f9856ba5ea6ad76c0157f500c2d0f6240058bd8bc620749a610f10b9d7` |
| 27 | `lemma` | [insert_Ico_left_eq_Ico_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ico-left-eq-ico-pred-of-not-ismin--1876694560c1d1da14a46c2e.md) | 163 | `result-track:1876694560c1d1da14a46c2ec99c7a969fdb6f99ef10e1c774f79d0c124384ab` |
| 28 | `lemma` | [insert_Ico_pred_right_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ico-pred-right-eq-ico--9f23c0d4d0aec366311b86d7.md) | 167 | `result-track:9f23c0d4d0aec366311b86d7a089114c2a2ce72f0c56fe0ae2ecedb3b02e7aff` |
| 29 | `lemma` | [Icc_pred_right_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/icc-pred-right-eq-ico--e9324dd39c3b93bf84dd9d12.md) | 178 | `result-track:e9324dd39c3b93bf84dd9d12bb65c9d4782dbbcc9d2978b51807c0310febb557` |
| 30 | `lemma` | [Ioc_pred_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioc-pred-left-eq-icc--57832f6071fc4d98853431d8.md) | 179 | `result-track:57832f6071fc4d98853431d8bbe5243159d3d125cc5fad64a763324b52e2d39c` |
| 31 | `lemma` | [Ioo_pred_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioo-pred-left-eq-ioc--225e90ae398314fbfb5ec9d4.md) | 180 | `result-track:225e90ae398314fbfb5ec9d4f3c2d27f2ced2edd574aa172d12ffbd82e7777ba` |
| 32 | `lemma` | [Ioc_pred_pred_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioc-pred-pred-eq-ico--16bde0106d4031fd1791c7e1.md) | 181 | `result-track:16bde0106d4031fd1791c7e1cda6047f39d09b6e6e0fccfbbecbc7696eecc7bc` |
| 33 | `lemma` | [insert_Ioc_left_eq_Ioc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ioc-left-eq-ioc-pred--f0eb2f22715cf8ee6b641e08.md) | 185 | `result-track:f0eb2f22715cf8ee6b641e0820e283eeae02dfbb338038e4f7fe93d2c87e5653` |
| 34 | `lemma` | [insert_Ico_left_eq_Ico_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/insert-ico-left-eq-ico-pred--8aa4604419ae842040b3352d.md) | 191 | `result-track:8aa4604419ae842040b3352dff590e24eb7e3e582321d7b8464c747a11b0cd15` |
| 35 | `lemma` | [Icc_succ_pred_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/icc-succ-pred-eq-ioo--dd5220269ecea93a7275d7f9.md) | 199 | `result-track:dd5220269ecea93a7275d7f9b777a71ee83af13acf5613bed36696007174b7ac` |
| 36 | `lemma` | [Iio_succ_eq_Iic_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/iio-succ-eq-iic-of-not-ismax--7e5fa62d2b3df78895c3a226.md) | 213 | `result-track:7e5fa62d2b3df78895c3a226ef0e88e1ecd8c44fbd90edeeac74346da7175f81` |
| 37 | `lemma` | [Iio_succ_eq_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/iio-succ-eq-iic--268b48aebfaf8c1a03ac227a.md) | 218 | `result-track:268b48aebfaf8c1a03ac227ab268036ef086f1dec8fad5a400fb50e0b7fcd895` |
| 38 | `lemma` | [Iic_pred_eq_Iio_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/iic-pred-eq-iio-of-not-ismin--ad3e0452a933f08a85a46074.md) | 225 | `result-track:ad3e0452a933f08a85a4607460dc81351a7d1a1844447320ce4057ef34632256` |
| 39 | `lemma` | [Iic_pred_eq_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/iic-pred-eq-iio--005af367226374eb47f243fe.md) | 230 | `result-track:005af367226374eb47f243fe1f302c09553a335aad733cad0bfb5e2e3b340dfe` |
| 40 | `lemma` | [Ici_succ_eq_Ioi_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ici-succ-eq-ioi-of-not-ismax--e971f840b57191ffb65f95f7.md) | 243 | `result-track:e971f840b57191ffb65f95f7ed55417a580428f35124f1945de3d41bbfec048b` |
| 41 | `lemma` | [Ici_succ_eq_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ici-succ-eq-ioi--53271f29f02c4e675dba3d7f.md) | 248 | `result-track:53271f29f02c4e675dba3d7f5b1155bdd00c3d618fc126a5c45357e576c6f239` |
| 42 | `lemma` | [Ioi_pred_eq_Ici_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioi-pred-eq-ici-of-not-ismin--8d93a70fe4e54118df04aec1.md) | 255 | `result-track:8d93a70fe4e54118df04aec1810f114302ee97991fa055f4126a04a6cda49930` |
| 43 | `lemma` | [Ioi_pred_eq_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant08b6ad872cb4db153ad5f0c86f3de6e3dc033bffa6ba66ecc1fb273f9819fd3e.lean/declarations/ioi-pred-eq-ici--5cf96e5ab85e3da9bdcb25cb.md) | 260 | `result-track:5cf96e5ab85e3da9bdcb25cb1579347eebc5195eeba89f2931c066e49d167dbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
