# Verification target: GRWTSK.Algebra.LinearAlgebra.Internal.Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67a020ee476dd4f3979130451d66a933bb5cd29e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67a020ee476dd4f3979130451d66a933bb5cd29e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [AddCommMonoid.ofSubmonoidOnSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/addcommmonoid-ofsubmonoidonsemiring--16580cac9c1ee417d17bc190.md) | 48 | `declaration-track:16580cac9c1ee417d17bc19000b66069724a58199cc6cc5fc6720b5ce1022bfd` |
| 2 | `instance` | [AddCommGroup.ofSubgroupOnRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/addcommgroup-ofsubgrouponring--254acca9920a7dcb38929d24.md) | 52 | `declaration-track:254acca9920a7dcb38929d245f59faba18b8f27544278ee035bea0b81308a1d2` |
| 3 | `theorem` | [SetLike.algebraMap_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/setlike-algebramap-mem-graded--68e164be655fc1d1a483ab65.md) | 56 | `result-track:68e164be655fc1d1a483ab65d84a737d2b1190e1f8a01fc1fb9883753319ed51` |
| 4 | `theorem` | [SetLike.nat_cast_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/setlike-nat-cast-mem-graded--2d836d87d5b85623f2eaaa4d.md) | 62 | `result-track:2d836d87d5b85623f2eaaa4de9c0df1ff448675d81d4ef87d5382517f67a8ebd` |
| 5 | `theorem` | [SetLike.int_cast_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/setlike-int-cast-mem-graded--7d4ad50848c53b183f4bee4e.md) | 71 | `result-track:7d4ad50848c53b183f4bee4e99ece47ed2a4c598f9b98f1bfe826dcfd1ca5ad8` |
| 6 | `instance` | [gnonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/gnonunitalnonassocsemiring--c9830696fe8e846f65f26625.md) | 91 | `declaration-track:c9830696fe8e846f65f2662512114d2a0ad731b75d487ce9a7b10a53c829f66e` |
| 7 | `instance` | [gsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/gsemiring--de343130ff57642b6579843d.md) | 102 | `declaration-track:de343130ff57642b6579843d1de9883f3381e282ea9e8afea3f4cfc185abda25` |
| 8 | `instance` | [gcommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/gcommsemiring--ae955e7378b719d94a603674.md) | 115 | `declaration-track:ae955e7378b719d94a603674ee1179073bf02a8b5b31547bf48e1d20fc190e1d` |
| 9 | `instance` | [gring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/gring--a614997a069d34d697032388.md) | 121 | `declaration-track:a614997a069d34d697032388476e3fe7e064f752e05f3f41ed132e7f8bec1219` |
| 10 | `instance` | [gcommRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/gcommring--52c154e38842b8ac886ab4d2.md) | 130 | `declaration-track:52c154e38842b8ac886ab4d2ac67940851d79084193373f88cf22e3e826b4f4c` |
| 11 | `def` | [coeRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coeringhom--bd3f4e3b9f94bb3ff12dd39e.md) | 144 | `declaration-track:bd3f4e3b9f94bb3ff12dd39e9558ac04cbdc091ed6a1c61ea270cf8811180f3e` |
| 12 | `theorem` | [coeRingHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coeringhom-of--eccf72bd83d16123b48bfc99.md) | 150 | `result-track:eccf72bd83d16123b48bfc99bda13e4cdae8c6951a796f6d53ef949a21bb772f` |
| 13 | `theorem` | [coe_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-mul-apply--1d3965c324b3a0703413c15f.md) | 155 | `result-track:1d3965c324b3a0703413c15f671cce0020372c9222e6bc91d224a700b5e171cf` |
| 14 | `theorem` | [coe_mul_apply_eq_dfinsupp_sum](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-mul-apply-eq-dfinsupp-sum--dd1e90f63ac05684f22ee4af.md) | 164 | `result-track:dd1e90f63ac05684f22ee4af57ec2a324262394c0dfa46a73b4e5024a80ee891` |
| 15 | `theorem` | [coe_of_mul_apply_aux](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-of-mul-apply-aux--691657337ad848c1306bc4f4.md) | 179 | `result-track:691657337ad848c1306bc4f445452518586d94eeb326c3b332e4151154e644e8` |
| 16 | `theorem` | [coe_mul_of_apply_aux](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-mul-of-apply-aux--c2457cc477e28b48a4def348.md) | 194 | `result-track:c2457cc477e28b48a4def348bd2ba050895b408b2a38a40d959198a471d8b2b0` |
| 17 | `theorem` | [coe_of_mul_apply_add](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-of-mul-apply-add--7acf08114b4d74365a85fd96.md) | 209 | `result-track:7acf08114b4d74365a85fd96167e11f0966679a29fb079533c7c11146dcf8dec` |
| 18 | `theorem` | [coe_mul_of_apply_add](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-mul-of-apply-add--ceacac08687af51c4036ff04.md) | 214 | `result-track:ceacac08687af51c4036ff04847768834b656559491b0d6c041ff5fcbae0a874` |
| 19 | `theorem` | [coe_of_mul_apply_of_not_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-of-mul-apply-of-not-le--495cddccbc9de5080cb5b737.md) | 227 | `result-track:495cddccbc9de5080cb5b7379305ded81a04d6e6ba65b5abf760e41611358bb8` |
| 20 | `theorem` | [coe_mul_of_apply_of_not_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-mul-of-apply-of-not-le--3bd1fa12d1a707d7c6d2ac74.md) | 239 | `result-track:3bd1fa12d1a707d7c6d2ac74f63a9a48be4bf770c0cfa92b7bf44b40cab686a2` |
| 21 | `theorem` | [coe_mul_of_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-mul-of-apply-of-le--2f3000577659912899fec95c.md) | 255 | `result-track:2f3000577659912899fec95c5ee7249eb2750b841262cf06317de41f8d8a40e6` |
| 22 | `theorem` | [coe_of_mul_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-of-mul-apply-of-le--4313d9794ed99f43a41a89a5.md) | 260 | `result-track:4313d9794ed99f43a41a89a57fd9eba0d5c001b798e09749e3143fea89554234` |
| 23 | `theorem` | [coe_mul_of_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-mul-of-apply--f8560618ac975dbbd2ce9973.md) | 265 | `result-track:f8560618ac975dbbd2ce99734586172c5f7f0a9c648414af0ec243bdf9dd353b` |
| 24 | `theorem` | [coe_of_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/coe-of-mul-apply--3d66f283ae1b2d05a14e6c42.md) | 271 | `result-track:3d66f283ae1b2d05a14e6c4268420c63710989c29721455e64358b7ccdc4be0d` |
| 25 | `instance` | [galgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/galgebra--cc9fe9d396eb961c764f2808.md) | 287 | `declaration-track:cc9fe9d396eb961c764f280834c805d3c1d5763663c3ba4f21036e8968cd846a` |
| 26 | `theorem` | [setLike.coe_galgebra_toFun](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/setlike-coe-galgebra-tofun--0a4267eb9a41c4b6786a5064.md) | 299 | `result-track:0a4267eb9a41c4b6786a506472a4605461e34dce9134fb3f172efa978999c9f4` |
| 27 | `instance` | [nat_power_gradedMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/nat-power-gradedmonoid--31696ef926f912f066a22701.md) | 306 | `declaration-track:31696ef926f912f066a22701e55d0e96e8b2ac988bd96481391937412667b3c4` |
| 28 | `def` | [DirectSum.coeAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/directsum-coealghom--0345f99b1ed575f88bd2cac1.md) | 318 | `declaration-track:0345f99b1ed575f88bd2cac17a79cbd1ab3b19cb98db300f7fee51c3af2c045f` |
| 29 | `theorem` | [Submodule.iSup_eq_toSubmodule_range](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/submodule-isup-eq-tosubmodule-range--6d4853dafa80077a29cf4631.md) | 325 | `result-track:6d4853dafa80077a29cf4631910ea8316ddae8e4f2ce64bdd91ea1293d2a7dc9` |
| 30 | `theorem` | [DirectSum.coeAlgHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/directsum-coealghom-of--e303470fe1ffb36426a6c140.md) | 332 | `result-track:e303470fe1ffb36426a6c140baf4d90c96b4892a74a3bae65357348c701bc79a` |
| 31 | `theorem` | [SetLike.homogeneous_zero_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/setlike-homogeneous-zero-submodule--51f889b61831a8131bc44287.md) | 342 | `result-track:51f889b61831a8131bc442872938d6eb2d4966702f0f01136bdebaf2bb781b60` |
| 32 | `theorem` | [SetLike.Homogeneous.smul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/declarations/setlike-homogeneous-smul--a6709c8546e6e6fe40fbcd44.md) | 347 | `result-track:a6709c8546e6e6fe40fbcd4467f334fbc63e801fb4ce6dcd9eaf2c25ebfdd781` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
