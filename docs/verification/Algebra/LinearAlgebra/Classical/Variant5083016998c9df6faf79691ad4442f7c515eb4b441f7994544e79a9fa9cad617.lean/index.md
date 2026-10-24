# Verification target: GRWTSK.Algebra.LinearAlgebra.Classical.Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ab6db56f8eb44a874f042477cdc9e9b3e65b59d",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ab6db56f8eb44a874f042477cdc9e9b3e65b59d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Abelian` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.SkewAdjoint` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SymplecticGroup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [matrix_trace_commutator_zero](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/matrix-trace-commutator-zero--6c19af72b59107a20b4e5de4.md) | 80 | `result-track:6c19af72b59107a20b4e5de441a3eadc8a4feaecaff19d9bf641b28aa4f4d97b` |
| 2 | `def` | [sl](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/sl--919a5954ab4670d18948953a.md) | 90 | `declaration-track:919a5954ab4670d18948953abb6e1f08d07b10c8214d675816a61a49b35c6951` |
| 3 | `theorem` | [sl_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/sl-bracket--0c2307c49775eb1a9e261153.md) | 94 | `result-track:0c2307c49775eb1a9e261153ee579a8e94f8504002af044c5d6de89f99f0a3de` |
| 4 | `def` | [single](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/single--dd6c1a7ff60f788cc8e89573.md) | 104 | `declaration-track:dd6c1a7ff60f788cc8e895738c4ca77dbfdc90bcb089e13ed2f31750d7a3ca08` |
| 5 | `theorem` | [val_single](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/val-single--82ed465231d4fc5770788298.md) | 110 | `result-track:82ed465231d4fc57707882985dbe654e928148e75cf2eca5efd921c322c02b0d` |
| 6 | `def` | [singleSubSingle](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/singlesubsingle--ee13f257633420d993237873.md) | 117 | `declaration-track:ee13f257633420d99323787348074cfb89255c14bcfbe3322eacc26cd326ceaa` |
| 7 | `theorem` | [val_singleSubSingle](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/val-singlesubsingle--f34e548e3f016996e0e77bc4.md) | 122 | `result-track:f34e548e3f016996e0e77bc4b002645253706f33662dcebc744abfa9712a6f9f` |
| 8 | `theorem` | [singleSubSingle_add_singleSubSingle](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/singlesubsingle-add-singlesubsingle--6ba757a40152d345ef2f780a.md) | 127 | `result-track:6ba757a40152d345ef2f780aaa724939a5c2c5490c22264b838983bb1c8881ad` |
| 9 | `theorem` | [singleSubSingle_sub_singleSubSingle](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/singlesubsingle-sub-singlesubsingle--4531394a86442a854fd1fa13.md) | 132 | `result-track:4531394a86442a854fd1fa13af0311d3905957a90b2677490b5e4cec00ab9c0c` |
| 10 | `theorem` | [singleSubSingle_sub_singleSubSingle'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/singlesubsingle-sub-singlesubsingle--e9de5269c9123b25f72596e8.md) | 137 | `result-track:e9de5269c9123b25f72596e8720224746276f96b6d9de3b829b1ca756c6ef44e` |
| 11 | `theorem` | [sl_non_abelian](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/sl-non-abelian--5a1b7bdb959c884e3f302a2d.md) | 143 | `result-track:5a1b7bdb959c884e3f302a2d87566329c14f409b1337923250608326e40e228d` |
| 12 | `def` | [sp](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/sp--54508643095a74e2b14acaa9.md) | 159 | `declaration-track:54508643095a74e2b14acaa9813445d23165bfe72c89f906ec670a0266ec4c60` |
| 13 | `def` | [so](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/so--15c82ef85f92f0ad569f2d1a.md) | 168 | `declaration-track:15c82ef85f92f0ad569f2d1a7f673f3fa80a7d0cd7a8ae3c7bb9659ed880ff34` |
| 14 | `theorem` | [mem_so](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/mem-so--3938742e6b775b20cb42bdd3.md) | 172 | `result-track:3938742e6b775b20cb42bdd34a821450a27663e67c0e1abf93e5eb6be33370eb` |
| 15 | `def` | [indefiniteDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/indefinitediagonal--3dfb1ac1bdcd93d1f4aeac2b.md) | 177 | `declaration-track:3dfb1ac1bdcd93d1f4aeac2b9876b95e2a652ecfe42188072a7874620caa2a14` |
| 16 | `def` | [so'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/so--59e39fadc50f83935d63b64e.md) | 182 | `declaration-track:59e39fadc50f83935d63b64e269975bd2b26b4267bdadc63198cb0af817d5b75` |
| 17 | `def` | [Pso](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/pso--1b966e3074c0b67bcef97920.md) | 187 | `declaration-track:1b966e3074c0b67bcef979205a48954e385d7fa135b129a9ad843fc007abec59` |
| 18 | `theorem` | [pso_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/pso-inv--20ec24418acbccd63494fce5.md) | 192 | `result-track:20ec24418acbccd63494fce5be142251575dad891da953a9a3d1d214d7943c56` |
| 19 | `def` | [invertiblePso](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/invertiblepso--e7f3c0165e9132f5d9a66328.md) | 206 | `declaration-track:e7f3c0165e9132f5d9a66328ff1072280ae56503129c80da7be723c265433ce4` |
| 20 | `theorem` | [indefiniteDiagonal_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/indefinitediagonal-transform--93c6ef3667c49994d50b4c20.md) | 209 | `result-track:93c6ef3667c49994d50b4c20719d2f22b895b659e9e31e50fef8ec9f0b7fdd88` |
| 21 | `def` | [soIndefiniteEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/soindefiniteequiv--878f43ea90c6fda75c348ac4.md) | 225 | `declaration-track:878f43ea90c6fda75c348ac47dbd4c977ffb1d1ccc94fc9102c828278de2ad0f` |
| 22 | `theorem` | [soIndefiniteEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/soindefiniteequiv-apply--896c00758f5f1c20ef99812e.md) | 232 | `result-track:896c00758f5f1c20ef99812e3aada3cd0c4e8febcff4c43d81aa4a0ec41289a7` |
| 23 | `def` | [JD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/jd--efbe976f86ca07b59c53da63.md) | 246 | `declaration-track:efbe976f86ca07b59c53da63055826cfb5eb013ea7e4ef4f33da48460c3cbb32` |
| 24 | `def` | [typeD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/typed--7e9b004a62e9ebceaebdf0e0.md) | 251 | `declaration-track:7e9b004a62e9ebceaebdf0e03283a7a744323eec3713dea3fe492c491736f5a3` |
| 25 | `def` | [PD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/pd--77ac91c809cbe99b46d2be7d.md) | 262 | `declaration-track:77ac91c809cbe99b46d2be7dbd2dd37922c5539b16dc2874250db45ad670907f` |
| 26 | `def` | [S](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/s--29bfea47f5ba91a606e0601a.md) | 266 | `declaration-track:29bfea47f5ba91a606e0601a5217b74ffc0ccfb47b115a28ab5f3f6f70a65191` |
| 27 | `theorem` | [s_as_blocks](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/s-as-blocks--f62e4674b7346464689da906.md) | 269 | `result-track:f62e4674b7346464689da906a6b3565b37b045c3dad4bf2e7c3923cecfea1cf1` |
| 28 | `theorem` | [jd_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/jd-transform--c8e844c0bd34120dd56d507e.md) | 273 | `result-track:c8e844c0bd34120dd56d507e6d4823ae465b0f2342159f3fb4756d486593f2b6` |
| 29 | `theorem` | [pd_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/pd-inv--65db01f87d5eb12cecd4abcd.md) | 279 | `result-track:65db01f87d5eb12cecd4abcdb6b5d0b71b90d8fb38bb267b60bf31cdf2f9b745` |
| 30 | `instance` | [invertiblePD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/invertiblepd--8ae85cfd66c5384fa8bd7fa6.md) | 284 | `declaration-track:8ae85cfd66c5384fa8bd7fa689f095cc646c26258d359abb3aee77fabd4a9d82` |
| 31 | `def` | [typeDEquivSo'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/typedequivso--686c2111b7f17daa7ee0aa78.md) | 288 | `declaration-track:686c2111b7f17daa7ee0aa78b6b06d05dcc6afb605b704ed0fb20d9243cd2931` |
| 32 | `def` | [JB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/jb--5279c7aad3d171fff170bf48.md) | 310 | `declaration-track:5279c7aad3d171fff170bf48d6e3bf9a891fee55cb2fd1249853db8db0a6eafd` |
| 33 | `def` | [typeB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/typeb--7d5a67581036d1d14ae7c946.md) | 315 | `declaration-track:7d5a67581036d1d14ae7c9464ee2b1c967983527e30566ed82b7fdad0e7ebede` |
| 34 | `def` | [PB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/pb--83e575daaa175199eeba2b1f.md) | 333 | `declaration-track:83e575daaa175199eeba2b1f411c994e3ce17d43cb95adfd7d87be98048ee937` |
| 35 | `theorem` | [pb_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/pb-inv--00616cf880bee3bc7ca2de15.md) | 338 | `result-track:00616cf880bee3bc7ca2de15bab4ad9ac3476803927c92299131e74a400ad086` |
| 36 | `instance` | [invertiblePB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/invertiblepb--b553fbbb2b5613fd0333772f.md) | 343 | `declaration-track:b553fbbb2b5613fd0333772fcae8e9b11dab9dfefdd18402d8b55f490f667822` |
| 37 | `theorem` | [jb_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/jb-transform--f8c84b423ff8d5ecb62cc8bd.md) | 346 | `result-track:f8c84b423ff8d5ecb62cc8bdeb13144e1351b5f7f558094541f0f0572d477192` |
| 38 | `theorem` | [indefiniteDiagonal_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/indefinitediagonal-assoc--e3fa9afb0f33a7942c21af93.md) | 350 | `result-track:e3fa9afb0f33a7942c21af93fa40b85aadd2032b31b1a8fe556ce721e2e6362b` |
| 39 | `def` | [typeBEquivSo'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant5083016998c9df6faf79691ad4442f7c515eb4b441f7994544e79a9fa9cad617.lean/declarations/typebequivso--78f504a02786a8be8e676f15.md) | 364 | `declaration-track:78f504a02786a8be8e676f1539e3cc23b50f13b9f6ae1dfb315fcf5c03f9af5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
