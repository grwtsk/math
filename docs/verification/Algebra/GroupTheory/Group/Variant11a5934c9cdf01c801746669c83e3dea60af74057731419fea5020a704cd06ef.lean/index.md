# Verification target: GRWTSK.Algebra.GroupTheory.Group.Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d494d72a30daea300b0824d653900cf714ad1a5f",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d494d72a30daea300b0824d653900cf714ad1a5f`.

Source path: `GRWTSK/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Aut` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Units` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [RightCancelMonoid.faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/rightcancelmonoid-faithfulsmul--cb9651d6d209ed4ce45e1283.md) | 34 | `declaration-track:cb9651d6d209ed4ce45e1283e2f81924be9e2106377fd25dd8f1bc0635807e4f` |
| 2 | `theorem` | [inv_smul_smul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/inv-smul-smul--15192d376b4fa057f14c7612.md) | 44 | `result-track:15192d376b4fa057f14c761218b256a552c7f88837f3de0716501f484d2e7907` |
| 3 | `theorem` | [smul_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-inv-smul--1a811da046c4153924112b63.md) | 49 | `result-track:1a811da046c4153924112b63d6a745aa463d93b2dcedded744c1426ccfc4466e` |
| 4 | `def` | [MulAction.toPerm](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/mulaction-toperm--b009818a6b34dee773b78ec7.md) | 56 | `declaration-track:b009818a6b34dee773b78ec7f59b17de92d119380b2e37c3693c739e3614d918` |
| 5 | `theorem` | [MulAction.toPerm_injective](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/mulaction-toperm-injective--6414acc97d334ec479425ae6.md) | 70 | `result-track:6414acc97d334ec479425ae60eca6dbc9d623dcaa8a9d5e16334caf68ca9d8ea` |
| 6 | `def` | [MulAction.toPermHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/mulaction-topermhom--03a68413d715f45b8c2e3991.md) | 80 | `declaration-track:03a68413d715f45b8c2e3991904c0f2a222779f8f8b9700e162a36a908e36e48` |
| 7 | `def` | [AddAction.toPermHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/addaction-topermhom--ed45632fd257554f19c2e660.md) | 90 | `declaration-track:ed45632fd257554f19c2e660022f4bfeffd60d569b094d1f9254c455f71113cc` |
| 8 | `instance` | [Equiv.Perm.applyMulAction](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/equiv-perm-applymulaction--d16696d16d3750620ae0fbbe.md) | 98 | `declaration-track:d16696d16d3750620ae0fbbeabdc37ed6ef53ebb9ecc6bf3a25c446c02acf2b5` |
| 9 | `theorem` | [Equiv.Perm.smul_def](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/equiv-perm-smul-def--080b61935f09b663607ad672.md) | 105 | `result-track:080b61935f09b663607ad672bb673fa556bba1a38e72e8724870e7af4b506704` |
| 10 | `instance` | [Equiv.Perm.applyFaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/equiv-perm-applyfaithfulsmul--e1573dda2c70928ac9c13f94.md) | 110 | `declaration-track:e1573dda2c70928ac9c13f9496ac9e3524fe70d81d288db840f2e85b865c0769` |
| 11 | `theorem` | [inv_smul_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/inv-smul-eq-iff--36a53e711697d2b2c6c1a80a.md) | 117 | `result-track:36a53e711697d2b2c6c1a80abaa1144f67f600ef482247ce7e507143b134074d` |
| 12 | `theorem` | [eq_inv_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/eq-inv-smul-iff--d78720c1e267d025d75bd14a.md) | 123 | `result-track:d78720c1e267d025d75bd14af0e7c8f1763f658c5ebc811d875e823722693a95` |
| 13 | `theorem` | [smul_inv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-inv--c340636dbf31544795650544.md) | 128 | `result-track:c340636dbf31544795650544b52db1873477690febfc47951462e30303007195` |
| 14 | `theorem` | [smul_zpow](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-zpow--4a76f58d58bcf725b784e749.md) | 133 | `result-track:4a76f58d58bcf725b784e749ba5f5e5d9e6d41c1abc5948aec8e3023e36689e4` |
| 15 | `theorem` | [Commute.smul_right_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/commute-smul-right-iff--333552ed617de61f6cf4a7db.md) | 140 | `result-track:333552ed617de61f6cf4a7dbc34cf17bf769c02969af1c0e933fbb85fd2e9dfc` |
| 16 | `theorem` | [Commute.smul_left_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/commute-smul-left-iff--1d4da40a332dc57871bdc3c6.md) | 146 | `result-track:1d4da40a332dc57871bdc3c6677614ff092c7e61ac84bc669f942e495fda4dc8` |
| 17 | `theorem` | [MulAction.bijective](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/mulaction-bijective--471b5ac49d086ee2d69efe21.md) | 152 | `result-track:471b5ac49d086ee2d69efe2116134a9b49989ff89894a1a49de99a9b85a3dbbd` |
| 18 | `theorem` | [MulAction.injective](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/mulaction-injective--338f632a54b1cad73af4fc0d.md) | 158 | `result-track:338f632a54b1cad73af4fc0d0e6b7442676708dfc7c7fe61891174f69d30c0bc` |
| 19 | `theorem` | [MulAction.surjective](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/mulaction-surjective--ee06a81ca11dd87409df4131.md) | 164 | `result-track:ee06a81ca11dd87409df41311524e501d0d1753a3144f5ff9b47a5ad4fcc9dc4` |
| 20 | `theorem` | [smul_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-left-cancel--790ef4e14012845556ebec9b.md) | 170 | `result-track:790ef4e14012845556ebec9b8277fcbae108bf4ed645012df86c84e79522a11b` |
| 21 | `theorem` | [smul_left_cancel_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-left-cancel-iff--72f0df9e86be486500f4f346.md) | 176 | `result-track:72f0df9e86be486500f4f346498924cb38a163c77ff95b50ba21cb0a6c84f7d3` |
| 22 | `theorem` | [smul_eq_iff_eq_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-eq-iff-eq-inv-smul--1061139c32805c40389c5cca.md) | 182 | `result-track:1061139c32805c40389c5ccabd320ea184771eb0227a11219564c748949b663e` |
| 23 | `instance` | [CancelMonoidWithZero.faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/cancelmonoidwithzero-faithfulsmul--80d9485a6289a39baaaf110e.md) | 190 | `declaration-track:80d9485a6289a39baaaf110e45e55b2c347c9bd0463e624ea5eff220dde214dd` |
| 24 | `theorem` | [inv_smul_smul₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/inv-smul-smul--72b070acb49d9e59f6adf287.md) | 200 | `result-track:72b070acb49d9e59f6adf287ec9342c245c5919a4e419741c772a3a628865e57` |
| 25 | `theorem` | [smul_inv_smul₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-inv-smul--6defe133c09ab11d17bbf64a.md) | 205 | `result-track:6defe133c09ab11d17bbf64aacba8e3188ad94faee20404f50d5041af4adfdb2` |
| 26 | `theorem` | [inv_smul_eq_iff₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/inv-smul-eq-iff--f6fdd6c3fb019dfe3ec008f4.md) | 209 | `result-track:f6fdd6c3fb019dfe3ec008f41d836dc606345bb1be8469bfa2dbc4b48a2f0acf` |
| 27 | `theorem` | [eq_inv_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/eq-inv-smul-iff--a4a07da5dcaabbfb3f30440c.md) | 213 | `result-track:a4a07da5dcaabbfb3f30440c12aef0620d18aec8484ea61f8eab1f648c947af4` |
| 28 | `theorem` | [Commute.smul_right_iff₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/commute-smul-right-iff--c693238ebdf59c18fc2c7942.md) | 218 | `result-track:c693238ebdf59c18fc2c79420e6db4680ca4cc92dfba07ee25643836ce2cbbe8` |
| 29 | `theorem` | [Commute.smul_left_iff₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/commute-smul-left-iff--52d1e4c0ec71612b7a91ccec.md) | 224 | `result-track:52d1e4c0ec71612b7a91ccec0ca6ce08955480c2d927c4213f15b9cc2bbd93d6` |
| 30 | `theorem` | [MulAction.bijective₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/mulaction-bijective--e60a9ed3d10a87b34ead50dd.md) | 229 | `result-track:e60a9ed3d10a87b34ead50dd5901168b59a9c801fac263e0385668896b430055` |
| 31 | `theorem` | [MulAction.injective₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/mulaction-injective--fd60fc0e331b1c5fcd42c0ef.md) | 233 | `result-track:fd60fc0e331b1c5fcd42c0efe2bf542004564ba829b9d016c4b181893be5fde7` |
| 32 | `theorem` | [MulAction.surjective₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/mulaction-surjective--ac5041de0f338fb2ec2b3dda.md) | 237 | `result-track:ac5041de0f338fb2ec2b3ddae1a18aca5ec12c92cacaa4fae81cdd4680b8e7c6` |
| 33 | `def` | [DistribMulAction.toAddEquiv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/distribmulaction-toaddequiv--006d68450339dce15c415311.md) | 257 | `declaration-track:006d68450339dce15c4153113dbd00109f1634878fa2dc0ed415825ed892e615` |
| 34 | `def` | [DistribMulAction.toAddAut](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/distribmulaction-toaddaut--2c9636068828bec398acc8d5.md) | 269 | `declaration-track:2c9636068828bec398acc8d5000c11f206d86b93c82183058f5d65da2c71627d` |
| 35 | `theorem` | [smul_eq_zero_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-eq-zero-iff-eq--89dd43a0f7131895aabc4adc.md) | 278 | `result-track:89dd43a0f7131895aabc4adc53233746f42154f9f9439068b789aed529018cd2` |
| 36 | `theorem` | [smul_ne_zero_iff_ne](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-ne-zero-iff-ne--40bb92ee28985e9f5e17f094.md) | 282 | `result-track:40bb92ee28985e9f5e17f094b19188fb8771e8dc0ca5c7c52c9666966277ba8a` |
| 37 | `theorem` | [smul_eq_zero_iff_eq'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-eq-zero-iff-eq--570ebb50958dbb898a26712d.md) | 292 | `result-track:570ebb50958dbb898a26712d5b36f92cbcdf95e584bbcc3e17e7a429dfd4b95f` |
| 38 | `theorem` | [smul_ne_zero_iff_ne'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-ne-zero-iff-ne--1f25f3b38f5797f58387eff8.md) | 296 | `result-track:1f25f3b38f5797f58387eff88f09b3b3811192a7b6f246a6671070cf978c418c` |
| 39 | `def` | [MulDistribMulAction.toMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/muldistribmulaction-tomulequiv--98596c106fa2421628c6ed7e.md) | 314 | `declaration-track:98596c106fa2421628c6ed7e554e1d0bfbe574a48c5779fb53954a6fb4627050` |
| 40 | `def` | [MulDistribMulAction.toMulAut](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/muldistribmulaction-tomulaut--217f05bc11ccb5760df4568d.md) | 326 | `declaration-track:217f05bc11ccb5760df4568d72c20a6697eb65019d8c6139b78d8228d9f6e08b` |
| 41 | `def` | [arrowAction](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/arrowaction--f775896a25f66d1e3abdd99c.md) | 342 | `declaration-track:f775896a25f66d1e3abdd99c7c56109bb1fbe824bb19d8d460576a5429f489a2` |
| 42 | `def` | [arrowMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/arrowmuldistribmulaction--743e684d3f6e7ad4a530769a.md) | 358 | `declaration-track:743e684d3f6e7ad4a530769a24d06aa17eb7ac9fa301a573443c2464c78e1c42` |
| 43 | `def` | [mulAutArrow](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/mulautarrow--8d610ee643efa644878d9792.md) | 369 | `declaration-track:8d610ee643efa644878d9792668b97f82d40ffaf738e149efb56e03b43f5e66b` |
| 44 | `theorem` | [smul_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-left-cancel--bfb3e936588d6079727d4f7e.md) | 384 | `result-track:bfb3e936588d6079727d4f7ea678411c58b6e88e737980f6cd743b50273a36fa` |
| 45 | `theorem` | [smul_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/smul-eq-zero--32b04de8f490a5905a33274d.md) | 397 | `result-track:32b04de8f490a5905a33274da8f75bad421668f49af49483f74340e6852ecded` |
| 46 | `theorem` | [isUnit_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/isunit-smul-iff--f6d3404f0024bfbc69746c8e.md) | 410 | `result-track:f6d3404f0024bfbc69746c8ef562f02af0ae4a54409b9d71ac98ee81f15975f2` |
| 47 | `theorem` | [IsUnit.smul_sub_iff_sub_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/declarations/isunit-smul-sub-iff-sub-inv-smul--ac077d05162a01d22cfc313f.md) | 415 | `result-track:ac077d05162a01d22cfc313f83da5ce3ce012d3d6f729124bad7fc8832a88293` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
