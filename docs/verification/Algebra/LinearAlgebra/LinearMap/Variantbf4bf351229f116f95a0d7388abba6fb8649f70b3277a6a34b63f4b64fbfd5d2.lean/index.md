# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80480a50590e0d19ba4fe3dc863523898200a1b0",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80480a50590e0d19ba4fe3dc863523898200a1b0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/subtype--5cbcaf83bb1193b5eb699fb6.md) | 53 | `declaration-track:5cbcaf83bb1193b5eb699fb68b5fd78e26718a65ca86c84164db7ab2873917ba` |
| 2 | `lemma` | [subtype_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/subtype-apply--7c4fb4689b33f9d25295dd5a.md) | 60 | `result-track:7c4fb4689b33f9d25295dd5a01413cbd067616ab7d50715f97e3c19769a38d49` |
| 3 | `lemma` | [subtype_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/subtype-injective--f4baff8a3d2dedbd359331b3.md) | 63 | `result-track:f4baff8a3d2dedbd359331b319e28c853dfb730ac7428aa0dda7690dcbe8e17e` |
| 4 | `theorem` | [coe_subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/coe-subtype--307ea3aa5e02cde400e4d6f8.md) | 68 | `result-track:307ea3aa5e02cde400e4d6f8d77956f733a14a2391d5717beaae369096e80f13` |
| 5 | `def` | [subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/subtype--d82df35a9a6fd142450d7f88.md) | 90 | `declaration-track:d82df35a9a6fd142450d7f881e1d6722bdc0c95662573014c72f5db6400f605f` |
| 6 | `theorem` | [subtype_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/subtype-apply--dba67a26956c45c389f9303a.md) | 97 | `result-track:dba67a26956c45c389f9303a7870c9b00219f7dec8171fe018447e72cc9668e2` |
| 7 | `lemma` | [subtype_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/subtype-injective--154b9479e548f2df4bc65b93.md) | 100 | `result-track:154b9479e548f2df4bc65b933e0d830d7adb0008d58a9da3a660007df7525596` |
| 8 | `theorem` | [coe_subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/coe-subtype--9087acc9fabc8a6cac42b39b.md) | 105 | `result-track:9087acc9fabc8a6cac42b39b23d5d8a3876a785c6e0897bc71deeb236b5cf443` |
| 9 | `theorem` | [injective_subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/injective-subtype--41e2e380f63e0469085fb695.md) | 108 | `result-track:41e2e380f63e0469085fb695e6e3950f03c6128a75da5c461b7d76d2979e3896` |
| 10 | `theorem` | [coe_sum](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/coe-sum--2ec5c330eb2e02c0227ee971.md) | 112 | `result-track:2ec5c330eb2e02c0227ee971485a2b9a194634e3ae9ea8eea270e79fc5167358` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/instance--413d468da3e6191e8a864b68.md) | 120 | `declaration-track:413d468da3e6191e8a864b68afa0eaf8a80d68a2535bb045925b5faff5adda4a` |
| 12 | `def` | [domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/domrestrict--79eede1693d96349e453bb72.md) | 150 | `declaration-track:79eede1693d96349e453bb72865df9b94e7f4c1ffbcd3f37dc26761a74f4a5be` |
| 13 | `theorem` | [domRestrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/domrestrict-apply--72ad1ebe5ed64beff01e9d0e.md) | 154 | `result-track:72ad1ebe5ed64beff01e9d0e2eabb4b22ad70244a013d922ed7ec4a7d215f90e` |
| 14 | `def` | [codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/codrestrict--4244338d0a26a45dda461110.md) | 162 | `declaration-track:4244338d0a26a45dda461110a8bf25d8b9895171f6492edcc6d2d3382e5d712d` |
| 15 | `theorem` | [codRestrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/codrestrict-apply--bb99f71ea33a385edd3f94a6.md) | 168 | `result-track:bb99f71ea33a385edd3f94a61f095de8d7e74951d5372bc9094325d0a94648db` |
| 16 | `theorem` | [comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/comp-codrestrict--ecf6ab5b14765ea21dcef009.md) | 173 | `result-track:ecf6ab5b14765ea21dcef0094a7135a7aec0c53c415711062654a2ec2176a3df` |
| 17 | `theorem` | [subtype_comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/subtype-comp-codrestrict--cf84d4f7ff34ddc9235a0651.md) | 178 | `result-track:cf84d4f7ff34ddc9235a06514871d76bf4b545d39168377f3e3b86a26f31572b` |
| 18 | `def` | [codLift](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/codlift--c26474a072acb8db72447c24.md) | 189 | `declaration-track:c26474a072acb8db72447c24a15b9bb68e697b495a1d63828749bd32235002c3` |
| 19 | `theorem` | [codLift_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/codlift-apply--447174cced83584ef7522302.md) | 195 | `result-track:447174cced83584ef75223029cc5c57d05d44df7d556240f87f5ede366faf54e` |
| 20 | `theorem` | [comp_codLift](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/comp-codlift--3b70709934804581735176e1.md) | 200 | `result-track:3b70709934804581735176e1e59b89aa4bb7f9410863ec4ff167c0da163664da` |
| 21 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/restrict--158fc13e3c352b2cea4680ad.md) | 208 | `declaration-track:158fc13e3c352b2cea4680ad2db8c566cd9cb0b27f29021c5c61867edd24b09c` |
| 22 | `theorem` | [restrict_coe_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/restrict-coe-apply--1cfedb12cdffd650cd039212.md) | 213 | `result-track:1cfedb12cdffd650cd0392129c43c5e1ac5ebd99e64d00135ea9a8545f3d2a73` |
| 23 | `theorem` | [restrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/restrict-apply--1e358c2a20b3b204aac3b72b.md) | 217 | `result-track:1e358c2a20b3b204aac3b72bc3c249547b716b1dcc49649fda4b0f755f434fcd` |
| 24 | `lemma` | [restrict_sub](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/restrict-sub--f5cd6678da8190e44034ecfc.md) | 221 | `result-track:f5cd6678da8190e44034ecfcaf155fc6b5d540bb45141d751744f0f28ea9abdf` |
| 25 | `lemma` | [restrict_comp](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/restrict-comp--204b39b65905f3bccb60acd0.md) | 229 | `result-track:204b39b65905f3bccb60acd0e4ce92eda9aabe859a597e1d9c4141268f98cfed` |
| 26 | `lemma` | [restrict_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/restrict-smul-one--2a4f56b0a991f8582443c04e.md) | 238 | `result-track:2a4f56b0a991f8582443c04e6840396657f52004b721888ab3bd6e3bdd049c4a` |
| 27 | `lemma` | [restrict_commute](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/restrict-commute--45d46bdd64bdd0c1d36c85b1.md) | 244 | `result-track:45d46bdd64bdd0c1d36c85b1ae38306379efdb214e336b3bab9ca7a9f292dffd` |
| 28 | `theorem` | [subtype_comp_restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/subtype-comp-restrict--ed311e2d6cdec7a0f22442c0.md) | 250 | `result-track:ed311e2d6cdec7a0f22442c0bc702d74127e4f32e9589b10a31cb14c7986fb51` |
| 29 | `theorem` | [restrict_eq_codRestrict_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/restrict-eq-codrestrict-domrestrict--a3523777960a00cb4209863a.md) | 254 | `result-track:a3523777960a00cb4209863a6107bcb6e912fc7f5506d08294b00972a2d4aa78` |
| 30 | `theorem` | [restrict_eq_domRestrict_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/restrict-eq-domrestrict-codrestrict--30bd2c6ff84a792c32d11167.md) | 259 | `result-track:30bd2c6ff84a792c32d11167fdd817f6d6e58817d3bbc9f23936450fdfc3ecb9` |
| 31 | `theorem` | [sum_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/sum-apply--4aab8130d82384bac85653ed.md) | 264 | `result-track:4aab8130d82384bac85653ed0d70b6fa7dea5a1f0e1f774e18cd3be8108aa7c1` |
| 32 | `theorem` | [coeFn_sum](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/coefn-sum--522c637655aac28a103f6120.md) | 269 | `result-track:522c637655aac28a103f612090e5a692639a1fdae32a4642faf7e1c3ea9da98b` |
| 33 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Subtype.Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.Module.End.submodule_pow_eq_zero_of_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/root-grwtsk-algebra-linearalgebra-subtype-variant838b1be6cbcaa49cc908e72--64767d0405e80ec9da69527f.md) | 277 | `result-track:64767d0405e80ec9da69527ffb620f21a7c5324ac8614eb20de7b208b67d2e3a` |
| 34 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Subtype.Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.Module.End.pow_apply_mem_of_forall_mem](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/root-grwtsk-algebra-linearalgebra-subtype-variant838b1be6cbcaa49cc908e72--d0e5b643da7eb5ed9e6cb010.md) | 289 | `result-track:d0e5b643da7eb5ed9e6cb0106c1e53947e0f869622052ce51250dcbaa57136f2` |
| 35 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Subtype.Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.Module.End.pow_restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/root-grwtsk-algebra-linearalgebra-subtype-variant838b1be6cbcaa49cc908e72--a90e5251ceb210f0083ce26f.md) | 296 | `result-track:a90e5251ceb210f0083ce26f3d1518b4f41eb77c1d62e60382d0ea01e0915563` |
| 36 | `def` | [domRestrict'](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/domrestrict--cecc331c0f526d11e2fc35d5.md) | 314 | `declaration-track:cecc331c0f526d11e2fc35d570ec889545c2298b687faedb52bdcfc28e3b2f7a` |
| 37 | `theorem` | [domRestrict'_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/domrestrict-apply--1e9901fb4bd9a8f18b5977ca.md) | 320 | `result-track:1e9901fb4bd9a8f18b5977ca452a33fe8e1ec5c3f027984aef0e6e34714517e4` |
| 38 | `def` | [inclusion](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/inclusion--8e9bd7131f8359bce7838ede.md) | 338 | `declaration-track:8e9bd7131f8359bce7838ede3889a28d381129a6767a86936e3a8bea72f8fe3f` |
| 39 | `theorem` | [coe_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/coe-inclusion--8053d59a659518dd20372ff2.md) | 342 | `result-track:8053d59a659518dd20372ff21ea97cf6e9466d2c6d9799614dcdbac593e59c49` |
| 40 | `theorem` | [inclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/inclusion-apply--47e2b8fd324a650608f65936.md) | 345 | `result-track:47e2b8fd324a650608f6593611023b6aa254871791df35ade1dd4aeea9a6b7c6` |
| 41 | `theorem` | [inclusion_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/inclusion-injective--78a78349c79ab3b2e549ab51.md) | 348 | `result-track:78a78349c79ab3b2e549ab51873a598bbdbaf05851dcc7e48d6ce4d15e3c32c5` |
| 42 | `theorem` | [subtype_comp_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/declarations/subtype-comp-inclusion--e96315803ef2fb21c6479b09.md) | 353 | `result-track:e96315803ef2fb21c6479b0938ea3d0cbe88c289ad01bc6cfc99a234b4cf6b3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
