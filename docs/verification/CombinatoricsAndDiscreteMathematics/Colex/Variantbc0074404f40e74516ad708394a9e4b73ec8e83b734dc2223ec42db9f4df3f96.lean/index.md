# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Colex.Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62879d18af2672e8cd1bf5ec9511c7a349235202",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62879d18af2672e8cd1bf5ec9511c7a349235202`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finset.Colex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/finset-colex--a32e9b6b45f9d030677e66b2.md) | 70 | `declaration-track:a32e9b6b45f9d030677e66b2cfaf815172a54bdc5b7220f60394d34c8ae64e2a` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/instance--1062d641eee3b8a13029c4ad.md) | 75 | `declaration-track:1062d641eee3b8a13029c4ad61f688075e818a7fa91bd5d577e12ad6b9797757` |
| 3 | `def` | [Finset.toColex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/finset-tocolex--eaea12e2a8c5d1444b24c102.md) | 80 | `declaration-track:eaea12e2a8c5d1444b24c10211bf90172e4f9a0f86274a87a5949ad2cd37a2c8` |
| 4 | `theorem` | [Colex.eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/colex-eq-iff--ff2daeb5ffa755483ac4fb30.md) | 85 | `result-track:ff2daeb5ffa755483ac4fb30ba52d153bcbc23920caf96d176c242cad5c330e4` |
| 5 | `instance` | [Colex.instLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/colex-instlt--2db23065748c41239b9da7cd.md) | 92 | `declaration-track:2db23065748c41239b9da7cdbfd30862968a499a27ea23e96a06fc94b74f8517` |
| 6 | `instance` | [Colex.instLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/colex-instle--254da1f0c1fa3616838ba3f8.md) | 96 | `declaration-track:254da1f0c1fa3616838ba3f83f67a4c4f7d1611fe53613854288a029bc86b454` |
| 7 | `theorem` | [Colex.lt_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/colex-lt-def--5eca16074ea9b9b9c1ae88c7.md) | 99 | `result-track:5eca16074ea9b9b9c1ae88c7c82106a7ff785f968a039738c0ade50caf140a8c` |
| 8 | `theorem` | [Colex.le_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/colex-le-def--ae2ad95c0e16babaf5a91893.md) | 104 | `result-track:ae2ad95c0e16babaf5a91893381779ce75cb55f47d1ec46ce5e6216770d203ac` |
| 9 | `theorem` | [Nat.sum_two_pow_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/nat-sum-two-pow-lt--1d15fe458fdd9e83f5ce9419.md) | 110 | `result-track:1d15fe458fdd9e83f5ce94197496cb0ceca2b0fdcb3dc96834c248ecc8babba7` |
| 10 | `theorem` | [hom_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/hom-lt-iff--8a9977cb347cf783098522ed.md) | 122 | `result-track:8a9977cb347cf783098522ed3b4e325f26324ffd1df38bc59b1c3316c6efbe7c` |
| 11 | `theorem` | [hom_fin_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/hom-fin-lt-iff--775532f44e55aefd15413e47.md) | 145 | `result-track:775532f44e55aefd15413e47209d5c4a2829a4c87b39b78484e3f80b072cc076` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/instance--4da99750ed68e807c93699de.md) | 152 | `declaration-track:4da99750ed68e807c93699de9675e2576ebd0fa2e358556568aa6581f86bfa84` |
| 13 | `theorem` | [lt_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/lt-trans--ff286199b2fed4f00f8e5cb4.md) | 156 | `result-track:ff286199b2fed4f00f8e5cb4353da4661b86590e3e3bc6a12991200a6316ce01` |
| 14 | `theorem` | [le_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/le-trans--9fd677223bc396e27072f550.md) | 169 | `result-track:9fd677223bc396e27072f5508e119b8e24bc5316f94493f06a2f60b69c31faea` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/instance--0e531fd679b3eba1f5144e47.md) | 173 | `declaration-track:0e531fd679b3eba1f5144e47ea4e950b76294fd5703368e61b6d31cecca2ccc7` |
| 16 | `theorem` | [lt_trichotomy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/lt-trichotomy--27a74bc1050c56ef8cc1981c.md) | 176 | `result-track:27a74bc1050c56ef8cc1981ccfb9a2db6ab61fdb5c6ccb20664237c1e26c466e` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/instance--75dd2b7a2e5114dbe2ddba1f.md) | 204 | `declaration-track:75dd2b7a2e5114dbe2ddba1ffbf9de830e153e73ffe4202737b28b95b005f4d8` |
| 18 | `instance` | [decidableLt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/decidablelt--25d23deb83a8acaf30e27d09.md) | 207 | `declaration-track:25d23deb83a8acaf30e27d096120f667610d324dbdff29f63f662b9b384c80ec` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/instance--c7eb441bc06dddcdf2ed9ee3.md) | 219 | `declaration-track:c7eb441bc06dddcdf2ed9ee30d95f6558eb96dc6e9fc52826956bcd6e277d3b8` |
| 20 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/example--074d9b026704ad02e2f090f7.md) | 246 | `declaration-track:074d9b026704ad02e2f090f745e53853541e95391d8822c64f52dc9247bba11b` |
| 21 | `theorem` | [hom_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/hom-le-iff--61d6d3f984335f047028c9ff.md) | 250 | `result-track:61d6d3f984335f047028c9ff914a36ecfdda9a20f81af15b4cd922aaccf69d99` |
| 22 | `theorem` | [hom_fin_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/hom-fin-le-iff--53854424ded0930500a1f7b7.md) | 258 | `result-track:53854424ded0930500a1f7b7575da3819513935660c5971103b81139f5d03c93` |
| 23 | `theorem` | [forall_lt_of_colex_lt_of_forall_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/forall-lt-of-colex-lt-of-forall-lt--c5cff876b22a165528c92dda.md) | 266 | `result-track:c5cff876b22a165528c92dda58d950671b975572863eba2154a3053a41a5267f` |
| 24 | `theorem` | [lt_singleton_iff_mem_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/lt-singleton-iff-mem-lt--7fe2655a52e3e0fb01cc06d7.md) | 279 | `result-track:7fe2655a52e3e0fb01cc06d70f8b113c816a7562179102008fd5b41a574ecc34` |
| 25 | `theorem` | [mem_le_of_singleton_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/mem-le-of-singleton-le--8e1003d39ee89d99e723dcf1.md) | 297 | `result-track:8e1003d39ee89d99e723dcf16a851a78bb1ac4a18ecf49ebf02ae963fe6ae48b` |
| 26 | `theorem` | [singleton_lt_iff_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/singleton-lt-iff-lt--b4f5a8da3a48a5ad6ca9b63b.md) | 304 | `result-track:b4f5a8da3a48a5ad6ca9b63ba32f4df8c27e081dafd17bad584d87cbbc5b82e4` |
| 27 | `theorem` | [singleton_le_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/singleton-le-iff-le--ced77832be4fc69e203aef24.md) | 309 | `result-track:ced77832be4fc69e203aef24ea13f8ef74439f1ba629bff8c5fc934f112a2d97` |
| 28 | `theorem` | [sdiff_lt_sdiff_iff_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/sdiff-lt-sdiff-iff-lt--013020643464b7a824e7d4cf.md) | 316 | `result-track:013020643464b7a824e7d4cf9c0b3c9c808e63ebea7d9adf5bf230190722934a` |
| 29 | `theorem` | [sdiff_le_sdiff_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/sdiff-le-sdiff-iff-le--3519e0e0f25b15aeb4571870.md) | 336 | `result-track:3519e0e0f25b15aeb4571870523a7004fc5af68d543c683965242a41e17d8f38` |
| 30 | `theorem` | [empty_toColex_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/empty-tocolex-lt--866138f1641e65b6c4c36edd.md) | 341 | `result-track:866138f1641e65b6c4c36edd353e091075daa10269b1b120372c75c501539c68` |
| 31 | `theorem` | [colex_lt_of_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/colex-lt-of-ssubset--f3926b21deffc12acf75cfcf.md) | 352 | `result-track:f3926b21deffc12acf75cfcf55fb8fa60ffd21c1fac52ad683a3ee923cfdd28c` |
| 32 | `theorem` | [empty_toColex_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/empty-tocolex-le--bd4f415bacedc713bd8b3ab4.md) | 359 | `result-track:bd4f415bacedc713bd8b3ab45eea9b6ce924d727e5a11cd55fbf96b771ab84cd` |
| 33 | `theorem` | [colex_le_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/colex-le-of-subset--2b53afc170d9f189d433765d.md) | 367 | `result-track:2b53afc170d9f189d433765ddfc2f2a19bde746ff06bb840a81b6fef87f3bfd2` |
| 34 | `def` | [toColexRelHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/tocolexrelhom--ef311e31b85182eaeaec5204.md) | 375 | `declaration-track:ef311e31b85182eaeaec520473407f6087435bcc1f71a332f66ce1ba758f164a` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/instance--a6df512da31bfc11cfb3fa1f.md) | 382 | `declaration-track:a6df512da31bfc11cfb3fa1f332cdbb13aaa27c22647ad2df6187f5241669540` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/instance--120ca70087ec9c497a16b6f9.md) | 386 | `declaration-track:120ca70087ec9c497a16b6f915caeada301fcd0a65bed1eebd97749d182690ec` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/instance--2effae89d942fe109981872d.md) | 390 | `declaration-track:2effae89d942fe109981872d6ff700a4a3a9f54dc8bd02ac3e21336d55a6615c` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/instance--2fe85b656715368a29efc168.md) | 394 | `declaration-track:2fe85b656715368a29efc168cac8ff8b63085f42a6f7be217342092a02ba398e` |
| 39 | `theorem` | [sum_two_pow_lt_iff_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/sum-two-pow-lt-iff-lt--8567e5e59eda8a769f61e371.md) | 399 | `result-track:8567e5e59eda8a769f61e371ae5a06620bef4a520c187fb85d347e7a7387dad0` |
| 40 | `theorem` | [sum_two_pow_le_iff_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/declarations/sum-two-pow-le-iff-lt--11fc19fe0653a5259784e0cc.md) | 426 | `result-track:11fc19fe0653a5259784e0ccf2967cc1a6f0e222522fe1c008d04f6aba456a4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
