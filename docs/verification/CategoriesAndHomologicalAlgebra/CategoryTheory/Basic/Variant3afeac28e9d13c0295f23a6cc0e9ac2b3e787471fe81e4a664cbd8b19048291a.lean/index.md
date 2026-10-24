# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6c021998dc102cf1b41743ee697b50b9343d365",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6c021998dc102cf1b41743ee697b50b9343d365`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Whiskering` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.NatIso` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SigmaHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/sigmahom--bb084aba41e47f5d67107805.md) | 36 | `declaration-track:bb084aba41e47f5d6710780533178d292ee09bd0dd52ae24c101ffc75ed38c72` |
| 2 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/id--42c9f0278410b96d01c1f1e3.md) | 42 | `declaration-track:42c9f0278410b96d01c1f1e3705bdcf81d2e166465624cf03dca5660dc935c97` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/instance--b2dfba29057c69042986c7a0.md) | 46 | `declaration-track:b2dfba29057c69042986c7a08056100fcb51c0802caabbdc66bc2e50ce4989cb` |
| 4 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/comp--db62980610223301dd93ebcc.md) | 50 | `declaration-track:db62980610223301dd93ebcc7f22d997ad1f29ad2d5712f08743f04e78ded215` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/instance--30ecdcfc48f9cd4e2824d046.md) | 54 | `declaration-track:30ecdcfc48f9cd4e2824d0468b80c4322f5fa56d8ba6962fbf724ee12b5295f6` |
| 6 | `lemma` | [comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/comp-def--252d9063c27c25140fe7cc40.md) | 60 | `result-track:252d9063c27c25140fe7cc405afb7385ce74158f4ff43e7e7f6bc3d97db987c3` |
| 7 | `lemma` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/assoc--c0bee9ddb0823370b41b5149.md) | 63 | `result-track:c0bee9ddb0823370b41b5149cda0a90a1c027b7895f8abc2e7afd050c3b1344f` |
| 8 | `lemma` | [id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/id-comp--26e92e18828eca4051541c68.md) | 66 | `result-track:26e92e18828eca4051541c687f31e56ee3c2613aeb9db07c68abe8ee504a8973` |
| 9 | `lemma` | [comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/comp-id--7535f31ac2876d8381794c72.md) | 69 | `result-track:7535f31ac2876d8381794c72918ad827c761c12a91816b85b0c2af901fa0def6` |
| 10 | `instance` | [sigma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/sigma--65bff83bd2fb0817da744a4a.md) | 74 | `declaration-track:65bff83bd2fb0817da744a4a4c8546d688ac01e843ef3490f74c1a666e3a3597` |
| 11 | `def` | [incl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/incl--f328fb7d48a24422caa03dce.md) | 81 | `declaration-track:f328fb7d48a24422caa03dcec169c0315a4eabc7cd5217c3fac9859f7ab6fcea` |
| 12 | `lemma` | [incl_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/incl-obj--9fe317269b0ee0b8ba4ba10c.md) | 86 | `result-track:9fe317269b0ee0b8ba4ba10c301aff4d24a1f508be06eb284345d77edaa953b5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/instance--7cd70fd61b24d2ec999845bd.md) | 89 | `declaration-track:7cd70fd61b24d2ec999845bdd99f142f30b35c16813f3c282a0a6b2698e1a641` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/instance--eaad4a508236f222e4025561.md) | 92 | `declaration-track:eaad4a508236f222e402556171b3262ceb05c610f05619c1f6613c70fd1d9ec0` |
| 15 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/nattrans--0e78a63584ce41e79c566d8d.md) | 103 | `declaration-track:0e78a63584ce41e79c566d8dd418219ee24b433ef20570a4da2d35151aa61f62` |
| 16 | `lemma` | [natTrans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/nattrans-app--ebf68f7a1d66a7fd001681b1.md) | 110 | `result-track:ebf68f7a1d66a7fd001681b15370349e29c380008b4611706fd85dbaae055686` |
| 17 | `def` | [descMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/descmap--db8c69b227f4247700d3c885.md) | 115 | `declaration-track:db8c69b227f4247700d3c885883c06885a13318baa8144d5ec56e6cee6ab59a1` |
| 18 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/desc--240524b5dc4d8fa8f2725113.md) | 128 | `declaration-track:240524b5dc4d8fa8f2725113fddf5b6d54ce2d9e7a95b51e720cb8c869bccf94` |
| 19 | `lemma` | [desc_map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/desc-map-mk--ab6d412a6ceffbd2657a30bd.md) | 139 | `result-track:ab6d412a6ceffbd2657a30bd3c47dd03cb349d1bd81511adb3b5c53c425bc634` |
| 20 | `def` | [inclDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/incldesc--1cba4102d6a7570ff328aac5.md) | 146 | `declaration-track:1cba4102d6a7570ff328aac52270001dc99cee6b2713e4052c877874f4e7a041` |
| 21 | `lemma` | [inclDesc_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/incldesc-hom-app--4d4357582c025cffabba3761.md) | 150 | `result-track:4d4357582c025cffabba376127830b85c2690f5f1369e5b5cabcdb3f048051b1` |
| 22 | `lemma` | [inclDesc_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/incldesc-inv-app--40338961b3066bcdd424e60c.md) | 154 | `result-track:40338961b3066bcdd424e60c4c9631c6e3645273f163ac64c70b8e0bea2564fe` |
| 23 | `def` | [descUniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/descuniq--7c19bfd95fcc37316a5041f2.md) | 160 | `declaration-track:7c19bfd95fcc37316a5041f2229849c8ca1c0a9be8db0cbb7e46dcaf515d7a71` |
| 24 | `lemma` | [descUniq_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/descuniq-hom-app--7afacca8c705dd738f979a60.md) | 166 | `result-track:7afacca8c705dd738f979a60f8ded4699375c64d09dad3b57afae2f062f01ad5` |
| 25 | `lemma` | [descUniq_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/descuniq-inv-app--a1e9159e54a8216ca5d387b8.md) | 171 | `result-track:a1e9159e54a8216ca5d387b8ff9dcadc4da2a62ce7684928f95d553f18ae99ec` |
| 26 | `def` | [natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/natiso--be6f95b6e6ae81ab2abe9f71.md) | 179 | `declaration-track:be6f95b6e6ae81ab2abe9f710d8bac6e6cdf187a0d81223be3e7637cf482146b` |
| 27 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/map--1701e487d73df6d57f91e364.md) | 190 | `declaration-track:1701e487d73df6d57f91e36435b963738e72e970b9925ce6ed03bfbf42a81287` |
| 28 | `lemma` | [map_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/map-obj--059506081fcf099ffd60f44a.md) | 194 | `result-track:059506081fcf099ffd60f44a77165ecd02134852aa1e8f7bab12633d6ba818ac` |
| 29 | `lemma` | [map_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/map-map--b606ef4eeb4b939c72b02662.md) | 198 | `result-track:b606ef4eeb4b939c72b02662d0583904ed35b8543233dbdb4b329617870e9914` |
| 30 | `def` | [inclCompMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/inclcompmap--206344e3bd6a18acff81a765.md) | 205 | `declaration-track:206344e3bd6a18acff81a765f45c7601d01e1c0bf86a77162cfafd75495ca951` |
| 31 | `def` | [mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/mapid--ed3769f36e95e1a36c23f382.md) | 212 | `declaration-track:ed3769f36e95e1a36c23f382ac89cab667fccd639944fc411b83f43774e6567a` |
| 32 | `def` | [mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/mapcomp--87ddbf0fff777b7e7004cac0.md) | 221 | `declaration-track:87ddbf0fff777b7e7004cac0fdb1a3c1ec3adb749170fd79d984b330a285fe57` |
| 33 | `def` | [sigma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/sigma--2d5445d31a4fa435dde79870.md) | 234 | `declaration-track:2d5445d31a4fa435dde79870157d514eaeb846de8e8e06f41c6f6eacf5cb5819` |
| 34 | `def` | [sigma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/declarations/sigma--e853ebca1c8f4c3faea8eefc.md) | 246 | `declaration-track:e853ebca1c8f4c3faea8eefc10528b9a95394df536a9aa23dfaafb9e4eaa8928` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
