# Verification target: GRWTSK.Algebra.GroupTheory.OfStabilizer.Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "526ccce0f2c837696f2f427dcc1d6c73498700c6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `526ccce0f2c837696f2f427dcc1d6c73498700c6`.

Source path: `GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Embedding` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Embedding` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofStabilizer](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer--03d857f5545c6406745fdfef.md) | 70 | `declaration-track:03d857f5545c6406745fdfef124f6bd17ea0d4964897935df6c0d0cbdb9339f2` |
| 2 | `theorem` | [ofStabilizer_carrier](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-carrier--0a5c2795a8bdd0b6dd223e83.md) | 81 | `result-track:0a5c2795a8bdd0b6dd223e8309d06140079e3c6615a7b11b24425132582c083c` |
| 3 | `theorem` | [mem_ofStabilizer_iff](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/mem-ofstabilizer-iff--b2cbec2c3c14e63415d755b4.md) | 85 | `result-track:b2cbec2c3c14e63415d755b4a5fabd754f71cc7dfaa588091e3d16607ff22643` |
| 4 | `theorem` | [neq_of_mem_ofStabilizer](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/neq-of-mem-ofstabilizer--2508d8349af1111d3350a92f.md) | 89 | `result-track:2508d8349af1111d3350a92fbecebf006a5ce68c9e3d784323a0ac9c4787137d` |
| 5 | `lemma` | [Enat_card_ofStabilizer_eq_add_one](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/enat-card-ofstabilizer-eq-add-one--21907b0702ce1b0fa2b5ed77.md) | 93 | `result-track:21907b0702ce1b0fa2b5ed77680885197839967885d13c9c3c728a5a582dbe26` |
| 6 | `lemma` | [nat_card_ofStabilizer_eq](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/nat-card-ofstabilizer-eq--16c2b6b73f504b1bc02e36d2.md) | 101 | `result-track:16c2b6b73f504b1bc02e36d29d261764765de3084f0181c6a6c81bebb7fd5e21` |
| 7 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.OfStabilizer.Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.SubAddAction.ofStabilizer.conjMap](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/root-grwtsk-algebra-grouptheory-ofstabilizer-variant3a7d2b3a66178d037715--d90154416b4320c6c884279b.md) | 113 | `declaration-track:d90154416b4320c6c884279bbd03285b27553cb4336adc68a2b1405144eafe61` |
| 8 | `def` | [ofStabilizer.conjMap](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-conjmap--653a931d809f81af18f7d059.md) | 125 | `declaration-track:653a931d809f81af18f7d059f0ef887a1d908553d48c842cf6b557cb23eed709` |
| 9 | `theorem` | [ofStabilizer.conjMap_apply](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-conjmap-apply--db7f51ec6cffc43d9d7bc8cb.md) | 135 | `result-track:db7f51ec6cffc43d9d7bc8cbf8d9b66a91497af494b09d6d826169f9f4d22cf9` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.OfStabilizer.Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.AddAction.stabilizerEquivStabilizer_compTriple](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/root-grwtsk-algebra-grouptheory-ofstabilizer-variant3a7d2b3a66178d037715--3050eade6efa28eb3cb8c8d0.md) | 138 | `result-track:3050eade6efa28eb3cb8c8d0cb45efad0429e2d57a7550ec591cbebecc467e1a` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.OfStabilizer.Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.MulAction.stabilizerEquivStabilizer_compTriple](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/root-grwtsk-algebra-grouptheory-ofstabilizer-variant3a7d2b3a66178d037715--81aab9d4c33b0b710b47b227.md) | 149 | `result-track:81aab9d4c33b0b710b47b2270a59bb700f3b568fb7a36e22b119354722df2074` |
| 12 | `theorem` | [ofStabilizer.conjMap_comp_apply](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-conjmap-comp-apply--31d2ac399333b0cbe26d46ea.md) | 158 | `result-track:31d2ac399333b0cbe26d46eaa86e42c4423ed9d9269c4ccddd650c463447488b` |
| 13 | `theorem` | [ofStabilizer.conjMap_comp_inv_apply](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-conjmap-comp-inv-apply--5684714ce5e80dc47707cd46.md) | 163 | `result-track:5684714ce5e80dc47707cd4699cdeb20572c03a9e02311f0cb720f8275348f23` |
| 14 | `theorem` | [ofStabilizer.inv_conjMap_comp_apply](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-inv-conjmap-comp-apply--9e5a74ef7d759590a8b2839a.md) | 168 | `result-track:9e5a74ef7d759590a8b2839a815e5a752bb642a4d4c7010d83077b8d76ddc5ee` |
| 15 | `theorem` | [ofStabilizer.conjMap_comp](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-conjmap-comp--ae0355fef9db100f590dc1fa.md) | 173 | `result-track:ae0355fef9db100f590dc1fada6232196d47f8cce129a17360fab75f9e90ed62` |
| 16 | `theorem` | [ofStabilizer.conjMap_bijective](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-conjmap-bijective--9d75654ddf284c9c1e41c8b4.md) | 179 | `result-track:9d75654ddf284c9c1e41c8b42777b9ecee66ee77a4c464296c2233f421345060` |
| 17 | `def` | [ofStabilizer.snoc](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-snoc--50f5e959b0bc1ffd51708802.md) | 191 | `declaration-track:50f5e959b0bc1ffd51708802b2c89d9d79ff28c78d116782af725c487373895b` |
| 18 | `theorem` | [ofStabilizer.snoc_castSucc](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-snoc-castsucc--6b9f939548fd613136385cdc.md) | 198 | `result-track:6b9f939548fd613136385cdc79969909244ed01675dbfa2fe077cfb839135ff9` |
| 19 | `theorem` | [ofStabilizer.snoc_last](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/ofstabilizer-snoc-last--7ad45eb44698cf9ffaec6d8f.md) | 203 | `result-track:7ad45eb44698cf9ffaec6d8fb9cf6730ddc7551d894843684554f0a6dac42a0e` |
| 20 | `lemma` | [exists_smul_of_last_eq](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/declarations/exists-smul-of-last-eq--b77855bd8e45868701f58c6f.md) | 209 | `result-track:b77855bd8e45868701f58c6f17a0a11e12d0954bb9415aee26ce464da2e33837` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
