# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "160fdb43d564d95653e907be425948ae12204193",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `160fdb43d564d95653e907be425948ae12204193`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/instance--d95e8f8f56fc55cf43708e07.md) | 36 | `declaration-track:d95e8f8f56fc55cf43708e0778770e813818e5bf770850d14b2d6d69784eda87` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/instance--0d8b4bf6f16fee1ba0ac02d7.md) | 40 | `declaration-track:0d8b4bf6f16fee1ba0ac02d755d99449b5648c90493f2d13188244d0af22b0d7` |
| 3 | `theorem` | [list_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/list-prod-mem--23c7d0f5f54a3b7cf3d2e671.md) | 56 | `result-track:23c7d0f5f54a3b7cf3d2e67118092c3216997b3008be8dec2efdf39e6f7d7df2` |
| 4 | `theorem` | [multiset_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/multiset-prod-mem--9658e2bc63487b0dabd194f4.md) | 62 | `result-track:9658e2bc63487b0dabd194f40b3c9ca96238a5dbbb45115f9bf0c890f00bebcc` |
| 5 | `theorem` | [multiset_noncommProd_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/multiset-noncommprod-mem--ecea4e2c10591adef52cba8b.md) | 67 | `result-track:ecea4e2c10591adef52cba8b230c0bc7ad4626028569731f926c3e9ccf69344d` |
| 6 | `theorem` | [prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/prod-mem--e985d03c12611e5b59f0a5a2.md) | 75 | `result-track:e985d03c12611e5b59f0a5a2b3ef89e8061e4275e7b55b708a0029bb65ed4727` |
| 7 | `theorem` | [noncommProd_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/noncommprod-mem--4ad36a4d48f89e988416ec56.md) | 80 | `result-track:4ad36a4d48f89e988416ec569a61746d80ee5580a697ed89ad34d4aa897526fa` |
| 8 | `theorem` | [val_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/val-list-prod--1a067ef52c805b3a0936ea00.md) | 85 | `result-track:1a067ef52c805b3a0936ea001bd3b30bd33e32c399c9657709f1625c15d73e4f` |
| 9 | `theorem` | [val_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/val-multiset-prod--a97ca53ec4cf2c8eb8114fb5.md) | 89 | `result-track:a97ca53ec4cf2c8eb8114fb5dd5ea67d3592e6626c6b11eba4c7e02928b9a8c6` |
| 10 | `theorem` | [val_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/val-finset-prod--9439dd4b3b4593b08c8a7f14.md) | 94 | `result-track:9439dd4b3b4593b08c8a7f1406ea692f2ef4041b58ba40165d8eaea021806895` |
| 11 | `instance` | [fintypeBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/fintypebot--328d8778655d7f945ee096a3.md) | 99 | `declaration-track:328d8778655d7f945ee096a3c6dab57ef0d134c0ddeab052d2698b53c88f9509` |
| 12 | `theorem` | [card_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/card-bot--423a8afecd8a3bcdb09695d2.md) | 105 | `result-track:423a8afecd8a3bcdb09695d27780d8c7f2095060bbd8818031c36389278ed5a8` |
| 13 | `theorem` | [card_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/card-top--31e89b1b5f3d11eb028f0873.md) | 108 | `result-track:31e89b1b5f3d11eb028f0873bcd08e5b79a70683d3af6ba7e039705aa9af38a0` |
| 14 | `theorem` | [eq_of_le_of_card_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/eq-of-le-of-card-ge--8c0e2c997eb37c4cfffc70f0.md) | 112 | `result-track:8c0e2c997eb37c4cfffc70f0680e984c360d9140cbc9d6ff45db2d2c4d2cd16c` |
| 15 | `theorem` | [eq_top_of_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/eq-top-of-le-card--dc6f050b1855f6a692717bcb.md) | 118 | `result-track:dc6f050b1855f6a692717bcb8cb8ccba170d3bad66c2153fc224ce24f4a3ef57` |
| 16 | `theorem` | [eq_top_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/eq-top-of-card-eq--357f2d50bcb6b10ee4144e45.md) | 122 | `result-track:357f2d50bcb6b10ee4144e453c5711a250546e65ee05a811896517df2fce0da6` |
| 17 | `theorem` | [card_eq_iff_eq_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/card-eq-iff-eq-top--36e882ac4362ecaf0bc0bc45.md) | 127 | `result-track:36e882ac4362ecaf0bc0bc45addde7a884397d0a48fc7371e3017eee21ebe7bf` |
| 18 | `theorem` | [eq_bot_of_card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/eq-bot-of-card-le--14e6add321805395e921b9a5.md) | 131 | `result-track:14e6add321805395e921b9a5ef621cefeb444f1c33962ea96aaeb8a4d45c2f32` |
| 19 | `theorem` | [eq_bot_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/eq-bot-of-card-eq--c16757f29e7b135f3a6376c2.md) | 136 | `result-track:c16757f29e7b135f3a6376c25ea84a9238db32933c26852062422ab3e2645532` |
| 20 | `theorem` | [card_le_one_iff_eq_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/card-le-one-iff-eq-bot--e50dfc18bc05170428afb41d.md) | 141 | `result-track:e50dfc18bc05170428afb41db64cfe70df95a33b9601f71b6894bdb1e970365d` |
| 21 | `lemma` | [eq_bot_iff_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/eq-bot-iff-card--2f858294561e580b1eb9db65.md) | 144 | `result-track:2f858294561e580b1eb9db6524aa503ec17d79d5976e08f0bb6c775522618601` |
| 22 | `theorem` | [one_lt_card_iff_ne_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/one-lt-card-iff-ne-bot--4ad86d52597628219dd5f5bf.md) | 148 | `result-track:4ad86d52597628219dd5f5bffd28c719064fbfa11f9556620a032547a731fe84` |
| 23 | `theorem` | [card_le_card_group](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/card-le-card-group--dde476f8d29e94795f473cf6.md) | 152 | `result-track:dde476f8d29e94795f473cf635da08a63c604e3747157ada1c3ac6759e1af39e` |
| 24 | `theorem` | [card_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/card-le-of-le--d219c8d0b622812bae5ffe3f.md) | 156 | `result-track:d219c8d0b622812bae5ffe3f2c133280d7824c97ea5c9cf98ec37236c65bcfc0` |
| 25 | `theorem` | [card_map_of_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/card-map-of-injective--07667630d68862124f6910a8.md) | 160 | `result-track:07667630d68862124f6910a82b32a2f4d2a5945fb7f1853ef681bace97804572` |
| 26 | `theorem` | [card_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/card-subtype--d4eb6bfc4c9445552359b371.md) | 166 | `result-track:d4eb6bfc4c9445552359b37170044b09601f33a1ea32bbe3c6ecbf5c0406eb6f` |
| 27 | `theorem` | [pi_mem_of_mulSingle_mem_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/pi-mem-of-mulsingle-mem-aux--fc7cea662d11dea002051093.md) | 181 | `result-track:fc7cea662d11dea0020510933b19997dbed2ddec12f250a3fcedd65b96632c5a` |
| 28 | `theorem` | [pi_mem_of_mulSingle_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/pi-mem-of-mulsingle-mem--1c00cb018ea79eee8de16cf3.md) | 217 | `result-track:1c00cb018ea79eee8de16cf3fc0f3db5c8de314a1713e1dbf580e74fffd2faba` |
| 29 | `theorem` | [pi_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/pi-le-iff--4c265afc5484719a400ded63.md) | 225 | `result-track:4c265afc5484719a400ded63e5f539e641b5e480cb78e50de7b6e81e74dbf3db` |
| 30 | `theorem` | [mem_normalizer_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/mem-normalizer-fintype--876fc1aec443b1de260b20c0.md) | 241 | `result-track:876fc1aec443b1de260b20c044e55e787fcad744c9e76eb171b2f9d0b4c5c3b8` |
| 31 | `instance` | [decidableMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/decidablememrange--d7de4b2133941891bdf10a9b.md) | 265 | `declaration-track:d7de4b2133941891bdf10a9b698fdb4614f3de164c70673a7df055bcd8c0853a` |
| 32 | `instance` | [fintypeMrange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/fintypemrange--0db0b3f2765c0653bbc90ce1.md) | 278 | `declaration-track:0db0b3f2765c0653bbc90ce1f47de4535f98db67fc00cd609a44e14db820a87c` |
| 33 | `instance` | [fintypeRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/fintyperange--108cf57a27f2ac6b3a7d8b2b.md) | 290 | `declaration-track:108cf57a27f2ac6b3a7d8b2bfc84178ae0ceb657b521ff718fd5e2333bb056fb` |
| 34 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListProdMem.Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.Fintype.card_coeSort_mrange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-listprodmem-variant248f0--bd689e2e1b22f2bd8ba8f74f.md) | 293 | `result-track:bd689e2e1b22f2bd8ba8f74f8a5e30dc62a5646a8de5e5a48ca270075acc1cc6` |
| 35 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListProdMem.Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.Fintype.card_coeSort_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-listprodmem-variant248f0--4a0de2502cfa9704a336dd1d.md) | 298 | `result-track:4a0de2502cfa9704a336dd1dced820ad0ff4967f0e303d19af16bd1c195afdb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
