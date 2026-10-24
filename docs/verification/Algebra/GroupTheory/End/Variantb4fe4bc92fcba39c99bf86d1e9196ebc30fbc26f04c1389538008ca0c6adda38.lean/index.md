# Verification target: GRWTSK.Algebra.GroupTheory.End.Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8959c86d925d2f181cc93bbbf9559cd0b15d42ac",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8959c86d925d2f181cc93bbbf9559cd0b15d42ac`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/applymulaction--6998800b246f3c6a014a0d39.md) | 64 | `declaration-track:6998800b246f3c6a014a0d396b5ada409add5b5998d0e13c498d77a49098a62a` |
| 2 | `instance` | [applyAddAction](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/applyaddaction--5aab87d454418246cb8d0d69.md) | 70 | `declaration-track:5aab87d454418246cb8d0d69b2bb2cb2a6ff5ef251d8b8f6a3ff3a03ce135adc` |
| 3 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/smul-def--7782e3e43043ca065c81a0aa.md) | 72 | `result-track:7782e3e43043ca065c81a0aa6e2a480534bfa5cda1492fbdab37345a28bcb8c9` |
| 4 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/mul-def--130b4cfadaef21662b805944.md) | 75 | `result-track:130b4cfadaef21662b8059449870d81c4db1af688e08a8787764226722632c45` |
| 5 | `lemma` | [one_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/one-def--982b20eb586555bc5ebf322c.md) | 78 | `result-track:982b20eb586555bc5ebf322c4fc8c72ca3d3667d33484561a7de484492ae447c` |
| 6 | `instance` | [apply_FaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/apply-faithfulsmul--27bbd75965dee3eaae7eb1e7.md) | 81 | `declaration-track:27bbd75965dee3eaae7eb1e79046316e2fdc657ed8072adf161d87a45f0968e9` |
| 7 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/applymulaction--345f3a7b93b2b31e0e0e3f33.md) | 92 | `declaration-track:345f3a7b93b2b31e0e0e3f33beeeca5e59b0d08dad882a87afd3e13dec50a42b` |
| 8 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/smul-def--802a430f347e14dc9fde0958.md) | 98 | `result-track:802a430f347e14dc9fde095813c2554b36c621dfd517ce9163ac2f121b332cde` |
| 9 | `instance` | [applyFaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/applyfaithfulsmul--3ec30316152b07cd8f67246d.md) | 101 | `declaration-track:3ec30316152b07cd8f67246d21c0c3aeca1cc43d0187b275d007656510dc3022` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/instance--4e59319ac5508fca8fc01c58.md) | 104 | `declaration-track:4e59319ac5508fca8fc01c589aaa448d0f74b64508fff49763061373dac628cd` |
| 11 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/applymulaction--c5f8117c7354a25af646ff4f.md) | 120 | `declaration-track:c5f8117c7354a25af646ff4fde81d4eb11942e11931fc960348ef6f1080fd851` |
| 12 | `instance` | [applyMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/applymuldistribmulaction--2a2b8afa15ccaeb867e5f779.md) | 129 | `declaration-track:2a2b8afa15ccaeb867e5f77912a8daf3134940083e613419adb02065502290aa` |
| 13 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/smul-def--da4bd5a47e9543baebaa0f57.md) | 133 | `result-track:da4bd5a47e9543baebaa0f5792a0be07610f8753d67788338c58d98722469cce` |
| 14 | `instance` | [apply_faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/apply-faithfulsmul--d416b51ea1f5d6236a66a639.md) | 137 | `declaration-track:d416b51ea1f5d6236a66a639f51780d80d915ffe199a1a8320fae51e121aa61b` |
| 15 | `def` | [MulAction.toEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/mulaction-toendhom--18fa5ebc4c0336d830deed50.md) | 159 | `declaration-track:18fa5ebc4c0336d830deed506a6c05cc64c2d59a2a311146c08b4472e121557c` |
| 16 | `abbrev` | [MulAction.ofEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/mulaction-ofendhom--b63f7c9c36599b44d259f0bd.md) | 167 | `declaration-track:b63f7c9c36599b44d259f0bd831fe95b248910b76bdba89961496a29f3db9b5b` |
| 17 | `def` | [AddAction.toEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/addaction-toendhom--f615bfa8cbef4bacc6aaf85c.md) | 177 | `declaration-track:f615bfa8cbef4bacc6aaf85c78dc5b6f32c72acb3de67a33fdd5217b33afdd52` |
| 18 | `abbrev` | [AddAction.ofEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/addaction-ofendhom--b86331efca46d9f86b3747ae.md) | 183 | `declaration-track:b86331efca46d9f86b3747ae74a84587556b538272a950516f3855b930fb9428` |
| 19 | `def` | [MulAction.toPermHom](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/mulaction-topermhom--e786a76599f3c2639bd50384.md) | 192 | `declaration-track:e786a76599f3c2639bd50384f912d29d3ea78b9ed4a6184a027e4256c0daca80` |
| 20 | `lemma` | [MulAction.coe_toPermHom](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/mulaction-coe-topermhom--d735e56305d48bc062193535.md) | 197 | `result-track:d735e56305d48bc06219353572a74ef25c98ee282672ea7de2b5b5468fb54c47` |
| 21 | `lemma` | [MulAction.toPerm_one](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/mulaction-toperm-one--936267e35536f65680ee73e1.md) | 201 | `result-track:936267e35536f65680ee73e15cd968dfd9b9d381c7cb5f2d790263875f9d5a1b` |
| 22 | `def` | [AddAction.toPermHom](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/addaction-topermhom--e02bb3cf3b81e84e00624c51.md) | 213 | `declaration-track:e02bb3cf3b81e84e00624c51fb08ecd7b0cbcb4b7de8f1cf264be2a44403569f` |
| 23 | `lemma` | [AddAction.coe_toPermHom](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/addaction-coe-topermhom--03fb26702705677dfb4a7f94.md) | 215 | `result-track:03fb26702705677dfb4a7f942f66be1f226e0a56d7563ab9072495b74b9063df` |
| 24 | `theorem` | [AddAction.toPerm_zero](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/addaction-toperm-zero--d409b28351eb5e1147ebf662.md) | 219 | `result-track:d409b28351eb5e1147ebf6623ae60a924a22a52b356d36e405c929cd9d89b393` |
| 25 | `def` | [MulDistribMulAction.toMulEquiv](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/muldistribmulaction-tomulequiv--dd5e0b1877f33e0e82ae926f.md) | 232 | `declaration-track:dd5e0b1877f33e0e82ae926f901914395174b448abe8bfcd0ec0c6a583cdabff` |
| 26 | `def` | [MulDistribMulAction.toMulAut](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/muldistribmulaction-tomulaut--9885744377e00ffa3fb4bc4d.md) | 240 | `declaration-track:9885744377e00ffa3fb4bc4d681c08a1e7d6d96d9cb47c00446f8cbe631a43a1` |
| 27 | `def` | [mulAutArrow](../../../../../mathematics/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/declarations/mulautarrow--5689bdc05eb96b945b6c1095.md) | 254 | `declaration-track:5689bdc05eb96b945b6c10952b1b3d9c9ef0ad83d776e6ee56f921ca7659dfbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
