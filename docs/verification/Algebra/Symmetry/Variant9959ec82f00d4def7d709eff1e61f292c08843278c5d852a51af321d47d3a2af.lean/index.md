# Verification target: GRWTSK.Algebra.Symmetry.Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7485cdf53c855ccabd410ce7351ea37ed0a77c92",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7485cdf53c855ccabd410ce7351ea37ed0a77c92`.

Source path: `GRWTSK/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.PermutationNetwork` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitPerm](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/bitperm--845322251a728e5b34dce566.md) | 39 | `declaration-track:845322251a728e5b34dce566fad1975daf4abf97bf951f57d104381d4e34ff61` |
| 2 | `def` | [BitPerm.ofBijective](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/bitperm-ofbijective--caa83af8952b69b77dba7eea.md) | 42 | `declaration-track:caa83af8952b69b77dba7eea1e0ed90dc58d0a2c216d760d00e727f6ebbab496` |
| 3 | `theorem` | [BitPerm.ofBijective_apply](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/bitperm-ofbijective-apply--037d663f0182c211b27c11bb.md) | 49 | `result-track:037d663f0182c211b27c11bb4bc3c75caf559c3487d68b379d9d32aba0b03744` |
| 4 | `def` | [XorGroup](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/xorgroup--d0655f767b211f833d026c34.md) | 64 | `declaration-track:d0655f767b211f833d026c3483820ee2584ef10b26e35bd1e956a144605a9c0e` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/instance--cbd319c036d1bb8fe9da1e47.md) | 68 | `declaration-track:cbd319c036d1bb8fe9da1e472b449c73996d132584cc177e994dc583bdfa136c` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/instance--d28d37d0eb7f92aea027e52f.md) | 71 | `declaration-track:d28d37d0eb7f92aea027e52fd5255c047996c2db763576d1ca28b83271d092bb` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/instance--ed9d57410446a041ca2a359a.md) | 74 | `declaration-track:ed9d57410446a041ca2a359afb531d1dd0f4cef03d5c2a401965e579518f427c` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/instance--7d49d0574860bff5cf24671b.md) | 77 | `declaration-track:7d49d0574860bff5cf24671be0c08384b371bedf058c39a942eaea1e1cd74a0a` |
| 9 | `def` | [toBits](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/tobits--34890784469e3eb44135db93.md) | 85 | `declaration-track:34890784469e3eb44135db9380c60f363d4416bfce78154585604b6747649bce` |
| 10 | `theorem` | [one_toBits](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/one-tobits--453c998ee0a8847c03e56248.md) | 89 | `result-track:453c998ee0a8847c03e562487333f965b1c761e54cac1a7a1ce47f99e1d04c05` |
| 11 | `theorem` | [mul_toBits](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/mul-tobits--fd8c1ad78144349c64c7f331.md) | 94 | `result-track:fd8c1ad78144349c64c7f33117bb41c29e8e3ba0fa210523a6f5525da47bc7df` |
| 12 | `theorem` | [inv_eq](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/inv-eq--362d7b39cc768c0e7d031ce8.md) | 99 | `result-track:362d7b39cc768c0e7d031ce85df0ef2cab7f4601499342b7e7b64530721c6620` |
| 13 | `structure` | [MonoidEmbedding](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/monoidembedding--4c85a6402d5a5873af077590.md) | 110 | `declaration-track:4c85a6402d5a5873af0775901ca15165d3428d23d75bc6e253ededb0276e9c1d` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/instance--eb522792f9a40cc216eed090.md) | 118 | `declaration-track:eb522792f9a40cc216eed090e278c4dcbf16bbbd40b97e7ff4c69cd8b907d9f1` |
| 15 | `theorem` | [injective](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/injective--f39d224538d32f53003b40f9.md) | 123 | `result-track:f39d224538d32f53003b40f9696017e107d6aa9e563b6709c26d852d1fd070fa` |
| 16 | `theorem` | [translation_mul_apply](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/translation-mul-apply--13aa2d6c3aa768b10318e704.md) | 132 | `result-track:13aa2d6c3aa768b10318e7047225eaa470298d85f9f85f811600ba7fb07017c7` |
| 17 | `def` | [translationHom](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/translationhom--534af139e652c56a93708c61.md) | 143 | `declaration-track:534af139e652c56a93708c61bebbd70b26d29454e971c734f9bc78eab1030456` |
| 18 | `theorem` | [translationHom_apply](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/translationhom-apply--71e1bc2529aefbc694981726.md) | 152 | `result-track:71e1bc2529aefbc694981726044f8dde7066e2e3c8b8cb5a0cc77294e0e9e2a2` |
| 19 | `theorem` | [translationHom_injective](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/translationhom-injective--898d65a68e546a39d48ccdc7.md) | 159 | `result-track:898d65a68e546a39d48ccdc72e4ba6f01d48eb7c4496ef93f00102b51497574c` |
| 20 | `def` | [translationEmbedding](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/translationembedding--282051e0bbcf810db47195b3.md) | 167 | `declaration-track:282051e0bbcf810db47195b3864e8ebdba741f1a537027d86380b7981e560427` |
| 21 | `theorem` | [translationHom_one](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/translationhom-one--cac7fce99e4243b76fde71d3.md) | 172 | `result-track:cac7fce99e4243b76fde71d3d38bb261ea87cff2b3cd5607647c640b20d69be2` |
| 22 | `theorem` | [translation_comm](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/translation-comm--c4a4ed8014743e7f4daba947.md) | 176 | `result-track:c4a4ed8014743e7f4daba9478b09d40ce7e93bc5590f760776aa8bd87f227ae2` |
| 23 | `theorem` | [translation_order_two](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/translation-order-two--9670e26460c3be167848912a.md) | 181 | `result-track:9670e26460c3be167848912a1e1f647655479757ec30120a4e8937970fa012b6` |
| 24 | `def` | [coordinatePermutationHom](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/coordinatepermutationhom--a9ac992d39d578000c11d65d.md) | 192 | `declaration-track:a9ac992d39d578000c11d65d32e289e9786be98b7dfdd9561eb03ae766fc2416` |
| 25 | `theorem` | [coordinatePermutationHom_apply](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/coordinatepermutationhom-apply--d8ce86a6cae0e5f337483300.md) | 201 | `result-track:d8ce86a6cae0e5f337483300980d9264dc87997b07d1cd07943a91a39589d358` |
| 26 | `theorem` | [coordinatePermutation_basisBit](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/coordinatepermutation-basisbit--c22c6e5b015c7ae5f3b5716a.md) | 208 | `result-track:c22c6e5b015c7ae5f3b5716a9cae15e2fc3df68c57c8c47c66b30a0c632fc8e6` |
| 27 | `theorem` | [basisBit_injective](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/basisbit-injective--8657ecea54e17c70f36e3f01.md) | 217 | `result-track:8657ecea54e17c70f36e3f01b2d74a363f30f7966fa3d7879f494b3c6a70c1ff` |
| 28 | `theorem` | [coordinatePermutationHom_injective](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/coordinatepermutationhom-injective--e7857153afee63d999540991.md) | 225 | `result-track:e7857153afee63d9995409919383ced0d383a159a92a189a3b0e707d5fe6b07b` |
| 29 | `def` | [coordinatePermutationEmbedding](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/coordinatepermutationembedding--fd1ef584c618744d84f381d8.md) | 239 | `declaration-track:fd1ef584c618744d84f381d8036e5648a37e831542a31757b42240b2cbf9317f` |
| 30 | `def` | [hammingDistance](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingdistance--b1d40aee609bffd4ac272e14.md) | 247 | `declaration-track:b1d40aee609bffd4ac272e141cfaca6929f0846434aa5873ee8a5a83f2c32eaa` |
| 31 | `theorem` | [hammingDistance_self](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingdistance-self--b3e974ed17ad249c2035c319.md) | 251 | `result-track:b3e974ed17ad249c2035c3198fead09763ef725f33fd587e56410e7c17a94b66` |
| 32 | `theorem` | [hammingDistance_comm](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingdistance-comm--cadcb0b8934cb970e9008ddf.md) | 255 | `result-track:cadcb0b8934cb970e9008ddfb7733a87e1a6c943cf9d6fc4571f29d40024a1b3` |
| 33 | `theorem` | [hammingDistance_eq_zero_iff](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingdistance-eq-zero-iff--b9be97c2c27f3c96d3808b70.md) | 259 | `result-track:b9be97c2c27f3c96d3808b70d8b8738586efaffe5944a7c6f3c88d3e7b962f57` |
| 34 | `structure` | [HammingIso](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingiso--4776a152be48cd378af3cbcc.md) | 265 | `declaration-track:4776a152be48cd378af3cbcc298b516e63f9f97c5ce62fc058fe7375178500fe` |
| 35 | `def` | [HammingIso.toPerm](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingiso-toperm--67b8824d99886651b15c2b17.md) | 270 | `declaration-track:67b8824d99886651b15c2b1791db3fffc61dfe688f997959be89c49cc813dafc` |
| 36 | `theorem` | [HammingIso.toPerm_apply](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingiso-toperm-apply--34fe28541bf75342f4958125.md) | 274 | `result-track:34fe28541bf75342f4958125941ffbda78944deefd8c2613d16ce4d3e8e92551` |
| 37 | `theorem` | [xorBits_cancel_both_right](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/xorbits-cancel-both-right--71e880956d258ce33a37ab41.md) | 281 | `result-track:71e880956d258ce33a37ab414e1f21d567ecbbf24a2eac749e67562d3d8d8dca` |
| 38 | `theorem` | [coordinatePermutation_zero](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/coordinatepermutation-zero--64e4ae88a9b566b0b0aceb32.md) | 288 | `result-track:64e4ae88a9b566b0b0aceb324ff131562cff28bf8b1564cfa095ddcdfc91e400` |
| 39 | `theorem` | [HammingIso.hammingDistance_toPerm](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingiso-hammingdistance-toperm--547b3dec754fa796cfb6f2f4.md) | 295 | `result-track:547b3dec754fa796cfb6f2f46ecffdf734cdcf69c790aec0bd6b7c20582ab20c` |
| 40 | `theorem` | [HammingIso.toPerm_injective](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingiso-toperm-injective--9cc353dde245273f849b440a.md) | 306 | `result-track:9cc353dde245273f849b440a3afbccb0f362e28c8ca52d0b036eaea30924638f` |
| 41 | `def` | [conjugate](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/conjugate--66a1e956e0760349335e1942.md) | 325 | `declaration-track:66a1e956e0760349335e194286d47421e1b5c97cb7100930e05e98a7ade61b2c` |
| 42 | `theorem` | [conjugate_apply](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/conjugate-apply--2f32d1d0a457cea6e8207991.md) | 329 | `result-track:2f32d1d0a457cea6e820799165db5a06cc2d1b2fcfad6929b72361ba226ecfaf` |
| 43 | `theorem` | [conjugate_one](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/conjugate-one--38d297f1a495c155b259eff4.md) | 336 | `result-track:38d297f1a495c155b259eff4e05d6b99377e88abe0cbfe8b0e2dd9302c088657` |
| 44 | `theorem` | [conjugate_self](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/conjugate-self--cef419af5105b74d864c7cd1.md) | 342 | `result-track:cef419af5105b74d864c7cd1c0979b9b23b377d7b8c3912011837faf7b91a09f` |
| 45 | `theorem` | [conjugate_pow](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/conjugate-pow--d7be220778bffb07c5cc73cd.md) | 349 | `result-track:d7be220778bffb07c5cc73cdfca0b3f9bb67313691942c301c2967d42b6be428` |
| 46 | `theorem` | [HammingIso.toPerm_symm_apply](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingiso-toperm-symm-apply--dce27348b4b6dc8f95c69e8e.md) | 368 | `result-track:dce27348b4b6dc8f95c69e8e3ef36e75edbe159233f5c594a1943e68862d1fed` |
| 47 | `theorem` | [HammingIso.toPerm_symm_xor_basis](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingiso-toperm-symm-xor-basis--9aa9a9d667c1a54f4ef27d0a.md) | 375 | `result-track:9aa9a9d667c1a54f4ef27d0a8456d3c2e345424a6546f32b42740f968847541b` |
| 48 | `theorem` | [HammingIso.toPerm_xor_cancel](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/hammingiso-toperm-xor-cancel--40f8cd6a6dfa9b545304c207.md) | 387 | `result-track:40f8cd6a6dfa9b545304c207503d90b82a1f5a6cebf624da262d77ef6edcf11f` |
| 49 | `theorem` | [bitDerivative_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/bitderivative-conjugate-hammingiso--29b1b4ea55b21104c9d12203.md) | 399 | `result-track:29b1b4ea55b21104c9d12203a6ae79cb6db53d2f953bd7e5fb0da78d9ead8508` |
| 50 | `theorem` | [derivativeBit_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/derivativebit-conjugate-hammingiso--6e42518057f44074b0be80da.md) | 413 | `result-track:6e42518057f44074b0be80da377dbf99ce316baee5fee57c7f14bdeb5671d5c8` |
| 51 | `theorem` | [sacCount_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/saccount-conjugate-hammingiso--f8005b97d5bd29d60b5006a4.md) | 425 | `result-track:f8005b97d5bd29d60b5006a43ac3c1b9d7f63cf7dd3687113181566e3dd170e2` |
| 52 | `theorem` | [strictSAC_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/strictsac-conjugate-hammingiso--559277b8e2c9e375a430f3e9.md) | 439 | `result-track:559277b8e2c9e375a430f3e9cca7401d69d2d1143aabf32928ce42b5571c12eb` |
| 53 | `theorem` | [sacEntry_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/sacentry-conjugate-hammingiso--50d65a3f8f637e6b65be5a6e.md) | 451 | `result-track:50d65a3f8f637e6b65be5a6e3bb9cc08a9ead489b0c2d0db4bd1bbf8f4c5a0cf` |
| 54 | `theorem` | [sum_sacEntry_relabel](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/sum-sacentry-relabel--a01fb5e3e58346ada8460e3d.md) | 459 | `result-track:a01fb5e3e58346ada8460e3d36a8c6d850b0ac2544814783f543b6218e7e553d` |
| 55 | `theorem` | [sacScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/sacscore-conjugate-hammingiso--7989dbd9692b0dde570f8e17.md) | 486 | `result-track:7989dbd9692b0dde570f8e17e545e40f09c71d79936797b32e86d11ebb5db056` |
| 56 | `theorem` | [varianceScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/variancescore-conjugate-hammingiso--3ff50e576da98643ede3035d.md) | 496 | `result-track:3ff50e576da98643ede3035de06bbf1da39e521dc2bf3babc22cb178663c91c5` |
| 57 | `def` | [fixedPoints](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/fixedpoints--3721f9e461d386ba986e1a93.md) | 513 | `declaration-track:3721f9e461d386ba986e1a934707dc87e4860de1667ee36e6d54f2d75bad65af` |
| 58 | `def` | [fixedPointCount](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/fixedpointcount--5a0ec7542d44f69f18b306b0.md) | 517 | `declaration-track:5a0ec7542d44f69f18b306b01374876695820db484463cce88ee41af934ad8a7` |
| 59 | `theorem` | [mem_fixedPoints_iff](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/mem-fixedpoints-iff--ebe03714ce850289cda1f78d.md) | 520 | `result-track:ebe03714ce850289cda1f78de68f6794ef3b5244b7f861add1c8a97ebf67ff61` |
| 60 | `theorem` | [fixedPoints_zero](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/fixedpoints-zero--c78797b747328a6406baf000.md) | 528 | `result-track:c78797b747328a6406baf00076c407634aa7422c8a65bb6c588b8edadb14794a` |
| 61 | `theorem` | [fixedPointCount_zero](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/fixedpointcount-zero--547e6fd3bd4bf450096650d1.md) | 534 | `result-track:547e6fd3bd4bf450096650d126232db84d52527935ebb5aa7db1a7c5a07e2b76` |
| 62 | `theorem` | [fixedPointCount_le](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/fixedpointcount-le--f5e2e957db3063b19f507d5b.md) | 539 | `result-track:f5e2e957db3063b19f507d5b000aa7db6b0c57337ec27092f4a13a872c013f0d` |
| 63 | `theorem` | [fixedPointCount_conjugate](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/fixedpointcount-conjugate--e3676b92c2a2acdd257fea62.md) | 545 | `result-track:e3676b92c2a2acdd257fea6232b31600b47bf1e91d69a8377452f30a3b285e31` |
| 64 | `theorem` | [fixedPointCount_identity](../../../../mathematics/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/declarations/fixedpointcount-identity--5bda31f4f5ce46dc3e5e608d.md) | 563 | `result-track:5bda31f4f5ce46dc3e5e608d2d37d42692079e31950c6d1cfe6035985f65eef8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
