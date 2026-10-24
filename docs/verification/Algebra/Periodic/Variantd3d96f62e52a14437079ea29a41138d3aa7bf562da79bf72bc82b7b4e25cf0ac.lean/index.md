# Verification target: GRWTSK.Algebra.Periodic.Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43071b20b9ab452933e158c7f66026ac4a88f65c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/index.md) · [Full source](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43071b20b9ab452933e158c7f66026ac4a88f65c`.

Source path: `GRWTSK/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Periodic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Periodic.const_smul₀](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-const-smul--fc8b300ff8f7d06a9e199a0e.md) | 41 | `result-track:fc8b300ff8f7d06a9e199a0e1da238dc7aa283adde8ffd0ecb587ea4fdba2bc9` |
| 2 | `theorem` | [Periodic.const_mul](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-const-mul--57a5a1aff7146b9578de9bb7.md) | 47 | `result-track:57a5a1aff7146b9578de9bb71a1e2e0010ac62fabbbaf14b646e7da9babb22c0` |
| 3 | `theorem` | [Periodic.const_inv_smul₀](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-const-inv-smul--782d1ed734be721517ca1df6.md) | 51 | `result-track:782d1ed734be721517ca1df6d404ea04608e839533c7e531150ff34772df71f9` |
| 4 | `theorem` | [Periodic.const_inv_mul](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-const-inv-mul--2ce1364b80e28db0d41fc179.md) | 55 | `result-track:2ce1364b80e28db0d41fc17966b972c957d9fd1d7ab27774d7a62fb198ad1c36` |
| 5 | `theorem` | [Periodic.mul_const](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-mul-const--50cd1dc1283177cbbd36d000.md) | 59 | `result-track:50cd1dc1283177cbbd36d0004406230c9372141965f149a5dfc9e04de293d8d7` |
| 6 | `theorem` | [Periodic.mul_const'](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-mul-const--2e16c3bfd9e331978dbd0251.md) | 63 | `result-track:2e16c3bfd9e331978dbd02510d98910ef9ff82674fe5a42f04810a42e49de7fb` |
| 7 | `theorem` | [Periodic.mul_const_inv](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-mul-const-inv--e91a55180151a2f3ee356522.md) | 66 | `result-track:e91a55180151a2f3ee356522ea6ac0c981b3197c942980083b67657e0b4747ea` |
| 8 | `theorem` | [Periodic.div_const](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-div-const--5778c92804a9add3eaa7b1e0.md) | 70 | `result-track:5778c92804a9add3eaa7b1e028cb87b3e1eb7121f434f32a2938ec2bcb647edb` |
| 9 | `theorem` | [Periodic.exists_mem_Ico₀](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-exists-mem-ico--6798b29850e534a19c25b4e4.md) | 75 | `result-track:6798b29850e534a19c25b4e4f46ed263c139ec23fc32c34d5480bfedfb3f8ddd` |
| 10 | `theorem` | [Periodic.exists_mem_Ico](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-exists-mem-ico--66ebd380c5ed6d8b422a1244.md) | 83 | `result-track:66ebd380c5ed6d8b422a124458e2b15a83a6f190b56734d711197e33f14d7549` |
| 11 | `theorem` | [Periodic.exists_mem_Ioc](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-exists-mem-ioc--0f3a8f8d52a9211b0a8f8c41.md) | 91 | `result-track:0f3a8f8d52a9211b0a8f8c4175f30b554e88e9a8afe7a91cb74e29289c99bc43` |
| 12 | `theorem` | [Periodic.image_Ioc](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-image-ioc--2ff34270b218d581af340ada.md) | 97 | `result-track:2ff34270b218d581af340adaef7e698592844a44aa37200d0e7190a61106c320` |
| 13 | `theorem` | [Periodic.image_Icc](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-image-icc--a56f07a57ce96709cf0545bd.md) | 104 | `result-track:a56f07a57ce96709cf0545bdc251bf9aeb3e8d8eb21507681d59ed303366734e` |
| 14 | `theorem` | [Periodic.image_uIcc](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/periodic-image-uicc--fceceb1f05c8fc68238bbb38.md) | 109 | `result-track:fceceb1f05c8fc68238bbb387c024c811cd5ddda1d79ecc1e0788a0c1d127e8d` |
| 15 | `theorem` | [Antiperiodic.add_nat_mul_eq](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-add-nat-mul-eq--8ccce57b34da7e68dbd15582.md) | 120 | `result-track:8ccce57b34da7e68dbd15582e3262836cc448d46fcb3dc0e8505b3cb2d6e828f` |
| 16 | `theorem` | [Antiperiodic.sub_nat_mul_eq](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-sub-nat-mul-eq--33458626250ded0499db5029.md) | 125 | `result-track:33458626250ded0499db50299418859de0f4751fbb03c27671fb744a70cdb9d3` |
| 17 | `theorem` | [Antiperiodic.nat_mul_sub_eq](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-nat-mul-sub-eq--f750ba41bf5f11e2d2095377.md) | 130 | `result-track:f750ba41bf5f11e2d2095377776ae73e475e5b035a9ff41c4367cd894a7e59c5` |
| 18 | `theorem` | [Antiperiodic.const_smul₀](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-const-smul--3caa953d841c3fbb51d4a7f4.md) | 135 | `result-track:3caa953d841c3fbb51d4a7f49189be50756f15b53c4891e89e6f71b6688607b4` |
| 19 | `theorem` | [Antiperiodic.const_mul](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-const-mul--46432db3c4412e966e4c230a.md) | 139 | `result-track:46432db3c4412e966e4c230a915043eb9a54efd21172c951edc1361becc54e27` |
| 20 | `theorem` | [Antiperiodic.const_inv_smul₀](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-const-inv-smul--e69f944d2a18ef0eeb0886ab.md) | 143 | `result-track:e69f944d2a18ef0eeb0886ab58ef71e3e6995396db43d8da4324546b27922e29` |
| 21 | `theorem` | [Antiperiodic.const_inv_mul](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-const-inv-mul--6be4b2fb0774cd03c16e68da.md) | 147 | `result-track:6be4b2fb0774cd03c16e68da1901d82e6756cfa0ed2a8cbfaf90295c2d40a405` |
| 22 | `theorem` | [Antiperiodic.mul_const](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-mul-const--58f4c63f75c1c36dd670741a.md) | 151 | `result-track:58f4c63f75c1c36dd670741a909e8da88a071a269016626c2f372bdfddb408ca` |
| 23 | `theorem` | [Antiperiodic.mul_const'](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-mul-const--a55a4d1a1570507463c4e864.md) | 155 | `result-track:a55a4d1a1570507463c4e864a78648b1bef3a142eb14fe53fb2135e82017b0cc` |
| 24 | `theorem` | [Antiperiodic.mul_const_inv](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-mul-const-inv--71f6b984253828d1f79b71ec.md) | 159 | `result-track:71f6b984253828d1f79b71ec802a4f65e9db7ee58653efce4c4b93712b7671a2` |
| 25 | `theorem` | [Antiperiodic.div_inv](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/antiperiodic-div-inv--66d40ce5ab2c6819debe1cd6.md) | 163 | `result-track:66d40ce5ab2c6819debe1cd6043316b77ce6318a8f56e1cf2444fb6ee690a9d9` |
| 26 | `theorem` | [Int.fract_periodic](../../../../mathematics/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/declarations/int-fract-periodic--79f6efa347f3bcb02498cd4b.md) | 169 | `result-track:79f6efa347f3bcb02498cd4b96877d586467b2f51b236203b249b9c1a35896ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
