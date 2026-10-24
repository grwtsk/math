# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Piecewise.Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f9c30ee28004a43d8db326984b77cd73e64117b",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f9c30ee28004a43d8db326984b77cd73e64117b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Piecewise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_apply_dite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-apply-dite--cf6e0ea0463acc13ecad2564.md) | 32 | `result-track:cf6e0ea0463acc13ecad256478379fd00523d7be1801e1098b1d41907e0814a2` |
| 2 | `theorem` | [prod_apply_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-apply-ite--b6607ac4aa87b480ae3bad9f.md) | 52 | `result-track:b6607ac4aa87b480ae3bad9fbe83ab027316b695b92ff9ad8b75db26e5ddd938` |
| 3 | `theorem` | [prod_dite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-dite--4092770bdd6218fdf7fab6f1.md) | 59 | `result-track:4092770bdd6218fdf7fab6f1bc212d5b498655889c5342087038e07810942823` |
| 4 | `theorem` | [prod_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite--734dc3a5666c35b189797cb2.md) | 67 | `result-track:734dc3a5666c35b189797cb21311f4a0b09877d0a2042d5c2b2d6e9019f40faa` |
| 5 | `lemma` | [prod_dite_of_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-dite-of-false--f0b18c829ded50dcdbaec97d.md) | 72 | `result-track:f0b18c829ded50dcdbaec97d1bf7029ab13df8fa5505838e956ee94796e58b19` |
| 6 | `lemma` | [prod_ite_of_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-of-false--fc6f73d8403532dc5db70403.md) | 78 | `result-track:fc6f73d8403532dc5db70403fd772a3aa0b1be2567c3b178db1977c247586e97` |
| 7 | `lemma` | [prod_dite_of_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-dite-of-true--96941cd8839df9959a8aa602.md) | 83 | `result-track:96941cd8839df9959a8aa6029adc21155d31db8540f5f0f71bc3f637ce0b9d5c` |
| 8 | `lemma` | [prod_ite_of_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-of-true--0ce52996e135661bd2bc58d9.md) | 89 | `result-track:0ce52996e135661bd2bc58d97c84932610e1337a9bd2a0911584a4355c1d356e` |
| 9 | `theorem` | [prod_apply_ite_of_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-apply-ite-of-false--dc6f71367350d96a2fcd3424.md) | 94 | `result-track:dc6f71367350d96a2fcd34247e37bb2329c13ff9e29845b24d0eaf2be8147ca6` |
| 10 | `theorem` | [prod_apply_ite_of_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-apply-ite-of-true--b4251e2903352d44b8ddd687.md) | 100 | `result-track:b4251e2903352d44b8ddd68781942f6aafb3702a53a148bcbb2492d60fbce615` |
| 11 | `theorem` | [prod_ite_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-mem--be6aa5ade7b434584039eb70.md) | 106 | `result-track:be6aa5ade7b434584039eb705bf1bb1695b5a96d0dd81c8b38d0f3d2410c43a5` |
| 12 | `lemma` | [prod_attach_eq_prod_dite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-attach-eq-prod-dite--7226cff58882e6fa3a17df88.md) | 111 | `result-track:7226cff58882e6fa3a17df88f8ede5a451fda26b816668fbc565b0c7f46d2cfc` |
| 13 | `theorem` | [prod_dite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-dite-eq--22044ad3975c35601f4aecbe.md) | 120 | `result-track:22044ad3975c35601f4aecbebb6b1fe9cb7983c5954c8ade0ac85ed78c18a47c` |
| 14 | `theorem` | [prod_dite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-dite-eq--4eb16e752aadec131a766545.md) | 135 | `result-track:4eb16e752aadec131a7665455974c8001d790d08db8fc129015b68da4bad60b0` |
| 15 | `theorem` | [prod_ite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-eq--7829cd0d2a8697b0a4f1cfe1.md) | 150 | `result-track:7829cd0d2a8697b0a4f1cfe13606c21a87d02f8cc549d1cf17124593ad8931a4` |
| 16 | `theorem` | [prod_ite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-eq--3fbd6d5dc51cbf9bae2d47ae.md) | 162 | `result-track:3fbd6d5dc51cbf9bae2d47aed97cb6aba0547959abccfb225ffe96a4f0ae4fde` |
| 17 | `theorem` | [prod_ite_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-eq-of-mem--098f7bf4a14821602b269e2a.md) | 167 | `result-track:098f7bf4a14821602b269e2a2f222186e60b9ce29a172b0cb8841942701a12b0` |
| 18 | `theorem` | [prod_ite_eq_of_mem'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-eq-of-mem--fce5af0d8ea1f620b46d5bdb.md) | 173 | `result-track:fce5af0d8ea1f620b46d5bdb0d73475b79ad1710377ba96b671fb29bbfef27ad` |
| 19 | `theorem` | [prod_pi_mulSingle'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-pi-mulsingle--3c67e336fa731c15eb6e57f9.md) | 178 | `result-track:3c67e336fa731c15eb6e57f9dd3b2e13b303451a824cb7114fbb85957a6e96a7` |
| 20 | `theorem` | [prod_pi_mulSingle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-pi-mulsingle--fb51402172799ce1d85d8b24.md) | 183 | `result-track:fb51402172799ce1d85d8b24c7a6c71dc0e543432815271e68a4df735d4417d3` |
| 21 | `theorem` | [prod_piecewise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-piecewise--427669712099f7b786903349.md) | 189 | `result-track:427669712099f7b7869033494d478201117406e3d6bd6a042adf59cf7693f4ec` |
| 22 | `theorem` | [prod_inter_mul_prod_diff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-inter-mul-prod-diff--c92289fa83d3c4feaaa160d5.md) | 195 | `result-track:c92289fa83d3c4feaaa160d51a30f67ecd24254009ce92ee97f3d2afd136afda` |
| 23 | `theorem` | [prod_eq_mul_prod_diff_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-eq-mul-prod-diff-singleton--32d08d401fe263fbd7c31c9a.md) | 201 | `result-track:32d08d401fe263fbd7c31c9a3aa3ca8d4e4ebd0db202858e44018397683cff7c` |
| 24 | `theorem` | [prod_eq_prod_diff_singleton_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-eq-prod-diff-singleton-mul--856ffeb7c7c117b5b5a9f189.md) | 207 | `result-track:856ffeb7c7c117b5b5a9f1893f8286e0f288708aa169e6096b478b49539aa1ff` |
| 25 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdApplyDite.Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.Fintype.prod_eq_mul_prod_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodapplydite-variant0d8--15b1a3f49371f5f410964a7b.md) | 212 | `result-track:15b1a3f49371f5f410964a7b7975e51412a9011feaac85c7336045d5cb36ad4b` |
| 26 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdApplyDite.Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.Fintype.prod_eq_prod_compl_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodapplydite-variant0d8--836b5911f073c874cd307e34.md) | 217 | `result-track:836b5911f073c874cd307e34a1a3c3ebe4164020c2d9a34fe29ec3d79431f2b7` |
| 27 | `theorem` | [dvd_prod_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/dvd-prod-of-mem--9f3e4145e0de13eaa694bc3c.md) | 221 | `result-track:9f3e4145e0de13eaa694bc3cc2739fd6a60be11ef34740affa24e8e202531495` |
| 28 | `theorem` | [prod_update_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-update-of-notmem--b9fe3d296667c996a000f2bf.md) | 227 | `result-track:b9fe3d296667c996a000f2bf22ee6b8148f1ac2b6155f7da2417049a9bf66f33` |
| 29 | `theorem` | [prod_update_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-update-of-mem--116fab84ad3467d3bfae049c.md) | 242 | `result-track:116fab84ad3467d3bfae049c82e82c862953b4b8fd003086f85ec42eed7550fe` |
| 30 | `theorem` | [prod_ite_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-one--be147bab9103d5b5dd84f52e.md) | 249 | `result-track:be147bab9103d5b5dd84f52ed416ac41e5f250fea7654bcbbc621eacf9a8320c` |
| 31 | `theorem` | [prod_pow_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-pow-boole--f8f7003f6099e407004bc442.md) | 261 | `result-track:f8f7003f6099e407004bc442530c620dc9a15cc85d98cdf0a7152544c0bfb58f` |
| 32 | `lemma` | [card_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/card-filter--747c20328f9961a5b8810068.md) | 266 | `result-track:747c20328f9961a5b881006845699cbd11ddd8d0dcb8ae644b43204df058c61f` |
| 33 | `lemma` | [prod_ite_eq_ite_exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-eq-ite-exists--4d0c67292b2770f10bcdf933.md) | 278 | `result-track:4d0c67292b2770f10bcdf933e53dfeb001291e727df40a38e1a9e9927757c113` |
| 34 | `lemma` | [prod_ite_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-mem--50d01f2222fabe8b76f82fb3.md) | 285 | `result-track:50d01f2222fabe8b76f82fb34649716f52c9da3a1cabfe72aae57cafccd2b0c7` |
| 35 | `lemma` | [prod_dite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-dite-eq--7673e293eb349b70af4ff2cc.md) | 289 | `result-track:7673e293eb349b70af4ff2cc86ad2ecd69ab74eaef5599c8c4262970d4b9590d` |
| 36 | `lemma` | [prod_dite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-dite-eq--6b95f3846d0bc0aaa4ec9bd4.md) | 294 | `result-track:6b95f3846d0bc0aaa4ec9bd449abf001f7234950ee4db5c552ed907aabc29cd2` |
| 37 | `lemma` | [prod_ite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-eq--6d56a2e21b53b4193ad34b6e.md) | 300 | `result-track:6d56a2e21b53b4193ad34b6e4825e425eb648a8f3803e025d6aa248fcf8e7ecb` |
| 38 | `lemma` | [prod_ite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-ite-eq--2de2b83368b657abeadb920c.md) | 305 | `result-track:2de2b83368b657abeadb920cca00b92c78f90492fd64ea66163ab0d93a0311c3` |
| 39 | `lemma` | [prod_pi_mulSingle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-pi-mulsingle--35e0cc3c4f3e9ff3ff985949.md) | 310 | `result-track:35e0cc3c4f3e9ff3ff985949f4405e7eb2f439b379c42456bd97b34862600f9f` |
| 40 | `lemma` | [prod_pi_mulSingle'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variante8bdd08516e782af305d99207cc7152d8f0e964a0fcaa8f33c5266485d676e4c.lean/declarations/prod-pi-mulsingle--4940de0a24e3c22af270216b.md) | 315 | `result-track:4940de0a24e3c22af270216b5a7ae91fb9595adf7b741889f0bfbf509afcc08d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
