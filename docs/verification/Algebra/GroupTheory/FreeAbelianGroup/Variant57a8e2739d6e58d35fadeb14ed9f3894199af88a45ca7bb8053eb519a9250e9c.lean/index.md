# Verification target: GRWTSK.Algebra.GroupTheory.FreeAbelianGroup.Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac0fcf33a584a0ab938b10d7b50a771e691b0c88",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac0fcf33a584a0ab938b10d7b50a771e691b0c88`.

Source path: `GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeAbelianGroup](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/freeabeliangroup--ff6ac7dd9ed60ff9f9d50afa.md) | 75 | `declaration-track:ff6ac7dd9ed60ff9f9d50afa941a6a92b25dc238823e0550eee5138fc2b6dd0a` |
| 2 | `instance` | [FreeAbelianGroup.addCommGroup](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/freeabeliangroup-addcommgroup--5d9db126eb105c9703f91311.md) | 81 | `declaration-track:5d9db126eb105c9703f913115648f2c521bf0d5cf84266416ca7db52acde398f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/instance--048d781ddcaefac45863b4ba.md) | 84 | `declaration-track:048d781ddcaefac45863b4ba9dee255b9d437e296a2cb57219fa076cdfe55f04` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/of--776d2704702267e6debe3751.md) | 92 | `declaration-track:776d2704702267e6debe375170f9478c7932b3b09625fd1cfcafbf753bf44f59` |
| 5 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/lift--c94eeac1322719c75b0e30af.md) | 97 | `declaration-track:c94eeac1322719c75b0e30afbb043c7111a1f9c65a5e7c5a49d00d44f220c8de` |
| 6 | `theorem` | [of](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/of--8d9c2d6132f2ecd1d2a868e2.md) | 110 | `result-track:8d9c2d6132f2ecd1d2a868e2ec9da3b3f5261c7acfd28a99d1f513ee8e476d11` |
| 7 | `theorem` | [unique](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/unique--3e6b213764731e32af5993a1.md) | 116 | `result-track:3e6b213764731e32af5993a18133b1806c690d69063e56178c67a80ea1b8c18c` |
| 8 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/ext--46e15f95efce5b1de5b12fb0.md) | 123 | `result-track:46e15f95efce5b1de5b12fb0c3de719f74f52febb9e4cfac2ee68524553a2ede` |
| 9 | `theorem` | [map_hom](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-hom--27bb49cd9f70017a6f30c221.md) | 127 | `result-track:27bb49cd9f70017a6f30c2214860b472e630096cca8841dc3668204aa0f84279` |
| 10 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/of-injective--87ea3dd4f0474cad674e5d11.md) | 142 | `result-track:87ea3dd4f0474cad674e5d11918a425454efbe652865618618e33728392cb7fb` |
| 11 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/induction-on--c880353036e3a00daa06fc82.md) | 156 | `result-track:c880353036e3a00daa06fc82168eeb5286d146f4023b9d437f6969df9492438d` |
| 12 | `theorem` | [lift.add'](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/lift-add--8c23a37da8b261b4bd4aebf4.md) | 164 | `result-track:8c23a37da8b261b4bd4aebf45f352041f402cc4212735c465e46941a7ac89659` |
| 13 | `def` | [liftAddGroupHom](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/liftaddgrouphom--0c0cca4dbe35b231a50dbc6f.md) | 180 | `declaration-track:0c0cca4dbe35b231a50dbc6f2bfab88a5b10d5a1c4d91db3b83da532bc610274` |
| 14 | `theorem` | [lift_neg'](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/lift-neg--9ff4ad821eac7318e0bc278e.md) | 184 | `result-track:9ff4ad821eac7318e0bc278e36966be6a0b3730629ea1664009a08a63e85a444` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/instance--9537d4cce3aac78ca608ca66.md) | 192 | `declaration-track:9537d4cce3aac78ca608ca66f2b784f69c110e6fb435b1c5d0e5019caa1b3173` |
| 16 | `theorem` | [induction_on'](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/induction-on--67aaffa21d8a11f1c433e4c2.md) | 197 | `result-track:67aaffa21d8a11f1c433e4c2cc7b02794456fa0c652f1ce0ce48281709a20211` |
| 17 | `theorem` | [map_pure](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-pure--2907595ec1277476ad496b67.md) | 204 | `result-track:2907595ec1277476ad496b671839b06a20ea4d838a0fc170568aae750c2dcd62` |
| 18 | `theorem` | [map_zero](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-zero--be351d2e59f09c786ad73fbd.md) | 209 | `result-track:be351d2e59f09c786ad73fbd081a577bbfc4489061f998e8990f12c55726f3e6` |
| 19 | `theorem` | [map_add](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-add--24d7c5502faa362a841e001a.md) | 214 | `result-track:24d7c5502faa362a841e001a931e8de187251168ea70c40c7d96165acd7c892b` |
| 20 | `theorem` | [map_neg](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-neg--17baa84618eada453a33e240.md) | 220 | `result-track:17baa84618eada453a33e240acf620cc8c2264daadef12718d5bc78e50f42685` |
| 21 | `theorem` | [map_sub](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-sub--0ae21ea9e5eb1898a220c19f.md) | 225 | `result-track:0ae21ea9e5eb1898a220c19fcf15c58b9b85b56dea48c440b114e936773cceb1` |
| 22 | `theorem` | [map_of](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-of--fc6f256dd9c089aedf67be93.md) | 231 | `result-track:fc6f256dd9c089aedf67be93cb80ab324c4621b27a882c34417ff327f16417f9` |
| 23 | `theorem` | [pure_bind](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/pure-bind--81bc079632aa9dce4e5a7497.md) | 236 | `result-track:81bc079632aa9dce4e5a749752ffb45ef8e76007ef322bd569b35b6727779c0c` |
| 24 | `theorem` | [zero_bind](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/zero-bind--41298eef96ed7bb7f67c99aa.md) | 241 | `result-track:41298eef96ed7bb7f67c99aa1fc96b36fc2c4ed96092cfccb882b89b59178efa` |
| 25 | `theorem` | [add_bind](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/add-bind--e24298339524252fad48f0e2.md) | 246 | `result-track:e24298339524252fad48f0e259ed850ed088bb78da1069214da32fb565450939` |
| 26 | `theorem` | [neg_bind](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/neg-bind--e48f215f8bb037bfa045a1bb.md) | 252 | `result-track:e48f215f8bb037bfa045a1bb49cf50fa05b7385056df1eed08be488dd3eda47b` |
| 27 | `theorem` | [sub_bind](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/sub-bind--9b574d6baaabc4af7fffc87d.md) | 257 | `result-track:9b574d6baaabc4af7fffc87d68f13b5640510e9941d50dec75589154e45653fb` |
| 28 | `theorem` | [pure_seq](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/pure-seq--bbfdba8515650b958e5e64c4.md) | 263 | `result-track:bbfdba8515650b958e5e64c45e580734152d21082824267bc551840d7c9ad3ed` |
| 29 | `theorem` | [zero_seq](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/zero-seq--ed7b05df04a2724d6db82086.md) | 268 | `result-track:ed7b05df04a2724d6db8208677c5c220063fe70401007dde22f205b69abfe2fa` |
| 30 | `theorem` | [add_seq](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/add-seq--d90a33a9b559470d435f1043.md) | 273 | `result-track:d90a33a9b559470d435f104375e94e5ee53ea081abad0c610581a53874fcb605` |
| 31 | `theorem` | [neg_seq](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/neg-seq--770976d39264a587018eafa5.md) | 279 | `result-track:770976d39264a587018eafa53b3aaefb5abe31449a3e4c54bf082439ac25fb72` |
| 32 | `theorem` | [sub_seq](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/sub-seq--5f4cdc3f776fa969699d956a.md) | 284 | `result-track:5f4cdc3f776fa969699d956a71e294f38496bbf0011e714b3760b11bd80e0934` |
| 33 | `def` | [seqAddGroupHom](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/seqaddgrouphom--cf8e177669e74d6876991bb3.md) | 291 | `declaration-track:cf8e177669e74d6876991bb3fbc13ab49c60d9bfe7b8b521161808feca8fdc59` |
| 34 | `theorem` | [seq_zero](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/seq-zero--c6ca3a41f817548d8807a9fd.md) | 299 | `result-track:c6ca3a41f817548d8807a9fd79079496842ddcb474720a83d05365acbd6851f7` |
| 35 | `theorem` | [seq_add](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/seq-add--e2f6bf376f0b3c3d7198a3fc.md) | 304 | `result-track:e2f6bf376f0b3c3d7198a3fc484d016d0f8e3a5aca645a2349e60da4e325e741` |
| 36 | `theorem` | [seq_neg](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/seq-neg--48c66af79d1d4e1a4b375373.md) | 310 | `result-track:48c66af79d1d4e1a4b375373a2bd3fd02c2cec041901eb177d9d0cc9b8491437` |
| 37 | `theorem` | [seq_sub](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/seq-sub--c3728956740157cd106c30c3.md) | 315 | `result-track:c3728956740157cd106c30c3699be9aec39e4a832fe87c3d0726659a7ae8d67f` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/instance--0f5797112d9550f31cd10448.md) | 320 | `declaration-track:0f5797112d9550f31cd104484edb2b6067dac7e59b3ccf2f2ee6b9afbc9e4de8` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/instance--8f689f0f7cd976ddd914bea8.md) | 329 | `declaration-track:8f689f0f7cd976ddd914bea84648170e3bd918c8ba9d77fe95dd6be2fbf2d697` |
| 40 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map--9340f7a63ff960c61cb23576.md) | 354 | `declaration-track:9340f7a63ff960c61cb23576d77f7c697ce17ab321cbd7f07fb55ffa4fbb0a9f` |
| 41 | `theorem` | [lift_comp](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/lift-comp--a764936ec201bc93f7bce5eb.md) | 358 | `result-track:a764936ec201bc93f7bce5eb39b31ef130b335ca5edd58a8f73a1c670ef52216` |
| 42 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-id--618e0ffd79d11ff113f0dc56.md) | 371 | `result-track:618e0ffd79d11ff113f0dc56713f54a6ac3f81f140ab3fc8ebb53ed8358c814a` |
| 43 | `theorem` | [map_id_apply](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-id-apply--36f94c721d07a398a0088dc5.md) | 376 | `result-track:36f94c721d07a398a0088dc5af6f3701ed70e99982ff4456779f89ea06be1798` |
| 44 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-comp--0d88b2f477d580823c2099cd.md) | 381 | `result-track:0d88b2f477d580823c2099cdd538761c1f8c1c0d2cd5f1f6d2afd025b9f8abdf` |
| 45 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-comp-apply--95fd61cab1f31ba662c02ded.md) | 385 | `result-track:95fd61cab1f31ba662c02dedf2c4003631de5cb0d99d7385fbe93132f35c7da5` |
| 46 | `theorem` | [map_of_apply](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/map-of-apply--4a016bf6dffda31e9ce648c7.md) | 393 | `result-track:4a016bf6dffda31e9ce648c774291c6c5e05ccbfaa8f96c319ddcd100633f658` |
| 47 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/mul--93cfd2c69abbc4460ebdc19b.md) | 403 | `declaration-track:93cfd2c69abbc4460ebdc19b1b627c27017894b1e5da6f7b8fdada195e103f58` |
| 48 | `theorem` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/mul-def--f0fdbef837ccb02e4ceeed1d.md) | 408 | `result-track:f0fdbef837ccb02e4ceeed1d1d48e86faddc3787ad0f45956a5f9620b48aa3a9` |
| 49 | `theorem` | [of_mul_of](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/of-mul-of--0e96c3fa5338c57006347254.md) | 414 | `result-track:0e96c3fa5338c570063472548fff81f8123fd6c2b1aa16f59b6edb9a8763e9f9` |
| 50 | `theorem` | [of_mul](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/of-mul--f56203c3df8113ea49c11d6f.md) | 418 | `result-track:f56203c3df8113ea49c11d6fed5a25147fc550359831b13d0506ee6bff28d9ac` |
| 51 | `instance` | [distrib](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/distrib--d8458b2a29f18684aa3db0bd.md) | 422 | `declaration-track:d8458b2a29f18684aa3db0bd74c9de440bba6bbc80c9ab622f9d4de9bad6aadb` |
| 52 | `instance` | [nonUnitalNonAssocRing](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/nonunitalnonassocring--1fee5b017396950ebe1c9d99.md) | 427 | `declaration-track:1fee5b017396950ebe1c9d99179b602ac704756e6d4c424aab8cf83dac5f1eb5` |
| 53 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/one--82524434cd3956ce20a3b333.md) | 437 | `declaration-track:82524434cd3956ce20a3b33361d64d4dc8a3952e4867ae7f44cd0dea3cd32e7a` |
| 54 | `instance` | [nonUnitalRing](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/nonunitalring--618c2778ac81f3e3117735e1.md) | 440 | `declaration-track:618c2778ac81f3e3117735e17c2d39b9e00428d95815f00f0d383c17b3933c0a` |
| 55 | `instance` | [ring](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/ring--b9edebdd64077e3d1bf08d89.md) | 462 | `declaration-track:b9edebdd64077e3d1bf08d89d94c7b6408fb188f9eb4c9011a232144d2e9ed69` |
| 56 | `def` | [ofMulHom](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/ofmulhom--25e0ec02b4db512b58e986e3.md) | 490 | `declaration-track:25e0ec02b4db512b58e986e39d62b778e625e386142d279a37a926821f2d736b` |
| 57 | `theorem` | [ofMulHom_coe](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/ofmulhom-coe--62e4ffc0060823263567cf2e.md) | 497 | `result-track:62e4ffc0060823263567cf2ede87354835caeb0f8cc42ea2cff022019b0a55b2` |
| 58 | `def` | [liftMonoid](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/liftmonoid--3d6bc3a9c7d3ffc68ec5a87f.md) | 502 | `declaration-track:3d6bc3a9c7d3ffc68ec5a87f73d72383462745b21c6cbba1004fcdc456196a33` |
| 59 | `theorem` | [liftMonoid_coe_addMonoidHom](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/liftmonoid-coe-addmonoidhom--e5679579834dacba47c36549.md) | 532 | `result-track:e5679579834dacba47c365499bc41b60bfa70d0885818efa6f7d484e46e46483` |
| 60 | `theorem` | [liftMonoid_coe](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/liftmonoid-coe--69fa7988ae0f95eb62df339e.md) | 537 | `result-track:69fa7988ae0f95eb62df339ec9b14d5ece5ac280d3707bfd2f892a1f4dca1baa` |
| 61 | `theorem` | [liftMonoid_symm_coe](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/liftmonoid-symm-coe--5518b10c3234d4ca870d552d.md) | 543 | `result-track:5518b10c3234d4ca870d552d3aa200c65fcd0ab017a4299af42391bef9146f6e` |
| 62 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/one-def--6668c5fd8df168e1382a36ae.md) | 548 | `result-track:6668c5fd8df168e1382a36ae49826560a91a92bef277268a89bd15cffed46b99` |
| 63 | `theorem` | [of_one](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/of-one--2e91941fd33fe982462e6d9b.md) | 552 | `result-track:2e91941fd33fe982462e6d9b71e9de40f1dacac14eef2c7048cd8a08e8e2c2e3` |
| 64 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/instance--31eb8e4803f357b763d416f2.md) | 558 | `declaration-track:31eb8e4803f357b763d416f278d331eefdad6b06525982db0c38c90e64aba84a` |
| 65 | `instance` | [pemptyUnique](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/pemptyunique--8da8332293fe0a15789b6610.md) | 578 | `declaration-track:8da8332293fe0a15789b6610834360dfa12f6c7806421da0bc6bc5af4ee24e16` |
| 66 | `def` | [punitEquiv](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/punitequiv--17778b1fb7abebd414b9fee4.md) | 586 | `declaration-track:17778b1fb7abebd414b9fee46ee56be3bb58904fcf33bb0ab5b3621efe479759` |
| 67 | `def` | [equivOfEquiv](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/declarations/equivofequiv--929fe31eb8b7468513ac1796.md) | 602 | `declaration-track:929fe31eb8b7468513ac179617fbe2782f2815018869329ebdb5749003c32dc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
