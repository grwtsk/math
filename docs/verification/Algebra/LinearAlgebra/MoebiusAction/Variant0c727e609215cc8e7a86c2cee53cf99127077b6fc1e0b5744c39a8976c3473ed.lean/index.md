# Verification target: GRWTSK.Algebra.LinearAlgebra.MoebiusAction.Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5a5d74adfefe27ab1e666c6dc554d27db93c6c4",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5a5d74adfefe27ab1e666c6dc554d27db93c6c4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Parity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCoeFun](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/instcoefun--a36e47ddb94848f10a5e8010.md) | 32 | `declaration-track:a36e47ddb94848f10a5e8010624eb9d2e29875e24a855bd4f051e6dfe9d7b919` |
| 2 | `def` | [num](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/num--ac180865726cf6326ea33f22.md) | 43 | `declaration-track:ac180865726cf6326ea33f220ae83fb058eaba345729b83a69a547e059543280` |
| 3 | `def` | [denom](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom--173464e9287f24e15206bb16.md) | 46 | `declaration-track:173464e9287f24e15206bb1610b68ce74fbecd4d35e06485a4643697596a6b7e` |
| 4 | `lemma` | [num_neg](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/num-neg--cd584572d5f6ced4e99fab6a.md) | 49 | `result-track:cd584572d5f6ced4e99fab6a9a1ab2a64a7b37371eee9bfebe018358beddf4ea` |
| 5 | `lemma` | [denom_neg](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom-neg--60cb7a8e9da656a1861fa585.md) | 53 | `result-track:60cb7a8e9da656a1861fa5856416a92f0ee66c8861ab6ed884d9c6eb13e6db4b` |
| 6 | `theorem` | [linear_ne_zero_of_im](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/linear-ne-zero-of-im--52ce4ef49218980ba2a1669b.md) | 56 | `result-track:52ce4ef49218980ba2a1669bc61792f2fdb60538738a0a94bca5ce591cf60618` |
| 7 | `theorem` | [linear_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/linear-ne-zero--9fca015b6f00dcd07c605ae6.md) | 68 | `result-track:9fca015b6f00dcd07c605ae695505d18b95591856d487fc8609151c013a0bdcd` |
| 8 | `theorem` | [denom_ne_zero_of_im](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom-ne-zero-of-im--9cc9a8285e7cffcd22ccb2ec.md) | 72 | `result-track:9cc9a8285e7cffcd22ccb2ecf535d306507f29cca63548257a269d1cc061bc7f` |
| 9 | `theorem` | [denom_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom-ne-zero--d15d1b2671949cc1af72000d.md) | 76 | `result-track:d15d1b2671949cc1af72000d9d394cfe0c21b22a2d1dbb9e703caa0bed5d872f` |
| 10 | `theorem` | [normSq_denom_pos](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/normsq-denom-pos--20881758f146d507ff096c57.md) | 79 | `result-track:20881758f146d507ff096c574aa101b007f6ef69090ab9ac3b14b0837177880b` |
| 11 | `theorem` | [normSq_denom_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/normsq-denom-ne-zero--fcaa414ce5fc03515cb38be9.md) | 83 | `result-track:fcaa414ce5fc03515cb38be9ebd3013e3cddb074c0f52e9581d53b9da448a4a2` |
| 12 | `lemma` | [denom_cocycle](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom-cocycle--7ee4c9dafe807f48fe681bdd.md) | 87 | `result-track:7ee4c9dafe807f48fe681bdd941bb7d79bd8f6775860fa3d3d3a607a85924a9a` |
| 13 | `lemma` | [moebius_im](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/moebius-im--d4cb3cc9c250fecf268b9280.md) | 96 | `result-track:d4cb3cc9c250fecf268b9280ce634937c66396ef535d04943725f22803ad0df6` |
| 14 | `def` | [σ](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/anonymous--9d9ef45d08078b05888899a8.md) | 104 | `declaration-track:9d9ef45d08078b05888899a8c200a7c0cb183e81ac3ff7187e2c2407c2402c8d` |
| 15 | `lemma` | [σ_ofReal](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/ofreal--75a80e95721c85f31988daa9.md) | 107 | `result-track:75a80e95721c85f31988daa932af50509fe4334f4b8d7481691bf4b073a0b014` |
| 16 | `lemma` | [σ_num](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/num--9a2be254a65b9878e9c21891.md) | 111 | `result-track:9a2be254a65b9878e9c21891101ab18cb0bec8a6c03ac71ef93c575a7b8a51fd` |
| 17 | `lemma` | [σ_denom](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom--433b488f4b7c9e9b2fefcf5d.md) | 114 | `result-track:433b488f4b7c9e9b2fefcf5d2d462227063288d8557f7c6b80c283d94cfc5a4d` |
| 18 | `lemma` | [σ_neg](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/neg--fb493350151033d4b884a0e2.md) | 118 | `result-track:fb493350151033d4b884a0e2d4ce2c62f1227ac03dd987210417141b675433b9` |
| 19 | `lemma` | [σ_sq](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/sq--8d0c9c4d68f3f6ae9b0c4aca.md) | 122 | `result-track:8d0c9c4d68f3f6ae9b0c4aca009b5098c021f6c178cfc636e1eb3e87b17844d1` |
| 20 | `lemma` | [σ_im_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/im-ne-zero--48c5857d8a0ef7f0a21b2f18.md) | 126 | `result-track:48c5857d8a0ef7f0a21b2f181899750fc6499b3a83ef3403f3a779a8435c8477` |
| 21 | `lemma` | [σ_mul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/mul--7a6815228528a71e77840042.md) | 130 | `result-track:7a6815228528a71e7784004231b03c9c8b0dff94fecf0b092793fc8759d00a81` |
| 22 | `lemma` | [σ_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/mul-comm--6921674bf4be658c666c10d7.md) | 139 | `result-track:6921674bf4be658c666c10d7b90e786b4677f49967b003ba6dc33795fd9f5973` |
| 23 | `def` | [smulAux'](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/smulaux--6b129172a8413bde4f4c097f.md) | 144 | `declaration-track:6b129172a8413bde4f4c097f578e5181154c47327abc41b4c6bbf37493745e55` |
| 24 | `lemma` | [smulAux'_im](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/smulaux-im--657ea88485a7c0215a39035e.md) | 146 | `result-track:657ea88485a7c0215a39035e99289331dbfa873a614c4448b96674a576bef158` |
| 25 | `def` | [smulAux](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/smulaux--496f7642bf0d46983f75a3de.md) | 155 | `declaration-track:496f7642bf0d46983f75a3dea50a6bb6662b7ee6d48c8d9276ee8979452f8473` |
| 26 | `lemma` | [denom_cocycle'](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom-cocycle--6ea5aa0bc8077e0ae442db4d.md) | 160 | `result-track:6ea5aa0bc8077e0ae442db4d6b7df89e9657028068f639f8d9c1f8a397a2417f` |
| 27 | `theorem` | [mul_smul'](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/mul-smul--9493b9171d191637dfc1a118.md) | 170 | `result-track:9493b9171d191637dfc1a118b966eba4a6c16209daa5b007c073e638a2a02ac4` |
| 28 | `instance` | [glAction](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/glaction--2314c7fb9cd9b3f185c313a7.md) | 191 | `declaration-track:2314c7fb9cd9b3f185c313a7ca50415f2ac99c6bc0da8c5d6de17a77a3ca0b4e` |
| 29 | `lemma` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/coe-smul--93ea7475d85c04b6b92b756d.md) | 198 | `result-track:93ea7475d85c04b6b92b756de12693581a42433caebb82236a085179732e8dbc` |
| 30 | `lemma` | [coe_smul_of_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/coe-smul-of-det-pos--06c9a86ea9f5c62aba80fc0d.md) | 201 | `result-track:06c9a86ea9f5c62aba80fc0d9115a90652e9110b56a8f94d3e174db94a680871` |
| 31 | `lemma` | [denom_cocycle_σ](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom-cocycle--af21fa86c6dc7ccac92c4086.md) | 206 | `result-track:af21fa86c6dc7ccac92c4086e08f4b564ae794e1b321f7f39e46c59e910d9d29` |
| 32 | `lemma` | [glPos_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/glpos-smul-def--026f5e14382ee8a6dbcb7337.md) | 210 | `result-track:026f5e14382ee8a6dbcb7337ffe109ef9fac27e19084394a91fa9d8924363487` |
| 33 | `theorem` | [re_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/re-smul--989bde259bae80baf8ef0ecd.md) | 216 | `result-track:989bde259bae80baf8ef0ecdb1656a0f1d451ab49561fa8949dde3d6bfa64855` |
| 34 | `theorem` | [im_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/im-smul--a4d99e637993d07b9610d5d3.md) | 220 | `result-track:a4d99e637993d07b9610d5d38949cfdb8bac1441da3369f61219f0d56a0b1fe6` |
| 35 | `lemma` | [im_smul_eq_div_normSq](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/im-smul-eq-div-normsq--0aed41f7c304d9e73f3ede93.md) | 228 | `result-track:0aed41f7c304d9e73f3ede9321ae9d7247c275b3f2d2f922c5fbba28bd9e71c7` |
| 36 | `theorem` | [c_mul_im_sq_le_normSq_denom](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/c-mul-im-sq-le-normsq-denom--42b6cbd4c2a4f24c78d44836.md) | 231 | `result-track:42b6cbd4c2a4f24c78d44836e343b537a7ceac39caee73b2625d99f60ed6c864` |
| 37 | `theorem` | [neg_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/neg-smul--f0a6d2895af25830e58dc3e4.md) | 239 | `result-track:f0a6d2895af25830e58dc3e413485a0f23f9483f1684b3b767b1a8625bfa9ca8` |
| 38 | `lemma` | [denom_one](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom-one--f366bd3ebcf3b428d0b9e232.md) | 243 | `result-track:f366bd3ebcf3b428d0b9e232a9c960bee1edd9a61c88003dae3d9eafd5756357` |
| 39 | `instance` | [SLAction](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/slaction--dac34b805c127946673980ca.md) | 248 | `declaration-track:dac34b805c127946673980ca881c5df817fd015db5661152624f76b4de8ea83d` |
| 40 | `theorem` | [coe_specialLinearGroup_apply](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/coe-speciallineargroup-apply--0b0f6ee0e3cc48a2ea22176e.md) | 251 | `result-track:0b0f6ee0e3cc48a2ea22176e72352cc4aceabd5ff772170fd56cda55fbda05a2` |
| 41 | `theorem` | [specialLinearGroup_apply](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/speciallineargroup-apply--3652b19db3ca161dfea7c61b.md) | 258 | `result-track:3652b19db3ca161dfea7c61be45681b25185254f78c37bf7331243955e0dccde` |
| 42 | `theorem` | [modular_S_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/modular-s-smul--19fc1c7ddcbd90d412e6a79c.md) | 267 | `result-track:19fc1c7ddcbd90d412e6a79c7611b728f2f43114b04dbc8bad00eae62edf4a51` |
| 43 | `theorem` | [modular_T_zpow_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/modular-t-zpow-smul--6cb9909b4d8fa398aa9907b3.md) | 272 | `result-track:6cb9909b4d8fa398aa9907b3483af0d90dbc4df0e6f6fb63cb8a674cd07714ab` |
| 44 | `theorem` | [modular_T_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/modular-t-smul--5155ad680626e41dc657fa77.md) | 278 | `result-track:5155ad680626e41dc657fa77c69079ed94a118a8101a83f022f8064d644b039f` |
| 45 | `theorem` | [exists_SL2_smul_eq_of_apply_zero_one_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/exists-sl2-smul-eq-of-apply-zero-one-eq-zero--cbeb488bae8fe3549f8341ab.md) | 281 | `result-track:cbeb488bae8fe3549f8341ab26044b17e0f90ddfb790d7a402762baa5742a0bb` |
| 46 | `theorem` | [exists_SL2_smul_eq_of_apply_zero_one_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/exists-sl2-smul-eq-of-apply-zero-one-ne-zero--b7a367867a9980d90ce18293.md) | 289 | `result-track:b7a367867a9980d90ce1829362190a61b3a207441da77baaaa8e8c8e17cc8825` |
| 47 | `def` | [coe](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/coe--e5a36338e5d5b9b28691d2f9.md) | 320 | `declaration-track:e5a36338e5d5b9b28691d2f9d3c78697775d0427c977dae053ceb6030685ce5a` |
| 48 | `lemma` | [coe_inj](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/coe-inj--1d65569d205d219204ad50cf.md) | 323 | `result-track:1d65569d205d219204ad50cf60b74a7d88440d3fd7fdd9ca61252c8cbf4fa2a6` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/instance--a547e063ac4f50e2a0f207dc.md) | 330 | `declaration-track:a547e063ac4f50e2a0f207dc7637c1064c232cab5c8aa7f7d717d98989aa43b1` |
| 50 | `def` | [coeHom](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/coehom--2586c193dbac7193091a7741.md) | 334 | `declaration-track:2586c193dbac7193091a7741371ed088291ab3e3243fc8ac3f712cab70634250` |
| 51 | `lemma` | [coeHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/coehom-apply--681597cb7bbef25836e0180e.md) | 336 | `result-track:681597cb7bbef25836e0180e8928f7ac7b0261ed17b6de5f9832e3e523427fc0` |
| 52 | `theorem` | [coe_apply_complex](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/coe-apply-complex--d905672b29147eb96884bfa6.md) | 339 | `result-track:d905672b29147eb96884bfa6c90ef92618820be8062bce268ec944d27f81a896` |
| 53 | `theorem` | [det_coe](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/det-coe--8c2920cd273cf0ac87d29eef.md) | 346 | `result-track:8c2920cd273cf0ac87d29eef576241c3a71387e7deb2d3a006e35759bd2bd2b5` |
| 54 | `lemma` | [coe_one](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/coe-one--665b76e541613bd6a296277a.md) | 351 | `result-track:665b76e541613bd6a296277af04cdcd0e95b9715be4758a588967646c1e48fec` |
| 55 | `instance` | [SLOnGLPos](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/slonglpos--a683cd7ce5a7e327512e9875.md) | 354 | `declaration-track:a683cd7ce5a7e327512e98757a403a4afbc753fd6aa1e2ac15aaf828a8b7f7d3` |
| 56 | `theorem` | [SLOnGLPos_smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/slonglpos-smul-apply--39c96b1d63407e4a0feb7e87.md) | 357 | `result-track:39c96b1d63407e4a0feb7e87ebe0119d511c15caa98d41fba201d71aa77d1843` |
| 57 | `instance` | [SL_to_GL_tower](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/sl-to-gl-tower--7570dc59511c87615fca8fc3.md) | 361 | `declaration-track:7570dc59511c87615fca8fc302e3a8f590fe280a248a0b5c3a272fadd90dc5a9` |
| 58 | `theorem` | [sl_moeb](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/sl-moeb--8fd54cab7d066b1d80c9c4ed.md) | 373 | `result-track:8fd54cab7d066b1d80c9c4edf632d3894f68cb17908847e8d0b1d8aab96fda51` |
| 59 | `theorem` | [SL_neg_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/sl-neg-smul--33e8df0a507500ff2669ee57.md) | 376 | `result-track:33e8df0a507500ff2669ee57beb24d0f58506c7c2dd6803765a734bb2e253ee5` |
| 60 | `theorem` | [im_smul_eq_div_normSq](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/im-smul-eq-div-normsq--f3020916e56abddf5e870170.md) | 381 | `result-track:f3020916e56abddf5e870170f9e2ebae2873e41d64f7987c0df2f29a0019ca97` |
| 61 | `theorem` | [denom_apply](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom-apply--f52405412371829c72e4cb0f.md) | 384 | `result-track:f52405412371829c72e4cb0f55e326e042f5b9be0cbbaf605826eebe0aa419cb` |
| 62 | `lemma` | [denom_S](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Variant0c727e609215cc8e7a86c2cee53cf99127077b6fc1e0b5744c39a8976c3473ed.lean/declarations/denom-s--7ba6936fe42ba70da209ee3e.md) | 386 | `result-track:7ba6936fe42ba70da209ee3e4c7cc4da0f4269bab366fd7272cf1cd23649ef14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
