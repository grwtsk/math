# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Defs.Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "083e01712b4ff4005135b80928b7b11e5245b218",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `083e01712b4ff4005135b80928b7b11e5245b218`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean.json)

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
| 1 | `def` | [factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization--53d333dc50d194fb8737292f.md) | 58 | `declaration-track:53d333dc50d194fb8737292f942fdc8d4c9276de853c64fd479ccc06c1a212db` |
| 2 | `lemma` | [support_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/support-factorization--a34ec5abf8894076726a14e2.md) | 62 | `result-track:a34ec5abf8894076726a14e27bcccbd793933da0dd1a25f191d15293795efdf5` |
| 3 | `theorem` | [primeFactorsList_count_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/primefactorslist-count-eq--86c96d280c60aa6b75f93509.md) | 64 | `result-track:86c96d280c60aa6b75f935092fe7f4103527b30a685f2821f33df5869e1c09ed` |
| 4 | `theorem` | [factorization_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-def--26b87724642332522cfd261f.md) | 70 | `result-track:26b87724642332522cfd261f2240f398be233cc8c8c77d98fee7bab2434d7444` |
| 5 | `theorem` | [factorization_le_padicValNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-le-padicvalnat--31b9d6afffa5b768f85567c5.md) | 83 | `result-track:31b9d6afffa5b768f85567c58d30049ad3de9d9f3cf4fd40f8338310e47ba549` |
| 6 | `theorem` | [factorization_eq_primeFactorsList_multiset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-eq-primefactorslist-multiset--f38a651e1d7ba891a120466e.md) | 88 | `result-track:f38a651e1d7ba891a120466e196e64ec0cfdb48dce7de7cd82e7abe3cd78ab79` |
| 7 | `theorem` | [Prime.factorization_pos_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/prime-factorization-pos-of-dvd--615f251d7d42d5e5ca13c0b9.md) | 92 | `result-track:615f251d7d42d5e5ca13c0b98ff91ead31883c41a955247e2fd2ce147c598688` |
| 8 | `theorem` | [multiplicity_eq_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/multiplicity-eq-factorization--e4091cd8de264c314929b687.md) | 96 | `result-track:e4091cd8de264c314929b68713288e1aa4444b7f38778d81b160fca000663beb` |
| 9 | `theorem` | [prod_factorization_pow_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/prod-factorization-pow-eq-self--9a20e041e3475f11448d7dd1.md) | 104 | `result-track:9a20e041e3475f11448d7dd1c97fa8eed8228c9a04c705fbec2670d629b8c448` |
| 10 | `theorem` | [eq_of_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/eq-of-factorization-eq--178a8d8fc36a151d906ffe36.md) | 112 | `result-track:178a8d8fc36a151d906ffe3687c23db6dcb5f3d460d0eb472063e378b406e300` |
| 11 | `theorem` | [eq_of_factorization_eq'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/eq-of-factorization-eq--f2e9790a446a6416251e48ff.md) | 117 | `result-track:f2e9790a446a6416251e48ff844b2811af6f050f73842d8822d553ded8787a49` |
| 12 | `theorem` | [factorization_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-inj--1fd59ccbbf31a3501952dd7b.md) | 123 | `result-track:1fd59ccbbf31a3501952dd7b17bbd3860695129faa5b2b0ffdc28dfeb354ad0f` |
| 13 | `theorem` | [factorization_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-zero--563309b6e8f98f3edf76b240.md) | 127 | `result-track:563309b6e8f98f3edf76b2409131586ee8a0f05668acc565dfbf556c77eb0108` |
| 14 | `theorem` | [factorization_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-one--2daa68c0d4f82bb0cd40c1a2.md) | 130 | `result-track:2daa68c0d4f82bb0cd40c1a27a7aa440137dfc315b87468eaf597ac5978c21f2` |
| 15 | `theorem` | [factorization_eq_zero_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-eq-zero-iff--d97d79b44afa5a4b81947d9b.md) | 134 | `result-track:d97d79b44afa5a4b81947d9b5bff5fccc72a9c28d2ccab08e95e03bfd7574bb0` |
| 16 | `theorem` | [factorization_eq_zero_of_not_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-eq-zero-of-not-prime--d50e064e8e14b47e1e377d4b.md) | 139 | `result-track:d50e064e8e14b47e1e377d4b6d86e33f0ab68380090128bba95219589cdabd27` |
| 17 | `theorem` | [factorization_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-zero-right--6c81b5a22ea86dcb7e59ecc1.md) | 143 | `result-track:6c81b5a22ea86dcb7e59ecc181357269b2f6994309af5437c311707094141a97` |
| 18 | `theorem` | [factorization_one_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-one-right--bb37cae4eff0ab4e5e4cbdc8.md) | 147 | `result-track:bb37cae4eff0ab4e5e4cbdc80259a9ccb2b243dddcfd92bfb976bb05f095cd58` |
| 19 | `theorem` | [factorization_eq_zero_of_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-eq-zero-of-not-dvd--3edf7ad2d8ef1ff9ce97f0c3.md) | 150 | `result-track:3edf7ad2d8ef1ff9ce97f0c3832d842cb7d793c0bf333bda6b19df670e6dbf83` |
| 20 | `theorem` | [factorization_eq_zero_of_remainder](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-eq-zero-of-remainder--871a401012f85cc7ff7095e6.md) | 153 | `result-track:871a401012f85cc7ff7095e6d84ff2fc8e440b95bf6095622525f348de6bbf9e` |
| 21 | `theorem` | [factorization_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-mul--86e8b3fea25a717e4bada915.md) | 162 | `result-track:86e8b3fea25a717e4bada915a0bb706bca363aa716f1ffe616d77358cf6e5717` |
| 22 | `theorem` | [factorization_le_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-le-iff-dvd--810e9b8ea331e59767fd0f8e.md) | 168 | `result-track:810e9b8ea331e59767fd0f8e05adc7975c5c20c62a2d8e452229013ef39fb761` |
| 23 | `theorem` | [factorization_prod](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-prod--90c754d4d0884d3e5114ce9f.md) | 180 | `result-track:90c754d4d0884d3e5114ce9fceecf6a78de20ae8cdee585a527e790f0af6159b` |
| 24 | `theorem` | [factorization_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-pow--1db59519f7f987679d5a50f6.md) | 191 | `result-track:1db59519f7f987679d5a50f6e39bfc9a06544e4e26988ab54b296f6b21c2cdde` |
| 25 | `theorem` | [isSquare_iff_even_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/issquare-iff-even-factorization--73dcccf89f7fa9b1f3ec66f8.md) | 203 | `result-track:73dcccf89f7fa9b1f3ec66f8f7c91277cbe7ca7a4c10c0d05ff5fe51e9709b09` |
| 26 | `theorem` | [isSquare_iff_nonneg_even_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/issquare-iff-nonneg-even-factorization--327156dd1e64a48e04830256.md) | 223 | `result-track:327156dd1e64a48e0483025608c4ad28994aa02badb094a9a4ee4df15b3043e5` |
| 27 | `theorem` | [Prime.factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/prime-factorization--857bd274db856223eef34a91.md) | 242 | `result-track:857bd274db856223eef34a91fe3df68b4fb010b23d3a5deca3a1935ddafc87e4` |
| 28 | `theorem` | [Prime.factorization_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/prime-factorization-pow--5133503bc6bd7e2e18dc7e64.md) | 248 | `result-track:5133503bc6bd7e2e18dc7e644e5c61e116f3ab4e6757aa9d79f495114e4a9e35` |
| 29 | `theorem` | [pow_succ_factorization_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/pow-succ-factorization-not-dvd--73d4016a287b47be4a19d03e.md) | 251 | `result-track:73d4016a287b47be4a19d03eefcf2a49e55d29bb1fcb4d4942b1e259c496ea8d` |
| 30 | `lemma` | [factorization_minFac_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-minfac-ne-zero--18a65ba41fc24c9f080f8966.md) | 257 | `result-track:18a65ba41fc24c9f080f8966a2954d84537a915cabdc0ff05331186186e98806` |
| 31 | `theorem` | [prod_pow_factorization_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/prod-pow-factorization-eq-self--8de3cd661ac260666a0626e1.md) | 270 | `result-track:8de3cd661ac260666a0626e12fffd5fe50831481c1bc599bef570add9720c9ae` |
| 32 | `theorem` | [eq_factorization_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/eq-factorization-iff--fa01a509d46d2885613a58ca.md) | 276 | `result-track:fa01a509d46d2885613a58cadb34425dfcdd355fef4566be3dc218b33f779f3d` |
| 33 | `theorem` | [factorization_prod_pow_eq_self_of_le_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-prod-pow-eq-self-of-le-factorization--60adf0ce6fe5d8e1fffd86d4.md) | 281 | `result-track:60adf0ce6fe5d8e1fffd86d4890aafa46ba884ffac01c8717ed2b4f5187f3852` |
| 34 | `theorem` | [prod_pow_dvd_of_le_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/prod-pow-dvd-of-le-factorization--03556a7153066704d7174813.md) | 285 | `result-track:03556a7153066704d7174813e2bbe7b72de9deadf04358ad8b48077e192c63a5` |
| 35 | `theorem` | [dvd_prod_pow_of_factorization_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/dvd-prod-pow-of-factorization-le--76047f95d3acea8d72c24219.md) | 292 | `result-track:76047f95d3acea8d72c2421967fdfd900a22eaf1988e4abf7e87e0775eeb5eb6` |
| 36 | `theorem` | [dvd_iff_exists_le_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/dvd-iff-exists-le-factorization--684c22e6afbb0354bce7fc43.md) | 298 | `result-track:684c22e6afbb0354bce7fc431cc63fb38c010ce1c50e83dfb1c12443ba0aa8c6` |
| 37 | `def` | [factorizationEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorizationequiv--77b08ac0333e81300eb056a5.md) | 306 | `declaration-track:77b08ac0333e81300eb056a54878fb3985fcca1593c766c2240fa24a32da16c2` |
| 38 | `theorem` | [factorization_mul_apply_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-mul-apply-of-coprime--f3722cb13f9a58881c3ec152.md) | 317 | `result-track:f3722cb13f9a58881c3ec152d8bc344c8b99899d7def614d5e2deb033712874e` |
| 39 | `theorem` | [factorization_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorization-mul-of-coprime--ada26166ca6e5a8d42a6a6bb.md) | 323 | `result-track:ada26166ca6e5a8d42a6a6bbfe4623600cf1c7c04f354d45270f3023f2ea2a79` |
| 40 | `theorem` | [ordProj_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/ordproj-dvd--50e06dbdd9c0b353bd1da1fb.md) | 340 | `result-track:50e06dbdd9c0b353bd1da1fb1ec713d5cba6da84ae0d5d91c2210324c3462289` |
| 41 | `lemma` | [ordProj_dvd_ordProj_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/ordproj-dvd-ordproj-iff-dvd--8c060c20d6b5d27e3a6bb5f6.md) | 348 | `result-track:8c060c20d6b5d27e3a6bb5f657e480a092de001cca09b78924b5bfc31deb8372` |
| 42 | `def` | [factorizationLCMLeft](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorizationlcmleft--6ffbce02b785dceb91131f26.md) | 360 | `declaration-track:6ffbce02b785dceb91131f26fae5c200ec5a904642810c34ff7ef286badfa76f` |
| 43 | `def` | [factorizationLCMRight](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/declarations/factorizationlcmright--6175c1cf0fe5b423c307cb80.md) | 373 | `declaration-track:6175c1cf0fe5b423c307cb80f9ecaca173c8e39c700c2818e971189542d0e8be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
