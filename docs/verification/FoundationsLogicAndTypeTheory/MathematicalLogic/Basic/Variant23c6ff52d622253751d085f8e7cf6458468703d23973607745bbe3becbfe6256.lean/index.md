# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbb7674c31ef4249b2e68c1a1531285a3b74128e",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbb7674c31ef4249b2e68c1a1531285a3b74128e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instInhabitedSigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/instinhabitedsigma--da0aa799844458d5b1b647be.md) | 40 | `declaration-track:da0aa799844458d5b1b647bedfeadd04aaff1c57b1fd42572fd1a60f99b6dd0c` |
| 2 | `instance` | [instDecidableEqSigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/instdecidableeqsigma--36534fa18547d1626e42e993.md) | 43 | `declaration-track:36534fa18547d1626e42e9930028eb14d3d49886900b4a97331537b46c079640` |
| 3 | `theorem` | [mk.inj_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/mk-inj-iff--d4aa436e55633e88a2ac5f32.md) | 53 | `result-track:d4aa436e55633e88a2ac5f32394589770c5dd37575a203134ff2a783e63b6e0a` |
| 4 | `theorem` | [eta](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/eta--b61596068e5e56fbec623291.md) | 57 | `result-track:b61596068e5e56fbec6232916bed3660b2b5dac5aa0a26b26df3b43281d04131` |
| 5 | `theorem` | [eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/eq--d321ec2d45ba99d606d3ab68.md) | 60 | `result-track:d321ec2d45ba99d606d3ab688ed89acce97ec6720d34e0476cfafe6aabbd345f` |
| 6 | `theorem` | [_root_.Function.eq_of_sigmaMk_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/root-function-eq-of-sigmamk-comp--b5a34b8f8e7f20f7e2cdb725.md) | 65 | `result-track:b5a34b8f8e7f20f7e2cdb725179a850155a12186c56c15269c0646b3e70df2ef` |
| 7 | `theorem` | [subtype_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/subtype-ext--97062521cecd050e6e24b648.md) | 74 | `result-track:97062521cecd050e6e24b648463abe5559f890aebc38d49d8037d896f76c81fa` |
| 8 | `theorem` | [«forall»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/forall--e46743c4627a5d83f559f8b6.md) | 79 | `result-track:e46743c4627a5d83f559f8b62f160fe509dfaa446e2d0ad1533f8a2885080867` |
| 9 | `theorem` | [«exists»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/exists--795ea936feb23f263859ac57.md) | 83 | `result-track:795ea936feb23f263859ac57be890a745d23148decbe3aee4a677c9e80741309` |
| 10 | `lemma` | [exists'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/exists--090928b26201adf9e5793eab.md) | 86 | `result-track:090928b26201adf9e5793eab736dc5f2cf35e76fd945fe4cb7f96c2f1d6f9682` |
| 11 | `lemma` | [forall'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/forall--8c01e52d517bc3366adad80c.md) | 89 | `result-track:8c01e52d517bc3366adad80c786eca1acfdbef3715f970dddb5e8943b139193e` |
| 12 | `theorem` | [_root_.sigma_mk_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/root-sigma-mk-injective--52ddfa35c426fe0127ceb611.md) | 92 | `result-track:52ddfa35c426fe0127ceb611abdc2a2baeaee44ff1765e3fa586ebbdab32843e` |
| 13 | `theorem` | [fst_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/fst-surjective--288a5d0cfc5a23fe286c039f.md) | 95 | `result-track:288a5d0cfc5a23fe286c039fb979975e4286a887fc4d1c2a06af113b94bf733b` |
| 14 | `theorem` | [fst_surjective_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/fst-surjective-iff--e00c38355bbd6f3ce7df1676.md) | 98 | `result-track:e00c38355bbd6f3ce7df1676bee5f36003fba641da1033a53bb51512a8b832d4` |
| 15 | `theorem` | [fst_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/fst-injective--de94122fdb6cf4b13c180cb7.md) | 101 | `result-track:de94122fdb6cf4b13c180cb7da928ed28e4e89e7ca2d17defef8082286651092` |
| 16 | `theorem` | [fst_injective_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/fst-injective-iff--9db3a108c0e3d2612a5036d6.md) | 105 | `result-track:9db3a108c0e3d2612a5036d6e149a1578f35a47d02a21cb81fec5e6f9e8b88df` |
| 17 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/map--fcd01b5990f2b69ca83a568a.md) | 109 | `declaration-track:fcd01b5990f2b69ca83a568a55c9f820fa7956f26270619be9754816822dee17` |
| 18 | `lemma` | [map_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/map-mk--dd40ed059ca2e2194aeb5b2b.md) | 112 | `result-track:dd40ed059ca2e2194aeb5b2bf05591790decb971b14ec82fa6b591a87ae9c863` |
| 19 | `theorem` | [Function.Injective.sigma_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/function-injective-sigma-map--256086d41c1e223931ca06ef.md) | 116 | `result-track:256086d41c1e223931ca06ef00d2429dbe3328bba56ca32cd272b4adaad0c9b7` |
| 20 | `theorem` | [Function.Injective.of_sigma_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/function-injective-of-sigma-map--f5aaa7a30cab51abf192d4c0.md) | 123 | `result-track:f5aaa7a30cab51abf192d4c0a2adc6e404e4b0b05fdd34c853f43d14da2d3748` |
| 21 | `theorem` | [Function.Injective.sigma_map_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/function-injective-sigma-map-iff--25322d39960c121821c575af.md) | 127 | `result-track:25322d39960c121821c575af3770a5e77139f331335d6790a5bdace72ddc5a21` |
| 22 | `theorem` | [Function.Surjective.sigma_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/function-surjective-sigma-map--6a377885cbb21b97047948de.md) | 131 | `result-track:6a377885cbb21b97047948dea226df38b5992ee90a10d31a39c594e9fca6d6c2` |
| 23 | `def` | [Sigma.curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/sigma-curry--b446c377b667095be61fc06e.md) | 139 | `declaration-track:b446c377b667095be61fc06eddedf4087fc0813940ee9249b75e4fce34493ee1` |
| 24 | `def` | [Sigma.uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/sigma-uncurry--771b9460f5a8f0e966e8e1f2.md) | 145 | `declaration-track:771b9460f5a8f0e966e8e1f2f938dac0f66eab6c08ff46ca03c097a2aab2c329` |
| 25 | `theorem` | [Sigma.uncurry_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/sigma-uncurry-curry--5922c7e6ce25df8d3899896b.md) | 149 | `result-track:5922c7e6ce25df8d3899896b29132d606b7f39122d1f784f78ed88c6934529be` |
| 26 | `theorem` | [Sigma.curry_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/sigma-curry-uncurry--a9a62bf780be52fcb5ac63bb.md) | 154 | `result-track:a9a62bf780be52fcb5ac63bbfdafa6631c470cad447a2ee8a399327ac7b0b415` |
| 27 | `theorem` | [Sigma.curry_update](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/sigma-curry-update--2e7a3ec0901874702be80e2e.md) | 158 | `result-track:2e7a3ec0901874702be80e2ec94c8efc174da1cde5def1d7da0251edd2ac433d` |
| 28 | `def` | [Prod.toSigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/prod-tosigma--459140ea0cf1f2c9339f04e0.md) | 177 | `declaration-track:459140ea0cf1f2c9339f04e0f82f6c03e0bb0bbc7996fee8b37f1ebd7831a3c5` |
| 29 | `theorem` | [Prod.fst_comp_toSigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/prod-fst-comp-tosigma--bb8e7a8b35d73f21755aa0e5.md) | 181 | `result-track:bb8e7a8b35d73f21755aa0e51d1457540bb88d5fcbd23cbb9923dda20b83f38a` |
| 30 | `theorem` | [Prod.fst_toSigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/prod-fst-tosigma--caeb50bebdc62de6b6474dc2.md) | 185 | `result-track:caeb50bebdc62de6b6474dc2a918e89d2c848cd6c8e2a58b5a43e4d8033b8103` |
| 31 | `theorem` | [Prod.snd_toSigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/prod-snd-tosigma--8bb995f2af5fb16ca7bac1af.md) | 189 | `result-track:8bb995f2af5fb16ca7bac1af323ebcfd43eecda9d954b3a95399713f3d4e5289` |
| 32 | `theorem` | [Prod.toSigma_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/prod-tosigma-mk--013ccfc28e73e84ae7d9e3ec.md) | 193 | `result-track:013ccfc28e73e84ae7d9e3ecb81c68bf7563134b120ce00c4d2c47ad7576fb4e` |
| 33 | `def` | [elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/elim--5d37ad4b6a8a73fa765f0078.md) | 203 | `declaration-track:5d37ad4b6a8a73fa765f0078878a689732ad9ae86c5fb05aa9a74b2ea4e3872a` |
| 34 | `theorem` | [elim_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/elim-val--f3b9896e56da38c5039283f0.md) | 207 | `result-track:f3b9896e56da38c5039283f0cccac52fbbfcd52c35a60890dd542d022e28b54a` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/instance--3ca7176e4dd2f3c1758112fc.md) | 210 | `declaration-track:3ca7176e4dd2f3c1758112fcdb844a3ff70f7de7457c306c93170e13d2019942` |
| 36 | `instance` | [decidableEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/decidableeq--f1f1051f24c437a27b752a89.md) | 213 | `declaration-track:f1f1051f24c437a27b752a89023429003d4e7b607b0f523eeaf57a288794ab44` |
| 37 | `theorem` | [mk.inj_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/mk-inj-iff--6d5a8f2ca096fffdaebab120.md) | 222 | `result-track:6d5a8f2ca096fffdaebab120baff7346b54661806876648fbcbbe4e39882b7d1` |
| 38 | `theorem` | [«forall»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/forall--a729ddb64b509d83dc8106a4.md) | 229 | `result-track:a729ddb64b509d83dc8106a42d6f2828f76afe1cc6118ec80c8044e11c6f0dd9` |
| 39 | `lemma` | [«exists»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/exists--7e21ff9f43db23a1649121b8.md) | 232 | `result-track:7e21ff9f43db23a1649121b86d34dd688ce266e2835fcd79c7bd4cea61c2a68c` |
| 40 | `theorem` | [subtype_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/subtype-ext--c5727e3e63901452af6c7d5d.md) | 237 | `result-track:c5727e3e63901452af6c7d5d92b88fae823e0ec54e31edf35ee6e78cc7f8e124` |
| 41 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant23c6ff52d622253751d085f8e7cf6458468703d23973607745bbe3becbfe6256.lean/declarations/map--4e9a228bfb64c943e01a631e.md) | 244 | `declaration-track:4e9a228bfb64c943e01a631e99475f2716c232157bd52599d6dc54d5ab736ab1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
