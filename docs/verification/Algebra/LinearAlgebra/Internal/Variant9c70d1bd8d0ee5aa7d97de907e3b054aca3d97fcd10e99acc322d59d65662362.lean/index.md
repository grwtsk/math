# Verification target: GRWTSK.Algebra.LinearAlgebra.Internal.Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "322c52717a8b574dce9b626c096df60623ab4fd6",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `322c52717a8b574dce9b626c096df60623ab4fd6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean.json)

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
| 1 | `theorem` | [SetLike.algebraMap_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/setlike-algebramap-mem-graded--b1bf6248004d360c47a92d4f.md) | 61 | `result-track:b1bf6248004d360c47a92d4f00545de7642fe507dbc5f3782073146b9f22b350` |
| 2 | `theorem` | [SetLike.natCast_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/setlike-natcast-mem-graded--77a1af552d29b6a14a904143.md) | 66 | `result-track:77a1af552d29b6a14a9041434a2f30c6874061e6da63ff983b2ccf2b432f1b87` |
| 3 | `theorem` | [SetLike.intCast_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/setlike-intcast-mem-graded--a3a95d4c4c93baa06e8b4127.md) | 76 | `result-track:a3a95d4c4c93baa06e8b41278dde00a5f821b69b6b33e9898a66b0d28dfc6f00` |
| 4 | `instance` | [gnonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/gnonunitalnonassocsemiring--4ac5dde2bf919ca2d8760531.md) | 95 | `declaration-track:4ac5dde2bf919ca2d87605311752eb7f9f0a2516cba1e03ba39685c8b57fb831` |
| 5 | `instance` | [gsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/gsemiring--42961b2c665bbe7a61d941da.md) | 104 | `declaration-track:42961b2c665bbe7a61d941da39cd34ecffcb97829378640b3517d39d4415271a` |
| 6 | `instance` | [gcommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/gcommsemiring--95d8c2c3c20dc57a1f2a0727.md) | 111 | `declaration-track:95d8c2c3c20dc57a1f2a072758232717d79c87008c983c4f4c320129fbb4a7ef` |
| 7 | `instance` | [gring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/gring--6c7b7d8412b08ea36377f9f4.md) | 115 | `declaration-track:6c7b7d8412b08ea36377f9f4bcd1535834b6695b91ec64dd1661832f86b4d9ce` |
| 8 | `instance` | [gcommRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/gcommring--02ef85373a4f3358c35b3f0f.md) | 122 | `declaration-track:02ef85373a4f3358c35b3f0fd5f9f66ced07ec0bf02f22e6de1146e06234826a` |
| 9 | `def` | [coeRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coeringhom--9d1b4f78b1b506b6d34da5b1.md) | 134 | `declaration-track:9d1b4f78b1b506b6d34da5b164c48b774abc80b733d9229ba06168146f5a04eb` |
| 10 | `theorem` | [coeRingHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coeringhom-of--032b90a14f806fe55d35591c.md) | 139 | `result-track:032b90a14f806fe55d35591c0fc69fbb3dcfaa8fc5612c6ff2f0aad097bc039e` |
| 11 | `theorem` | [coe_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-mul-apply--9541834c05cfe48b1a0c0c7a.md) | 143 | `result-track:9541834c05cfe48b1a0c0c7a9b3e5f114718c50a6661081fbd3195f152069b8b` |
| 12 | `theorem` | [coe_mul_apply_eq_dfinsuppSum](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-mul-apply-eq-dfinsuppsum--3634f78de6948c92c3cf0933.md) | 150 | `result-track:3634f78de6948c92c3cf09339161cd70dab1d5a530c495cb0be82741d67f30e7` |
| 13 | `theorem` | [coe_mul_apply_eq_sum_antidiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-mul-apply-eq-sum-antidiagonal--b7a8601a1363a5482a3165db.md) | 165 | `result-track:b7a8601a1363a5482a3165db1485b25de870b89ac8a13a19f5032535d48068d9` |
| 14 | `theorem` | [coe_of_mul_apply_aux](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-of-mul-apply-aux--341d3a028c7f60f33018e45d.md) | 173 | `result-track:341d3a028c7f60f33018e45d3f4373548070a28e53ea7722b7e9ffb3a753f896` |
| 15 | `theorem` | [coe_mul_of_apply_aux](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-mul-of-apply-aux--21025fb3a100bd59e4e0b035.md) | 187 | `result-track:21025fb3a100bd59e4e0b035eda270eb9ebeaa4d5f21bd215d6b386044ecdf9d` |
| 16 | `theorem` | [coe_of_mul_apply_add](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-of-mul-apply-add--6f56e46f066ee4286f12280b.md) | 201 | `result-track:6f56e46f066ee4286f12280b49a4042a58d70bab8e174e19df594bc2976b3f17` |
| 17 | `theorem` | [coe_mul_of_apply_add](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-mul-of-apply-add--cd06f37a44d745ac22ead0ef.md) | 205 | `result-track:cd06f37a44d745ac22ead0efa4d46fba274227ffa2c6f98ae87bbb70a0e5eab9` |
| 18 | `theorem` | [coe_of_mul_apply_of_mem_zero](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-of-mul-apply-of-mem-zero--fe37a1b8b7171ab7b1a31fc1.md) | 209 | `result-track:fe37a1b8b7171ab7b1a31fc1557e85307cd7b45c8eeeb7ce31fff31e78edec13` |
| 19 | `theorem` | [coe_mul_of_apply_of_mem_zero](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-mul-of-apply-of-mem-zero--62f93701db3e86af0fee60a3.md) | 213 | `result-track:62f93701db3e86af0fee60a31498fcdaeda0d37b2290f86be58b45acdc6a75df` |
| 20 | `theorem` | [coe_of_mul_apply_of_not_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-of-mul-apply-of-not-le--02117c4f8bd0cf63a05fc30f.md) | 224 | `result-track:02117c4f8bd0cf63a05fc30f775983f0b9e1a13074dc7e192062ae72b7207824` |
| 21 | `theorem` | [coe_mul_of_apply_of_not_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-mul-of-apply-of-not-le--85d9cf659a037d1fdb6ff550.md) | 235 | `result-track:85d9cf659a037d1fdb6ff55013d7ba7eb7973117bb3841e9f1de9499c7a34209` |
| 22 | `theorem` | [coe_mul_of_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-mul-of-apply-of-le--01fd7a52d6f6feb72de231fb.md) | 251 | `result-track:01fd7a52d6f6feb72de231fb1edd0df86d51e7cb0bd75ad0440088506cc757fe` |
| 23 | `theorem` | [coe_of_mul_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-of-mul-apply-of-le--06fda1271ca37ccce91a9b39.md) | 255 | `result-track:06fda1271ca37ccce91a9b39949de41f1bbebc1e9a41a5cb4e19d57bb16028e5` |
| 24 | `theorem` | [coe_mul_of_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-mul-of-apply--9ea6598da5c9c9019015e4e2.md) | 259 | `result-track:9ea6598da5c9c9019015e4e2588576b2d3e6d7ea0c92c2d3425b9a91ffab88d3` |
| 25 | `theorem` | [coe_of_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-of-mul-apply--17c556e8cfa84adbdb1f6d1f.md) | 264 | `result-track:17c556e8cfa84adbdb1f6d1fb4edf5b14df49e8ec78318f360d4ed321f8c689d` |
| 26 | `instance` | [galgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/galgebra--656b93eede4f343116a4ac94.md) | 278 | `declaration-track:656b93eede4f343116a4ac94f66ad2c7dcc862d4dae2d23a6305a4cc26d87ae8` |
| 27 | `theorem` | [setLike.coe_galgebra_toFun](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/setlike-coe-galgebra-tofun--7236d5a31693c551a3716bdf.md) | 289 | `result-track:7236d5a31693c551a3716bdfbdd9e7098449f8ec81828dd5267fd47f4e924a42` |
| 28 | `instance` | [nat_power_gradedMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/nat-power-gradedmonoid--1e6215ab640884549106e580.md) | 295 | `declaration-track:1e6215ab640884549106e580bd2f93864a8b692ff71a214aa1b0f8d82061c490` |
| 29 | `def` | [DirectSum.coeAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/directsum-coealghom--5cddcfac208d087995d6ef86.md) | 306 | `declaration-track:5cddcfac208d087995d6ef863afed5b7ee1d0782f250501aa6dd1a260dbc5d7d` |
| 30 | `theorem` | [Submodule.iSup_eq_toSubmodule_range](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/submodule-isup-eq-tosubmodule-range--6e2a895a487fd051aa127965.md) | 312 | `result-track:6e2a895a487fd051aa1279656a8bec39c71cb414454871011408f8983f52d314` |
| 31 | `theorem` | [DirectSum.coeAlgHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/directsum-coealghom-of--a8e2ce0ebb4b9e073a2a7186.md) | 318 | `result-track:a8e2ce0ebb4b9e073a2a7186968a5bd0aed59abb80e12f210ee8c426601f7d99` |
| 32 | `def` | [subsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/subsemiring--a5df94213cadacdcef94f576.md) | 334 | `declaration-track:a5df94213cadacdcef94f57650389c4ead9a932c5d460ffc841315e06d14f4ce` |
| 33 | `instance` | [instSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/instsemiring--fe5972b2f27c58131cb98b0f.md) | 341 | `declaration-track:fe5972b2f27c58131cb98b0f9005421a131a589fd44e150ef1b42623b4160215` |
| 34 | `theorem` | [coe_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-natcast--16d70694bf20622cb75de3dc.md) | 343 | `result-track:16d70694bf20622cb75de3dc67e49dde8905dfcadba0e10664ad37fc6c00f341` |
| 35 | `theorem` | [coe_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-ofnat--ab7793b64bd4568d500f2a71.md) | 345 | `result-track:ab7793b64bd4568d500f2a712fcb61b5f11017101143fef7257cd11cb5e6f285` |
| 36 | `instance` | [instCommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/instcommsemiring--6b56d99cce96cca303e80979.md) | 357 | `declaration-track:6b56d99cce96cca303e80979dcba2ab418b12f851d59c67f5e1d27f75feaa16b` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/instance--f8cb1113c73284a05aa52abc.md) | 359 | `declaration-track:f8cb1113c73284a05aa52abcd0013f7e076eec33566755a9c572046670c065ed` |
| 38 | `lemma` | [algebraMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/algebramap-apply--d2e05c24f7609e06dda42f67.md) | 362 | `result-track:d2e05c24f7609e06dda42f67337986036806a9e93e0f55ca02ba6959f2cdb417` |
| 39 | `def` | [subring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/subring--011a4a73c58a1175da95056c.md) | 371 | `declaration-track:011a4a73c58a1175da95056c52338821b3f4a4b9273b0489aac692491692e4a1` |
| 40 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/instring--f39fe314f7be5a17bb643c6d.md) | 377 | `declaration-track:f39fe314f7be5a17bb643c6d5c745a520ce071d5361aef72dbedefeec06752ec` |
| 41 | `theorem` | [coe_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-intcast--3f27ce87fd381bec542910f1.md) | 379 | `result-track:3f27ce87fd381bec542910f15836a27ed64e5535b3d2cb79cfabc7bfcc048358` |
| 42 | `instance` | [instCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/instcommring--7b81ba00eff8ab1ffaabaf75.md) | 389 | `declaration-track:7b81ba00eff8ab1ffaabaf754dbfb4b2343fbc66ed1e0a9369a6bf2bfce86324` |
| 43 | `def` | [subalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/subalgebra--d0417cd2b752fa676f75e6e3.md) | 398 | `declaration-track:d0417cd2b752fa676f75e6e3808fac7ca6a36aacc8ca3c03103edd236873dd5f` |
| 44 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/instalgebra--b60e740564c61046b63d5a11.md) | 404 | `declaration-track:b60e740564c61046b63d5a11533f20abe138a201868465496501e9cec063f98b` |
| 45 | `theorem` | [coe_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/coe-algebramap--309d3f94b9409042215b99be.md) | 406 | `result-track:309d3f94b9409042215b99be1fc1b35ad1a35f9645f352856999ded5362a912d` |
| 46 | `theorem` | [SetLike.homogeneous_zero_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/setlike-homogeneous-zero-submodule--1d8fa9c7615ee1ff28a67457.md) | 415 | `result-track:1d8fa9c7615ee1ff28a6745712c272b7e798e6801587a904d9bcf261a2b59cca` |
| 47 | `theorem` | [SetLike.Homogeneous.smul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/setlike-homogeneous-smul--32b5b1e871ec50d0b0e6c1b7.md) | 419 | `result-track:32b5b1e871ec50d0b0e6c1b7cef84438fe3054c1fd15ced89d81dc02700234ed` |
| 48 | `theorem` | [mul_apply_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/mul-apply-eq-zero--8fe67b1e5b847b8e19c3f0f4.md) | 437 | `result-track:8fe67b1e5b847b8e19c3f0f4b9ae69a3bf4aa023827a242a37f02ab2b6d51376` |
| 49 | `theorem` | [listProd_apply_eq_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/listprod-apply-eq-zero--b545ca05c00729948d3c7f5d.md) | 453 | `result-track:b545ca05c00729948d3c7f5df49cb4ce851bfef2773e299d61bf1351c329f9f1` |
| 50 | `theorem` | [listProd_apply_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/listprod-apply-eq-zero--9b1f39093687c7708ef3b95a.md) | 463 | `result-track:9b1f39093687c7708ef3b95a0cf1b891e017f11d2fc75c0ef5e6d0872e7fc4ca` |
| 51 | `theorem` | [multisetProd_apply_eq_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/multisetprod-apply-eq-zero--7d6266e278562f120bff4223.md) | 485 | `result-track:7d6266e278562f120bff42231ee0523c83d367638fa46fce2b89f2bc8229270c` |
| 52 | `theorem` | [multisetProd_apply_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/multisetprod-apply-eq-zero--e22b0d5cc91e497d3841342a.md) | 492 | `result-track:e22b0d5cc91e497d3841342a7e681923fceb3f063c6637785712b67b413974e8` |
| 53 | `theorem` | [finsetProd_apply_eq_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/finsetprod-apply-eq-zero--70f19bdf16e033e5b0922e34.md) | 501 | `result-track:70f19bdf16e033e5b0922e344afb13629708a5754a8884429eac02a576a03af5` |
| 54 | `theorem` | [finsetProd_apply_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/declarations/finsetprod-apply-eq-zero--6d0929c98dc107d58dba5de9.md) | 506 | `result-track:6d0929c98dc107d58dba5de913b395f426d951db955c6b2b6222bf81d653f2a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
