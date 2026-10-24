# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f65372edda87738c15c6a0de3601ae455754118d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f65372edda87738c15c6a0de3601ae455754118d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.PiTensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TensorPower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/tensorpower--acf5d47c2d8725e4817f699b.md) | 44 | `declaration-track:acf5d47c2d8725e4817f699bea2472e3663a6a2dbd1780e4d2b51834429fb685` |
| 2 | `theorem` | [gradedMonoid_eq_of_reindex_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/gradedmonoid-eq-of-reindex-cast--ffbcedfdb6f7c0003ce4c565.md) | 57 | `result-track:ffbcedfdb6f7c0003ce4c5652f4e5293c6fe8da6370a7b14a14c5e015df58d3e` |
| 3 | `instance` | [gOne](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/gone--4bd96fac674fe9a3f74db7a1.md) | 73 | `declaration-track:4bd96fac674fe9a3f74db7a17e20f6aae4acd1d058e1c2448c6ad1269226f786` |
| 4 | `theorem` | [gOne_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/gone-def--60901367982b578e4d0373e0.md) | 77 | `result-track:60901367982b578e4d0373e0bb40117ad42921069174a4b2adf6368201af4fea` |
| 5 | `def` | [mulEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/mulequiv--c4b38d98a7f4964ff95eee61.md) | 81 | `declaration-track:c4b38d98a7f4964ff95eee6186e5f0fbbbb22df4ec46e3e1347a0f00820acc12` |
| 6 | `instance` | [gMul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/gmul--85abf908f1ed71d325f07542.md) | 85 | `declaration-track:85abf908f1ed71d325f07542c8bbc9b86e016f8c7344101cd96b7601d23f1fb8` |
| 7 | `theorem` | [gMul_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/gmul-def--e95c690c497d84a488dec2f2.md) | 91 | `result-track:e95c690c497d84a488dec2f226657a13cd82cb46789a1684fdf8afa1265dd8d6` |
| 8 | `theorem` | [gMul_eq_coe_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/gmul-eq-coe-linearmap--caa6b7493801044d5c742c5b.md) | 95 | `result-track:caa6b7493801044d5c742c5b891143cd76b9ba1155ce85ee36614c6327fc8e02` |
| 9 | `def` | [cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/cast--e6a950959d4ae53e6ae97211.md) | 103 | `declaration-track:e6a950959d4ae53e6ae972113bebcd201f8ba094626dad1c407d70d2450af547` |
| 10 | `theorem` | [cast_tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/cast-tprod--25b0cc8d4b9603c46376c9ed.md) | 105 | `result-track:25b0cc8d4b9603c46376c9edc02555c8813f76e845d627b83b7deaef4652f953` |
| 11 | `theorem` | [cast_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/cast-refl--1f5452066bbd34044fe606d6.md) | 110 | `result-track:1f5452066bbd34044fe606d6327fc68f270d02452d3810760af4c60020197ff4` |
| 12 | `theorem` | [cast_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/cast-symm--2ed3819e3c07989011471781.md) | 114 | `result-track:2ed3819e3c079890114717812b7b7cc659f6e94348e61f66e1dbd9577fe307fd` |
| 13 | `theorem` | [cast_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/cast-trans--f6ed8f6cd6ba4e85777f2ffa.md) | 118 | `result-track:f6ed8f6cd6ba4e85777f2ffa5226edfa35aee4a3d43cb50e5e38fa6ceb460ffb` |
| 14 | `theorem` | [cast_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/cast-cast--98040f5457e1a523914ebfd9.md) | 125 | `result-track:98040f5457e1a523914ebfd957412af96009b4aa5966b0a55d3e4b12ccb38869` |
| 15 | `theorem` | [gradedMonoid_eq_of_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/gradedmonoid-eq-of-cast--3926891e16c421c7a8499966.md) | 130 | `result-track:3926891e16c421c7a8499966074784ea6c3e8717537f8bc2d8470afd95397471` |
| 16 | `theorem` | [cast_eq_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/cast-eq-cast--c1c304f11e1f6ad1fcc5f979.md) | 136 | `result-track:c1c304f11e1f6ad1fcc5f97952063d75bdb122e39ef8f8e9b8828092e9ee5ab5` |
| 17 | `theorem` | [tprod_mul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/tprod-mul-tprod--619b9a9a16c5309d01f50ac5.md) | 143 | `result-track:619b9a9a16c5309d01f50ac59236fe154d37d651b24d928606720524007aae1b` |
| 18 | `theorem` | [one_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/one-mul--a3255acc156130f6d33442aa.md) | 153 | `result-track:a3255acc156130f6d33442aaba4a70c04fdfc9738764f4d893fd2feb97b9ca4c` |
| 19 | `theorem` | [mul_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/mul-one--8d8ef68152a3cf96974279b7.md) | 166 | `result-track:8d8ef68152a3cf96974279b74ecb3f012878f5e9d1d7e9c1c60bc2fd46397338` |
| 20 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/mul-assoc--76c54c4aa205e2df483d524f.md) | 179 | `result-track:76c54c4aa205e2df483d524f2622d9415ac6ee4fae3ec5620feb6c71ee6e616e` |
| 21 | `instance` | [gmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/gmonoid--9e6824d1f9b52d36a481ae34.md) | 203 | `declaration-track:9e6824d1f9b52d36a481ae34fe2cb94e69f0512c3031f511bb71fb782f3a1c26` |
| 22 | `def` | [algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/algebramap--212d91238db51384f7d21cce.md) | 211 | `declaration-track:212d91238db51384f7d21cce550fd40f975f4134abef6f9ebb48d196b00b91ab` |
| 23 | `theorem` | [algebraMap₀_eq_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/algebramap-eq-smul-one--58c6c3b5bc8b88239dfeec4c.md) | 214 | `result-track:58c6c3b5bc8b88239dfeec4c71855d8e3ce1d625bd80f2f7d9a1293f96499e97` |
| 24 | `theorem` | [algebraMap₀_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/algebramap-one--5864e0559b0a9f93db0db177.md) | 217 | `result-track:5864e0559b0a9f93db0db177d1f9fdfc2ab240ac21648d2023007fecb7a6a4f4` |
| 25 | `theorem` | [algebraMap₀_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/algebramap-mul--e33607b0b10a3df1bc276110.md) | 220 | `result-track:e33607b0b10a3df1bc276110a76c31b6e8b7fa4eb09a6ce89293e14136852a0f` |
| 26 | `theorem` | [mul_algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/mul-algebramap--c6a19992d50dddc68e875e5a.md) | 225 | `result-track:c6a19992d50dddc68e875e5a7bac3746f359b5b7f2268f9f93126b914cc47693` |
| 27 | `theorem` | [algebraMap₀_mul_algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/algebramap-mul-algebramap--75fd5adcc376cda42abefc44.md) | 230 | `result-track:75fd5adcc376cda42abefc44faeda21a2adc17a1e60bb4b62331998b4a74e08a` |
| 28 | `instance` | [gsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/gsemiring--f2dc14cd6f9b2555bfa9d5ca.md) | 235 | `declaration-track:f2dc14cd6f9b2555bfa9d5ca42ee499babfabb270173cd0b62eb8eb1e19fef21` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/example--3df77c744790afc03f3c0887.md) | 245 | `declaration-track:3df77c744790afc03f3c0887f5e095afe81ea9479a69188e625976504e6cae77` |
| 30 | `instance` | [galgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/galgebra--b4770194ad2c099eda80ffbd.md) | 250 | `declaration-track:b4770194ad2c099eda80ffbd08a04c7a89af9bb21b95c066eeea6c81e184b36f` |
| 31 | `theorem` | [galgebra_toFun_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/galgebra-tofun-def--567e6cc3a64617aa3a494a1c.md) | 266 | `result-track:567e6cc3a64617aa3a494a1c1d0513ec5063155326572079bcfca18798e4a27e` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3e5fa2b6658270072b7598f796a8f686f133f90e8db758a56448839a185d7275.lean/declarations/example--668b05fb44ba041d7f68c622.md) | 270 | `declaration-track:668b05fb44ba041d7f68c62252be33b87d1e29572606212a55be0c6362c8772a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
