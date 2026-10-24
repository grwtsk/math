# Verification target: GRWTSK.Algebra.LinearAlgebra.LSum.Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "beb82444d8a8496bb4a538a7415ba09b1f7037e2",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `beb82444d8a8496bb4a538a7415ba09b1f7037e2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.LinearMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_sum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/smul-sum--76efa0459d76ab2a82a0daf5.md) | 37 | `result-track:76efa0459d76ab2a82a0daf590282eb0f494380edd55e54f19736af4ab78f25b` |
| 2 | `theorem` | [sum_smul_index_semilinearMap'](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/sum-smul-index-semilinearmap--dd84144c4217362b9d785994.md) | 42 | `result-track:dd84144c4217362b9d7859948c95f95e32db76817952e8d0a0b7fbb0f7507070` |
| 3 | `theorem` | [sum_smul_index_linearMap'](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/sum-smul-index-linearmap--066ad57cd15bb67d36c09c75.md) | 50 | `result-track:066ad57cd15bb67d36c09c752c04b0e6239a80d2fe3dfe38799ec45a37074560` |
| 4 | `instance` | [_root_.LinearMap.CompatibleSMul.finsupp_dom](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/root-linearmap-compatiblesmul-finsupp-dom--1ed33726205bf4223c5bebd9.md) | 70 | `declaration-track:1ed33726205bf4223c5bebd970b4a42a7b639b2aeb862fa8fd884a4089c3439a` |
| 5 | `instance` | [_root_.LinearMap.CompatibleSMul.finsupp_cod](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/root-linearmap-compatiblesmul-finsupp-cod--4559e93af4e9868f3c9545ad.md) | 77 | `declaration-track:4559e93af4e9868f3c9545ad11280775b4d9f06a7e8c494d316161a83a999be3` |
| 6 | `def` | [lsum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lsum--18d91a38c9d59dd62130dafb.md) | 93 | `declaration-track:18d91a38c9d59dd62130dafb40ce3ffb722afc2426e9429c4ef77ab370419390` |
| 7 | `theorem` | [coe_lsum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/coe-lsum--6ab149373fadc17f123332c2.md) | 113 | `result-track:6ab149373fadc17f123332c2ad95346903fafaf336f5cf84c705cd0a70f51b33` |
| 8 | `theorem` | [lsum_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lsum-apply--88ef1d5df1c7e9c53b527474.md) | 116 | `result-track:88ef1d5df1c7e9c53b527474e6d92cd0308955b8d201a0304ae1366f227092cf` |
| 9 | `theorem` | [lsum_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lsum-single--33ffa4a3615f466a4eb4e7ef.md) | 119 | `result-track:33ffa4a3615f466a4eb4e7effbdc311077eb941a6b70bf047f0e36990b13993b` |
| 10 | `theorem` | [lsum_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lsum-comp-lsingle--7c0af693b4a3ace03f0d0927.md) | 123 | `result-track:7c0af693b4a3ace03f0d0927bc22485bd76edef86cbfe4840d71994bbe9837c6` |
| 11 | `theorem` | [lsum_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lsum-symm-apply--a4e7c0929966b96826673a50.md) | 126 | `result-track:a4e7c0929966b96826673a50546b2f22a3b0ef40ccaf94cafa8e2f7215b0ff53` |
| 12 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lift--7baf7944967b3e1dbbdfc369.md) | 139 | `declaration-track:7baf7944967b3e1dbbdfc369a8b549b9f0eff0a3adfed429304ad7314d1e4c0b` |
| 13 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lift-symm-apply--72be3c9b0f8066d9c23324ba.md) | 144 | `result-track:72be3c9b0f8066d9c23324bac7a297f37dacb9f9127f52b7bacd6d1349f25de8` |
| 14 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lift-apply--9429c86565bc2a53991caa2a.md) | 148 | `result-track:9429c86565bc2a53991caa2ab96bfb7d47ff5a130e112cb631db002056abc22f` |
| 15 | `def` | [llift](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/llift--45df3f2e61e037802b986450.md) | 154 | `declaration-track:45df3f2e61e037802b9864501a81047f425b7a6bbd3c214b67f5f39460aab3d9` |
| 16 | `theorem` | [llift_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/llift-apply--ac0fc364234c7adca17d345a.md) | 164 | `result-track:ac0fc364234c7adca17d345a47169ec4737af4b1a6e055fbbf6a406616c3f41c` |
| 17 | `theorem` | [llift_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/llift-symm-apply--390d79a7ca851c8d1ff1b8c8.md) | 168 | `result-track:390d79a7ca851c8d1ff1b8c818ce3a1ecac88f24f70b987a3e8a998205162db5` |
| 18 | `def` | [domLCongr](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/domlcongr--9e8881095946660dff9c9eb7.md) | 178 | `declaration-track:9e8881095946660dff9c9eb7a6521b562d5fe602885a49c69b6b417b68dfd8e3` |
| 19 | `theorem` | [domLCongr_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/domlcongr-apply--b1ced845aea53f30b55fb7bb.md) | 183 | `result-track:b1ced845aea53f30b55fb7bb69e4c87fc38be0bd55086436e7988f0621cd811f` |
| 20 | `theorem` | [domLCongr_refl](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/domlcongr-refl--de3d55eb487c51b407783ea7.md) | 188 | `result-track:de3d55eb487c51b407783ea7ca9556598daba2b198415922156b3a988bc1357e` |
| 21 | `theorem` | [domLCongr_trans](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/domlcongr-trans--103e0fc2e606b88f4d475abb.md) | 191 | `result-track:103e0fc2e606b88f4d475abbaac6da5314c721a41da4ea3816a201ab4f005d81` |
| 22 | `theorem` | [domLCongr_symm](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/domlcongr-symm--86b330284ae6696126b9be4a.md) | 197 | `result-track:86b330284ae6696126b9be4a8928c721bde4114f7646d9566c90238972f2849e` |
| 23 | `theorem` | [domLCongr_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/domlcongr-single--b393ae4a26ebe5e771f4d4ab.md) | 201 | `result-track:b393ae4a26ebe5e771f4d4abe9b0efc1185d5ed51a8c8f5a4648ac7c3feb10b8` |
| 24 | `def` | [lcongr](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lcongr--941b083cd7d21165c0168cc9.md) | 211 | `declaration-track:941b083cd7d21165c0168cc991e869db9aafdd4bd3630fec4f7226b638aae285` |
| 25 | `theorem` | [lcongr_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lcongr-single--67d3ccb1e8ce4fe236328ac4.md) | 215 | `result-track:67d3ccb1e8ce4fe236328ac4dcc7f3ac47b894e79ae999bd76b49789d5de9862` |
| 26 | `theorem` | [lcongr_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lcongr-apply-apply--cc4a04364174f83a604dde91.md) | 219 | `result-track:cc4a04364174f83a604dde918a28d9414f4892c50b57fd6445d0cc68f42a0065` |
| 27 | `theorem` | [lcongr_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lcongr-symm-single--a091392419510369826b4219.md) | 223 | `result-track:a091392419510369826b42192d7cbd96f2d9ce06115be01da758f26e0a21c5ab` |
| 28 | `theorem` | [lcongr_symm](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/lcongr-symm--5ac94e913324617af1eece52.md) | 229 | `result-track:5ac94e913324617af1eece52ce6f8e1dacaf58d886bdf2e3bda5b940ad093fe0` |
| 29 | `theorem` | [Submodule.finsuppSum_mem](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/submodule-finsuppsum-mem--c1fd9bc234f8940ca71956aa.md) | 247 | `result-track:c1fd9bc234f8940ca71956aa296fa75897167ca7eb7c7c58d4728b6cbc2020cd` |
| 30 | `def` | [splittingOfFinsuppSurjective](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/splittingoffinsuppsurjective--62b0804f7c26c0db56b78f8e.md) | 263 | `declaration-track:62b0804f7c26c0db56b78f8e0d2fba0bc57fca8e6cc0070d7124c20e5d7abd3e` |
| 31 | `theorem` | [splittingOfFinsuppSurjective_splits](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/splittingoffinsuppsurjective-splits--335824f5798563e4fcca2054.md) | 266 | `result-track:335824f5798563e4fcca2054021cc2c013a86286632dd99122bd25b6037bfb95` |
| 32 | `theorem` | [leftInverse_splittingOfFinsuppSurjective](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/leftinverse-splittingoffinsuppsurjective--0c4aad99bc43f536fa7d04b0.md) | 275 | `result-track:0c4aad99bc43f536fa7d04b0adf55b30809dbe5e9657c094433891128c3d551e` |
| 33 | `theorem` | [splittingOfFinsuppSurjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/splittingoffinsuppsurjective-injective--2acf28c6ca1abf2ffeeb5ae7.md) | 279 | `result-track:2acf28c6ca1abf2ffeeb5ae7fa80c2842cac6c4f8ac67d9e09a6313cb6c432f5` |
| 34 | `theorem` | [coe_finsupp_sum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/coe-finsupp-sum--dac7db0f425edf8add517a09.md) | 296 | `result-track:dac7db0f425edf8add517a09875b1eb61eb4eff73aaf6be4fa5bf76b3fcf7e9b` |
| 35 | `theorem` | [finsupp_sum_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/finsupp-sum-apply--06dcb409d5a41a7545b8a653.md) | 300 | `result-track:06dcb409d5a41a7545b8a6538b831fbf50faa263dde2e657042b107d6fb0e009` |
| 36 | `def` | [mulLeftMap](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/mulleftmap--aa6543e7edc291cdafe10988.md) | 320 | `declaration-track:aa6543e7edc291cdafe10988f2da1781a6f62f514a6b1f0e17d3b4ddbf7ebba7` |
| 37 | `theorem` | [mulLeftMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/mulleftmap-apply--92994364c86ea1e26b9b854a.md) | 323 | `result-track:92994364c86ea1e26b9b854a0e0ad5426fe9a8aa7b830646aeb8f67fa9cfadcf` |
| 38 | `theorem` | [mulLeftMap_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/mulleftmap-apply-single--7923604dbd36183839be98ef.md) | 327 | `result-track:7923604dbd36183839be98ef3789a6ea4a12a973fc7727ce69709d4a74af9031` |
| 39 | `def` | [mulRightMap](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/mulrightmap--8d7d898246f4b6c38a549c19.md) | 338 | `declaration-track:8d7d898246f4b6c38a549c197d2fd464191ce70978b1150df26b8d0f60b67567` |
| 40 | `theorem` | [mulRightMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/mulrightmap-apply--29f606b4d075902ee0e6ce3a.md) | 341 | `result-track:29f606b4d075902ee0e6ce3aee0e3bb95ea4b7455975ff7891818710ddf293b9` |
| 41 | `theorem` | [mulRightMap_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/mulrightmap-apply-single--061cca3633f0026a54209f60.md) | 345 | `result-track:061cca3633f0026a54209f6097178f79529e27487d71f6380cd9a5e304df2705` |
| 42 | `theorem` | [mulLeftMap_eq_mulRightMap_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/mulleftmap-eq-mulrightmap-of-commute--5211a91d6a84b65895b4ab44.md) | 349 | `result-track:5211a91d6a84b65895b4ab44cde688d12002931cc8d21513bedb51bcc3fb6c77` |
| 43 | `theorem` | [mulLeftMap_eq_mulRightMap](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/declarations/mulleftmap-eq-mulrightmap--b3ddca6c1113ca975b7f67af.md) | 354 | `result-track:b3ddca6c1113ca975b7f67af9fc9e0d7b5b18a0204d67e66d0145dcb3c75a58c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
