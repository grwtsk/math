# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Homogeneous.Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce82b31cde78e83847082ecfdb4e831a77636cd5",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce82b31cde78e83847082ecfdb4e831a77636cd5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Internal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMonoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Variables` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.WeightedHomogeneous` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/ishomogeneous--4e732d2deb9bfd6777f563b8.md) | 45 | `declaration-track:4e732d2deb9bfd6777f563b8d68a278397b9883167b58c46ceed6fe00a06d758` |
| 2 | `theorem` | [weightedTotalDegree_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/weightedtotaldegree-one--def198eed3768a580bab03d7.md) | 50 | `result-track:def198eed3768a580bab03d7935f0d1c69c2afd73734b78af7394d03f9b6ca77` |
| 3 | `theorem` | [weightedTotalDegree_rename_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/weightedtotaldegree-rename-of-injective--7fb62800e0c6674405dd85d5.md) | 56 | `result-track:7fb62800e0c6674405dd85d541664ef2e7c42460e848ac8446b2a351717bf1c5` |
| 4 | `def` | [homogeneousSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneoussubmodule--e5cd810ae1fbc491f4b10401.md) | 67 | `declaration-track:e5cd810ae1fbc491f4b1040129a843f1b50bae1d5db93c730574bffda15bb2cd` |
| 5 | `lemma` | [weightedHomogeneousSubmodule_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/weightedhomogeneoussubmodule-one--35bdc0d35281937bd12c7a31.md) | 86 | `result-track:35bdc0d35281937bd12c7a319d08ad0a2847798c10f7d12236c76c1a8eec9b42` |
| 6 | `theorem` | [mem_homogeneousSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/mem-homogeneoussubmodule--a6461da5cef0d6cf1f6909f6.md) | 92 | `result-track:a6461da5cef0d6cf1f6909f643d1469164fd1da560fe1f03aaf1958a600d7e29` |
| 7 | `theorem` | [homogeneousSubmodule_eq_finsupp_supported](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneoussubmodule-eq-finsupp-supported--ef5a32299f3f1f9564ceed6d.md) | 98 | `result-track:ef5a32299f3f1f9564ceed6d8443b60d3f6b135e04ab6b2a93a08c13d0a9c413` |
| 8 | `theorem` | [homogeneousSubmodule_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneoussubmodule-mul--ab275e78e2d5f2ca7d901cd2.md) | 105 | `result-track:ab275e78e2d5f2ca7d901cd2d5a55cd39ba0e06282575ddfb90e729de491e8ef` |
| 9 | `theorem` | [isHomogeneous_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/ishomogeneous-monomial--47e46ac775c50dd460b5286e.md) | 111 | `result-track:47e46ac775c50dd460b5286e4c10b151444a5093df8cc9441fef2790e7769b42` |
| 10 | `theorem` | [totalDegree_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/totaldegree-eq-zero-iff--3f8d3900eece549bf6e8b589.md) | 118 | `result-track:3f8d3900eece549bf6e8b589167de30b715aee4c3ad14d45605a32c32f9fe650` |
| 11 | `theorem` | [totalDegree_zero_iff_isHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/totaldegree-zero-iff-ishomogeneous--093fd360fa42f5d8fea858db.md) | 123 | `result-track:093fd360fa42f5d8fea858dbab264b5d715efe0150a301cc82000f40bef73665` |
| 12 | `theorem` | [isHomogeneous_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/ishomogeneous-c--32796f781944307cfcd371aa.md) | 130 | `result-track:32796f781944307cfcd371aa453c9c98438788cd94a55eec57df2a903dd03360` |
| 13 | `theorem` | [isHomogeneous_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/ishomogeneous-zero--0c059786a7029ddd32e017c5.md) | 136 | `result-track:0c059786a7029ddd32e017c55a0b71f833c3a09b8d2437c2cdfe4695efc17f4b` |
| 14 | `theorem` | [isHomogeneous_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/ishomogeneous-one--742a437f74d88c568120070f.md) | 139 | `result-track:742a437f74d88c568120070f2bdad13f15dee49db7ac07a6bfdd1949cdc72a7e` |
| 15 | `theorem` | [isHomogeneous_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/ishomogeneous-x--04452fbfb1d52aaba30e7937.md) | 144 | `result-track:04452fbfb1d52aaba30e793729f4c064e5688b4c6bbc29926f2e817088917f60` |
| 16 | `theorem` | [coeff_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/coeff-eq-zero--5f0afc21e31c3ee486bf018f.md) | 155 | `result-track:5f0afc21e31c3ee486bf018fad23a8d41ed2649d03e74ca18175e70410a30153` |
| 17 | `theorem` | [inj_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/inj-right--5855007cc281de2265e49587.md) | 160 | `result-track:5855007cc281de2265e49587fb8a9f553dcfd8694c2ee8c4d6237007c7c5a56d` |
| 18 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/add--3ad650b9aef8ee712f72914a.md) | 164 | `result-track:3ad650b9aef8ee712f72914a9d589d54ae02ac815bf7e144eef77429dae6d4ab` |
| 19 | `theorem` | [sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/sum--5dc5b8b0a34ab210cded1c73.md) | 167 | `result-track:5dc5b8b0a34ab210cded1c73f864c09b9ae3fb0b9e554c914419926af7067e78` |
| 20 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/mul--ef2856fc6de974c3af168715.md) | 171 | `result-track:ef2856fc6de974c3af16871517c5cc9b8ed1eb6a0e009bd0a68459107f5fb9f0` |
| 21 | `theorem` | [prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/prod--3f29ed042327e397cbdb0ea2.md) | 174 | `result-track:3f29ed042327e397cbdb0ea2810707253835f02bfb3efcdade20d7cdd3637cfb` |
| 22 | `lemma` | [C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/c-mul--cf2fa5528ff69b5ee012d523.md) | 187 | `result-track:cf2fa5528ff69b5ee012d5239fe5b6e771ef3410952b0df4665853f101e3f8f6` |
| 23 | `lemma` | [_root_.MvPolynomial.isHomogeneous_C_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/root-mvpolynomial-ishomogeneous-c-mul-x--a646f7083a577dc07f51c03f.md) | 191 | `result-track:a646f7083a577dc07f51c03fc67c74502322ffb5064ed8eaaf68d792b4c14d33` |
| 24 | `lemma` | [pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/pow--e9ba2bbb1f6130ef5f06776d.md) | 195 | `result-track:e9ba2bbb1f6130ef5f06776d3e4c9d7001b4424686cc9a74d3048c22f86343bc` |
| 25 | `lemma` | [_root_.MvPolynomial.isHomogeneous_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/root-mvpolynomial-ishomogeneous-x-pow--e213cbaf03877eb56bdf3e38.md) | 200 | `result-track:e213cbaf03877eb56bdf3e38fe83463044373cf01a0704c3b825e4b7499f2250` |
| 26 | `lemma` | [_root_.MvPolynomial.isHomogeneous_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/root-mvpolynomial-ishomogeneous-c-mul-x-pow--ca89c0508a299dfc501add98.md) | 204 | `result-track:ca89c0508a299dfc501add986fa30c0cfeba6b9fd1020e742cd7f6e148052f3e` |
| 27 | `lemma` | [eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/eval--2283711140b7c934ccec1549.md) | 208 | `result-track:2283711140b7c934ccec1549029bee3e383014fc1691cbf7cf3636f309427a36` |
| 28 | `lemma` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/map--b2903f1f620e7fa169a580ea.md) | 222 | `result-track:b2903f1f620e7fa169a580eac226c4617b8d0509e5c9a462e058f3a6e8fc7b47` |
| 29 | `lemma` | [aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/aeval--55989a825b0b54d96aa61239.md) | 225 | `result-track:55989a825b0b54d96aa61239a34eb8234eaac5667dec7cae1a7d7e6dc9104b55` |
| 30 | `theorem` | [neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/neg--0603656dd795e718dbda3dc2.md) | 235 | `result-track:0603656dd795e718dbda3dc25da397c8516d488a7131380d72d75cd2f829c2ab` |
| 31 | `theorem` | [sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/sub--67f048504844905c352d5b48.md) | 238 | `result-track:67f048504844905c352d5b483a4c2a81f45b90992af7a8de07faa4427ca0ea5a` |
| 32 | `lemma` | [totalDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/totaldegree-le--6ffe0adc03de74ef0bb4e501.md) | 246 | `result-track:6ffe0adc03de74ef0bb4e501793b3f3759f8d7ff0a6a8f0c20d20b8c45e8ee8f` |
| 33 | `theorem` | [totalDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/totaldegree--827dfa389aad6bcd192b95a2.md) | 253 | `result-track:827dfa389aad6bcd192b95a2c9805265aad0354d23bdbdeb235bbd2da7e09a55` |
| 34 | `theorem` | [rename_isHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/rename-ishomogeneous--3ef3864e9cb3af313db26561.md) | 262 | `result-track:3ef3864e9cb3af313db265618bc025439ccc8cfd5634195020899dfe03fd53c6` |
| 35 | `theorem` | [rename_isHomogeneous_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/rename-ishomogeneous-iff--fa3774608579fad9d3ae3982.md) | 271 | `result-track:fa3774608579fad9d3ae3982e50afab8ec53a42c8b996cf185cb5a79446c4b87` |
| 36 | `lemma` | [finSuccEquiv_coeff_isHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/finsuccequiv-coeff-ishomogeneous--c1a0c2b7ed9eec6cbfa03607.md) | 279 | `result-track:c1a0c2b7ed9eec6cbfa036071c8167870cf9ef149c26ddbc9aa4951694606146` |
| 37 | `lemma` | [coeff_isHomogeneous_of_optionEquivLeft_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/coeff-ishomogeneous-of-optionequivleft-symm--0b4e14992d36a886f90bd699.md) | 292 | `result-track:0b4e14992d36a886f90bd6991b1685bf83bb938e4dc061153714792b22b638e2` |
| 38 | `lemma` | [exists_eval_ne_zero_of_coeff_finSuccEquiv_ne_zero_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/exists-eval-ne-zero-of-coeff-finsuccequiv-ne-zero-aux--0e66a5f2ecf4924cedc4cb16.md) | 311 | `result-track:0e66a5f2ecf4924cedc4cb162873fc83167f4787194df7cbf5ecf60b71991175` |
| 39 | `lemma` | [exists_eval_ne_zero_of_totalDegree_le_card_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/exists-eval-ne-zero-of-totaldegree-le-card-aux--4a360d158afc7832938bd076.md) | 351 | `result-track:4a360d158afc7832938bd076d358a1443501edc0c7fb37d3be543d52be76050f` |
| 40 | `lemma` | [eq_zero_of_forall_eval_eq_zero_of_le_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/eq-zero-of-forall-eval-eq-zero-of-le-card--1c7a4c4ca443a2ca6f2a182d.md) | 393 | `result-track:1c7a4c4ca443a2ca6f2a182de6d978860fc059f4747ba615fdf1fdf0e5756bf9` |
| 41 | `lemma` | [funext_of_le_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/funext-of-le-card--31889f4231dd26061ed5cacc.md) | 408 | `result-track:31889f4231dd26061ed5cacc674814eb9d10d4162a75fa77ab2779d74c1ff3eb` |
| 42 | `lemma` | [eq_zero_of_forall_eval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/eq-zero-of-forall-eval-eq-zero--53c4d45b82fd2a18904d2804.md) | 417 | `result-track:53c4d45b82fd2a18904d280429f3b60528da1d89552406e8846fbe06f912e794` |
| 43 | `lemma` | [funext](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/funext--c0469bd42dfe14f93d22ba40.md) | 424 | `result-track:c0469bd42dfe14f93d22ba40e389aac72b391014da83ab787067764986295cb1` |
| 44 | `instance` | [HomogeneousSubmodule.gcommSemiring](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneoussubmodule-gcommsemiring--6a5e693d0f8137dafbfb83ec.md) | 434 | `declaration-track:6a5e693d0f8137dafbfb83ec20857045ca3f5750e60e4d92b616c53bf17fabdb` |
| 45 | `def` | [homogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneouscomponent--7519388428e007ba60b62b27.md) | 447 | `declaration-track:7519388428e007ba60b62b27d1d11c179167f7ce8a439854ea708e859db6641c` |
| 46 | `theorem` | [homogeneousComponent_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneouscomponent-mem--dfe30d43c946248a957b4b45.md) | 456 | `result-track:dfe30d43c946248a957b4b45fe197c94398b6054fc19a9565dcee070aeb766e7` |
| 47 | `theorem` | [coeff_homogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/coeff-homogeneouscomponent--0a01028ce83a9639635d21f4.md) | 460 | `result-track:0a01028ce83a9639635d21f4da27f24a06efa29ad1aa0258208d4c39248b97f9` |
| 48 | `theorem` | [homogeneousComponent_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneouscomponent-apply--8f9504721ce871f7c13e77cb.md) | 465 | `result-track:8f9504721ce871f7c13e77cba9ece00ac5bd0b9ca2c6857dfea04a915f25c779` |
| 49 | `theorem` | [homogeneousComponent_isHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneouscomponent-ishomogeneous--ddee757e789fb166705e654a.md) | 470 | `result-track:ddee757e789fb166705e654a5406599fe3944036c0beb86dbb0e59b55207c257` |
| 50 | `theorem` | [homogeneousComponent_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneouscomponent-zero--5c31834a3b52128262a3419c.md) | 474 | `result-track:5c31834a3b52128262a3419c39fbd8389c87ea2a10a2dd1ff29dccde78c01cbb` |
| 51 | `theorem` | [homogeneousComponent_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneouscomponent-c-mul--1fe9ea41c1f8352a0fd9c9bb.md) | 478 | `result-track:1fe9ea41c1f8352a0fd9c9bbe08c225d847a63cfac773623599a64528fcd984f` |
| 52 | `theorem` | [homogeneousComponent_eq_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneouscomponent-eq-zero--39f398f22d200976aca0158d.md) | 482 | `result-track:39f398f22d200976aca0158da294866390591ae126a74ab385be5d24161132d4` |
| 53 | `theorem` | [homogeneousComponent_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneouscomponent-eq-zero--648b891c9b77455e26e8424a.md) | 488 | `result-track:648b891c9b77455e26e8424aad86cb72b5712c6aa85b389ff7d75526de232e6b` |
| 54 | `theorem` | [sum_homogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/sum-homogeneouscomponent--87c2729504480d2e0499e24a.md) | 493 | `result-track:87c2729504480d2e0499e24a349d83fe74c87684ea8d4fea9eca4a16ab923e90` |
| 55 | `theorem` | [homogeneousComponent_of_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneouscomponent-of-mem--186105631d2b4a0b2c80ecd7.md) | 500 | `result-track:186105631d2b4a0b2c80ecd7135166e8b17f0bc4153f89d36b264a31fa43e019` |
| 56 | `lemma` | [HomogeneousSubmodule.gradedMonoid](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/homogeneoussubmodule-gradedmonoid--67b92d7d186ee55f885cc8ef.md) | 513 | `result-track:67b92d7d186ee55f885cc8efd2da987e2dca3b852dfabe6c3025d329f3e7a8fb` |
| 57 | `abbrev` | [decomposition](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/decomposition--674c14338fa6dd24cb7d03d2.md) | 518 | `declaration-track:674c14338fa6dd24cb7d03d294d59fe71409c06e184a4786b61fbdf09fcdfba3` |
| 58 | `abbrev` | [gradedAlgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/gradedalgebra--9761a79379ff4c98f7327ecc.md) | 528 | `declaration-track:9761a79379ff4c98f7327ecc9beed47aba2b0e4093332a83f8d098cfa02b257e` |
| 59 | `theorem` | [decomposition.decompose'_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/decomposition-decompose-apply--179a37a1831cb14deb0397ab.md) | 531 | `result-track:179a37a1831cb14deb0397abdd6913bf3b2e37262cc4303102abce514a20616c` |
| 60 | `theorem` | [decomposition.decompose'_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/declarations/decomposition-decompose-eq--ca65b4b04f7a4581221e61e9.md) | 535 | `result-track:ca65b4b04f7a4581221e61e929b91d2efb20f9fac593a4c1b480499c25f6b9ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
