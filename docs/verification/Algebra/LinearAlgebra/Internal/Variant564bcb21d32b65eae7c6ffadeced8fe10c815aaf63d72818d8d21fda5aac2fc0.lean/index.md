# Verification target: GRWTSK.Algebra.LinearAlgebra.Internal.Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22b0a848e72b70693b308d8cfbc1af40e226d5a9",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22b0a848e72b70693b308d8cfbc1af40e226d5a9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [AddCommMonoid.ofSubmonoidOnSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/addcommmonoid-ofsubmonoidonsemiring--3671ca8b055a5d9c9136f910.md) | 56 | `declaration-track:3671ca8b055a5d9c9136f910f76db63394e55d01f029e0afb27e2a240ab1fc96` |
| 2 | `instance` | [AddCommGroup.ofSubgroupOnRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/addcommgroup-ofsubgrouponring--6741b3e75f702ad47380a73d.md) | 60 | `declaration-track:6741b3e75f702ad47380a73d6fb368965b6ccef4abe2598c2261cde948212946` |
| 3 | `theorem` | [SetLike.algebraMap_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/setlike-algebramap-mem-graded--ed500776c7c38d4aeebb8d4e.md) | 64 | `result-track:ed500776c7c38d4aeebb8d4efb325fb7859e14426b088f47a21ac3f2a829781d` |
| 4 | `theorem` | [SetLike.nat_cast_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/setlike-nat-cast-mem-graded--81df926a911a066cb2ab9404.md) | 70 | `result-track:81df926a911a066cb2ab94040bbf2876404af8a41835c209cc4650b61a146d87` |
| 5 | `theorem` | [SetLike.int_cast_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/setlike-int-cast-mem-graded--48449bb38dc9a79ea3be917a.md) | 79 | `result-track:48449bb38dc9a79ea3be917ab595db0d157969aa85bc30371248c376faf706e4` |
| 6 | `instance` | [gnonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/gnonunitalnonassocsemiring--e4e2b580ad6170f47e529d4d.md) | 99 | `declaration-track:e4e2b580ad6170f47e529d4d3e9bfbb528e810b61adf1bc69c7b99f878e7d8cf` |
| 7 | `instance` | [gsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/gsemiring--afd0523069a9b15b14048d63.md) | 110 | `declaration-track:afd0523069a9b15b14048d63a6e95b4dd093a1a0fdf6be2e415c95d9d4271dd6` |
| 8 | `instance` | [gcommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/gcommsemiring--9baab7042b9999acaa4c0e0f.md) | 123 | `declaration-track:9baab7042b9999acaa4c0e0f50e8951ec895dee4b75664a72e81f5bb591c66c0` |
| 9 | `instance` | [gring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/gring--32cb24b77d07039a3e163753.md) | 129 | `declaration-track:32cb24b77d07039a3e1637536ea908827e0713aab2477b00f414dde6c59f6f2b` |
| 10 | `instance` | [gcommRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/gcommring--1c5b96ed9c41b3c1f22f9d49.md) | 138 | `declaration-track:1c5b96ed9c41b3c1f22f9d49f12e69b591301f4fc80440e782dc3d7697bc782f` |
| 11 | `def` | [coeRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coeringhom--8744574db87a4dcbafebe974.md) | 152 | `declaration-track:8744574db87a4dcbafebe974874eb2b53b6a861c962abfbe03925460145a701b` |
| 12 | `theorem` | [coeRingHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coeringhom-of--d2026a63204c360cd30b4b9c.md) | 158 | `result-track:d2026a63204c360cd30b4b9c82bb3e5ffde2e6ec8b951cd6a3b92f7895a79856` |
| 13 | `theorem` | [coe_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-mul-apply--7a3856b4a10b660a912ebebd.md) | 163 | `result-track:7a3856b4a10b660a912ebebd9b4a488a9ca9d9f4377b45271024559c753256cc` |
| 14 | `theorem` | [coe_mul_apply_eq_dfinsupp_sum](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-mul-apply-eq-dfinsupp-sum--1ac3af5dac4b1e9ef4b8a5af.md) | 172 | `result-track:1ac3af5dac4b1e9ef4b8a5af172350e51011b207cae39ce72a87d880808750e2` |
| 15 | `theorem` | [coe_of_mul_apply_aux](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-of-mul-apply-aux--77ca2f43037a28029ae28360.md) | 187 | `result-track:77ca2f43037a28029ae2836035a45e46dfb3957266a5a9365537497806fe9936` |
| 16 | `theorem` | [coe_mul_of_apply_aux](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-mul-of-apply-aux--eed3f6540b9ea6b8c7fc20f3.md) | 202 | `result-track:eed3f6540b9ea6b8c7fc20f31d731b6c041f2831acec51068714932a2c79f748` |
| 17 | `theorem` | [coe_of_mul_apply_add](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-of-mul-apply-add--08afadab9fd4c8c80477a78b.md) | 217 | `result-track:08afadab9fd4c8c80477a78b6ff05448ab98f23b13077101671a19a869ea22c6` |
| 18 | `theorem` | [coe_mul_of_apply_add](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-mul-of-apply-add--8953e8b2a0f20a8450521fa5.md) | 222 | `result-track:8953e8b2a0f20a8450521fa5f2f0b2c6177423baaedb9e623fd5db261547c8ff` |
| 19 | `theorem` | [coe_of_mul_apply_of_not_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-of-mul-apply-of-not-le--09e10b8b3e57b2b51c4c34fd.md) | 235 | `result-track:09e10b8b3e57b2b51c4c34fd2b0569f25e43524c4162120b2e69a4d2f563af1b` |
| 20 | `theorem` | [coe_mul_of_apply_of_not_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-mul-of-apply-of-not-le--7211322fc0d083f6e5332bec.md) | 247 | `result-track:7211322fc0d083f6e5332bec88bcb5a7940e22bbdf48c6e5c31c4d6451c3054a` |
| 21 | `theorem` | [coe_mul_of_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-mul-of-apply-of-le--276ceefaee86ce8143e74270.md) | 263 | `result-track:276ceefaee86ce8143e74270d46c50b490857237ad2233b1d9e20e3c1327a132` |
| 22 | `theorem` | [coe_of_mul_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-of-mul-apply-of-le--4860b16a879f6c04f20caeae.md) | 268 | `result-track:4860b16a879f6c04f20caeae43c8f994fb65ba1f7a7aaf34fc67f7d791080375` |
| 23 | `theorem` | [coe_mul_of_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-mul-of-apply--892288abfd9e2d0158ec01d1.md) | 273 | `result-track:892288abfd9e2d0158ec01d1290737fc3557ec48aa65d8e3b0c1582c5bf01839` |
| 24 | `theorem` | [coe_of_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/coe-of-mul-apply--7ea422112affb2695d2f680f.md) | 279 | `result-track:7ea422112affb2695d2f680f7730185e30e8b30266eb9a97fa2bd9938a4f0916` |
| 25 | `instance` | [galgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/galgebra--1d78a6ff2aedbb8202a3da1b.md) | 295 | `declaration-track:1d78a6ff2aedbb8202a3da1bc99d2954b09feb32ef1747529d2902ac047b9488` |
| 26 | `theorem` | [setLike.coe_galgebra_toFun](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/setlike-coe-galgebra-tofun--a179d82919d9bd83eacbe615.md) | 307 | `result-track:a179d82919d9bd83eacbe6159ada58b32f21cc6fef5aab256ac7f757243e7a8d` |
| 27 | `instance` | [nat_power_gradedMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/nat-power-gradedmonoid--be559a6f57d27fcf2f33c60b.md) | 314 | `declaration-track:be559a6f57d27fcf2f33c60b7569fc9bfcc871e1f5d20b7fd45e3e7714407089` |
| 28 | `def` | [DirectSum.coeAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/directsum-coealghom--fc1b67921a075e19da6c4954.md) | 326 | `declaration-track:fc1b67921a075e19da6c49546699897a41f857f00309fbe66f0dcf5efe0eb128` |
| 29 | `theorem` | [Submodule.iSup_eq_toSubmodule_range](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/submodule-isup-eq-tosubmodule-range--10f027898f2521f57fb6bf9f.md) | 333 | `result-track:10f027898f2521f57fb6bf9faa05c8024eb4bf5300e73510120085deed7131ff` |
| 30 | `theorem` | [DirectSum.coeAlgHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/directsum-coealghom-of--5a691a416896354b81a70186.md) | 340 | `result-track:5a691a416896354b81a701862733dff2a9831c99d79b0691f2ae4c3fe2ee08d9` |
| 31 | `theorem` | [SetLike.homogeneous_zero_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/setlike-homogeneous-zero-submodule--8f6b1b8a552fa0cdc2d9e48a.md) | 350 | `result-track:8f6b1b8a552fa0cdc2d9e48a6aeca513d7b70480750c6e52110c0b197d1851e5` |
| 32 | `theorem` | [SetLike.Homogeneous.smul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/declarations/setlike-homogeneous-smul--3318972d7bd78691768da973.md) | 355 | `result-track:3318972d7bd78691768da973cb1eb813e5ea0e93c4e72e26f44b491a381e53aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
