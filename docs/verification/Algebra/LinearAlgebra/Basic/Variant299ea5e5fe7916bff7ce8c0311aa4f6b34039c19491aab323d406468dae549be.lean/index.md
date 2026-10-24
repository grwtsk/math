# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "309ed400cb1c70e0ed7620efec358f1c7e592b28",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `309ed400cb1c70e0ed7620efec358f1c7e592b28`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PerfectPairing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/perfectpairing--1d2d2f566ce0eba5f28701e7.md) | 48 | `declaration-track:1d2d2f566ce0eba5f28701e78486739fb9e027df58aff89dd2efff62e52ba0e3` |
| 2 | `def` | [mkOfInjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/mkofinjective--3961c32da721d95640056125.md) | 65 | `declaration-track:3961c32da721d95640056125ef9d6e64bb4a9f49a0873b7f57268b10abd8c50a` |
| 3 | `def` | [mkOfInjective'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/mkofinjective--fc5e65bf8e158a5a13b5dda5.md) | 79 | `declaration-track:fc5e65bf8e158a5a13b5dda50c7b6cba17484af77dd5974448bb1310802c7d97` |
| 4 | `instance` | [instFunLike](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/instfunlike--4d7e863aeea3486d6c5da810.md) | 91 | `declaration-track:4d7e863aeea3486d6c5da810e95e3436e5aa9d49cdcea1704e8f686833df7c22` |
| 5 | `lemma` | [toLinearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/tolinearmap-apply--29524cc81487aa0799a9d913.md) | 96 | `result-track:29524cc81487aa0799a9d91391b5cf5fe9cdb88ebbdfc821990ea4dde6f5ad7b` |
| 6 | `lemma` | [mk_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/mk-apply-apply--a5e8d765e985c4c8de0ef933.md) | 101 | `result-track:a5e8d765e985c4c8de0ef933f0267b719e9e15eb8a2bdecf1430bcdc3abe6349` |
| 7 | `def` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/flip--f95e953096c3985dd3e4452a.md) | 108 | `declaration-track:f95e953096c3985dd3e4452a4cc99cbe4a3574cd60d77186a02d31789a12c3ca` |
| 8 | `lemma` | [flip_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/flip-apply-apply--0f14d8abf2bf38f9cace911c.md) | 114 | `result-track:0f14d8abf2bf38f9cace911ccfd3c8deef29d1849af6323312099a12969b0284` |
| 9 | `lemma` | [flip_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/flip-flip--52078aa6d147ad3c1b7a9d22.md) | 118 | `result-track:52078aa6d147ad3c1b7a9d227ff8a283ee0a4054ff5e9858e29a1eacbbe66bde` |
| 10 | `def` | [toDualLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/todualleft--f94488ad98765891def983c4.md) | 122 | `declaration-track:f94488ad98765891def983c451fc475a530eb246edf6a40dd65eccfdfa90e169` |
| 11 | `theorem` | [toDualLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/todualleft-apply--f8774808751f3a2b3af6bae3.md) | 126 | `result-track:f8774808751f3a2b3af6bae3020dad84db5b0ce9da1f92017946714c333bdac1` |
| 12 | `theorem` | [apply_toDualLeft_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/apply-todualleft-symm-apply--f8cc157c7f48bb3cb4ef82f9.md) | 130 | `result-track:f8cc157c7f48bb3cb4ef82f9634f91005c054b46677efd4f0854f10b22d396b7` |
| 13 | `def` | [toDualRight](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/todualright--c3e22c0ef261062a8cf8d4de.md) | 136 | `declaration-track:c3e22c0ef261062a8cf8d4ded7624bace047a53069ac9c7453cf01badf97f04c` |
| 14 | `theorem` | [toDualRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/todualright-apply--a875d45da637316d5c648d62.md) | 140 | `result-track:a875d45da637316d5c648d62acc99a8e2bae5d7c18a991f299ce6a4ddf37c50e` |
| 15 | `theorem` | [apply_apply_toDualRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/apply-apply-todualright-symm--d1fdce40f3ae6ec23b00f74b.md) | 144 | `result-track:d1fdce40f3ae6ec23b00f74b48ab81eeae3dae54ceb84237292b14a75735f184` |
| 16 | `theorem` | [toDualLeft_of_toDualRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/todualleft-of-todualright-symm--cf2052d4f36704dae9885381.md) | 150 | `result-track:cf2052d4f36704dae98853811915dd9f74cae5072cc255d0c5c2f7f996b6690b` |
| 17 | `theorem` | [toDualRight_symm_toDualLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/todualright-symm-todualleft--edef2164cab9b728a71e6763.md) | 155 | `result-track:edef2164cab9b728a71e6763b6943b58acaa700e6e4dfa7962339545ba78aa4b` |
| 18 | `theorem` | [toDualRight_symm_comp_toDualLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/todualright-symm-comp-todualleft--6af3c8fe6de29e51d52020c3.md) | 161 | `result-track:6af3c8fe6de29e51d52020c3d56509b14740feaa2db074daecd16292db00b499` |
| 19 | `theorem` | [bijective_toDualRight_symm_toDualLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/bijective-todualright-symm-todualleft--fe00c7f7648c9f87e36d3adf.md) | 166 | `result-track:fe00c7f7648c9f87e36d3adfd0c3936d9c1d74841d64d187109cd289517c34bb` |
| 20 | `theorem` | [reflexive_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/reflexive-left--8477d00aa3baed23132240d2.md) | 172 | `result-track:8477d00aa3baed23132240d2432fe4835acdc1c5bc19800af1da8fcce92de854` |
| 21 | `theorem` | [reflexive_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/reflexive-right--2daa9c9f75a513d5f1e0a448.md) | 178 | `result-track:2daa9c9f75a513d5f1e0a44865d1eeda415cb6ab8a4dc123e076a98656d647ac` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/instance--2f7034d1de6754b25b9a47a8.md) | 181 | `declaration-track:2f7034d1de6754b25b9a47a8975f62e1b236c0e518752db38a6aefcccf8403e7` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/instance--b2473891d9abd53767c4e0ab.md) | 194 | `declaration-track:b2473891d9abd53767c4e0abc9c38ef28709120ec89d6b6aaa7607630734f23b` |
| 24 | `theorem` | [finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/finrank-eq--68503d3c3e757b4e01ac4eda.md) | 199 | `result-track:68503d3c3e757b4e01ac4eda8b51172a45f212e8446c068f4c9a35197cb0d4b5` |
| 25 | `structure` | [IsPerfectCompl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/isperfectcompl--78a9603cc5506ab3dc48fdf1.md) | 206 | `declaration-track:78a9603cc5506ab3dc48fdf1bb741c4166a82535022cc4d25a25d2be0e65841d` |
| 26 | `lemma` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/flip--3adb16705ae040c2846c4d32.md) | 215 | `result-track:3adb16705ae040c2846c4d32f5e7cea46ce7a470d6d882723fa6b4ad08779202` |
| 27 | `lemma` | [flip_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/flip-iff--3c893be73011fd1d4bbc029c.md) | 221 | `result-track:3c893be73011fd1d4bbc029c02dc26311700b18b4a331b81b21b166628ddf01d` |
| 28 | `lemma` | [left_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/left-top-iff--95ef84d786d409e9a5317caa.md) | 226 | `result-track:95ef84d786d409e9a5317caaa8985e22410002df9af1c0beb1740858e3751f2d` |
| 29 | `lemma` | [right_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/right-top-iff--fbfd1ef9e6127cce7a873934.md) | 236 | `result-track:fbfd1ef9e6127cce7a8739346ecac08dbfaa97b74335b1010b47c209b7c601f9` |
| 30 | `def` | [IsReflexive.toPerfectPairingDual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/isreflexive-toperfectpairingdual--9ba4ba593a991ddb2d8e2ec7.md) | 249 | `declaration-track:9ba4ba593a991ddb2d8e2ec7ab519957ddd9d623db7f0a87e34f0b72bd43b9a3` |
| 31 | `lemma` | [IsReflexive.toPerfectPairingDual_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/isreflexive-toperfectpairingdual-apply--52e28bb0994d6756f1a181de.md) | 255 | `result-track:52e28bb0994d6756f1a181def04c500c69ef007be929287e8143c72b536e4525` |
| 32 | `def` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/flip--4bf886ce40f71e736131746d.md) | 265 | `declaration-track:4bf886ce40f71e736131746dad9ca45267fc19790da1013db484fb37e1ea9e1c` |
| 33 | `lemma` | [coe_toLinearMap_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/coe-tolinearmap-flip--455d70bfaf89a41a4ad5dbde.md) | 268 | `result-track:455d70bfaf89a41a4ad5dbde586554d54bea3be82a6651cbe48d95122cde6f4c` |
| 34 | `lemma` | [flip_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/flip-apply--09a63e99d125d2e994e915a8.md) | 270 | `result-track:09a63e99d125d2e994e915a8b3ca45171356988b46fff64b9fabec03ffb44ad1` |
| 35 | `lemma` | [symm_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/symm-flip--a3662dd38741183c97afbcbf.md) | 272 | `result-track:a3662dd38741183c97afbcbfc77fe1913fbf1efc89d35db6d94d3f25f8fada5e` |
| 36 | `lemma` | [trans_dualMap_symm_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/trans-dualmap-symm-flip--2f289c0e9125542f30c8c560.md) | 274 | `result-track:2f289c0e9125542f30c8c560b3d02f7f680786225bb3b74a16eca3458acafa07` |
| 37 | `lemma` | [isReflexive_of_equiv_dual_of_isReflexive](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/isreflexive-of-equiv-dual-of-isreflexive--bf4837c3529562bbe5dfdceb.md) | 279 | `result-track:bf4837c3529562bbe5dfdceb5540568c94955cb5e938074b7ffb788d3d2cde8a` |
| 38 | `lemma` | [flip_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/flip-flip--fd1be59de66ad5892da27363.md) | 284 | `result-track:fd1be59de66ad5892da273633d13bbe18e679623b97da8af54cab220ad0c69e5` |
| 39 | `def` | [toPerfectPairing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/toperfectpairing--81cdc9cbef07088fb7cc5a1c.md) | 289 | `declaration-track:81cdc9cbef07088fb7cc5a1ca40fc464fe2183e352261f7225f15a16004424e7` |
| 40 | `def` | [PerfectPairing.dual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/perfectpairing-dual--ffee91d901d6b4939de7c31b.md) | 297 | `declaration-track:ffee91d901d6b4939de7c31b79274c1fd8568c403d096eafd30f0cc31a9589a9` |
| 41 | `lemma` | [dualCoannihilator_map_linearEquiv_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/dualcoannihilator-map-linearequiv-flip--d45f64290f62b2ac747789ab.md) | 307 | `result-track:d45f64290f62b2ac747789ab8de7447697b4192f365123b04d91c393c52ca6d4` |
| 42 | `lemma` | [map_dualAnnihilator_linearEquiv_flip_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/map-dualannihilator-linearequiv-flip-symm--6f225d6fb20d5802dbb6f0be.md) | 312 | `result-track:6f225d6fb20d5802dbb6f0be5788fbd8eba7b55a9ec70ab47fb921bf14c9ccb7` |
| 43 | `lemma` | [map_dualCoannihilator_linearEquiv_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/map-dualcoannihilator-linearequiv-flip--7a2d9eeb97166129c75607a9.md) | 318 | `result-track:7a2d9eeb97166129c75607a96452a547956e6aae1a9c8f1f082d3d2ffb1b1266` |
| 44 | `lemma` | [dualAnnihilator_map_linearEquiv_flip_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant299ea5e5fe7916bff7ce8c0311aa4f6b34039c19491aab323d406468dae549be.lean/declarations/dualannihilator-map-linearequiv-flip-symm--763a12ccf1ade76ac135a686.md) | 328 | `result-track:763a12ccf1ade76ac135a68615f26bbdf8c60734f7a3acd06503b2776ae130a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
