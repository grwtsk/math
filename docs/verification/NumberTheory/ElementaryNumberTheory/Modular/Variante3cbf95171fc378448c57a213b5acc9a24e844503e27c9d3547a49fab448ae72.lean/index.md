# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Modular.Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be9a75cc088185b7bfaba3fdc237ec3c32cf3469",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be9a75cc088185b7bfaba3fdc237ec3c32cf3469`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FiniteDimension` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/macro--c6ed589451d4fdd2a1af5f1a.md) | 81 | `declaration-track:c6ed589451d4fdd2a1af5f1ac8dd58b9b944fc3726cc996b62447fb4895fdc5e` |
| 2 | `theorem` | [bottom_row_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/bottom-row-coprime--86f5cc4e861851939cc332ce.md) | 94 | `result-track:86f5cc4e861851939cc332ce828c81c243e816db9bb9d8b7e8f3270955c9eae5` |
| 3 | `theorem` | [bottom_row_surj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/bottom-row-surj--01387a309144b652dee12e54.md) | 103 | `result-track:01387a309144b652dee12e545f2704a19e090bbe4c8a2a83233a2a7af2a020bb` |
| 4 | `theorem` | [tendsto_normSq_coprime_pair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/tendsto-normsq-coprime-pair--1ceae6438d695da4e05dbbc1.md) | 126 | `result-track:1ceae6438d695da4e05dbbc1c48d809572c341ab4502f20e59696ea103a231ef` |
| 5 | `def` | [lcRow0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/lcrow0--6b16a7c8032d54a3b3e53568.md) | 177 | `declaration-track:6b16a7c8032d54a3b3e5356880f5cbd3e5d8b8eaa343b54150ecacd293a29dbf` |
| 6 | `theorem` | [lcRow0_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/lcrow0-apply--b5ec3f32d6c628ad4fe0e3c5.md) | 184 | `result-track:b5ec3f32d6c628ad4fe0e3c54c5c758010e45979a8dbcfe5761a378736a5f611` |
| 7 | `def` | [lcRow0Extend](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/lcrow0extend--b4cdbc3689dc713dea047ccd.md) | 192 | `declaration-track:b4cdbc3689dc713dea047ccdde4b876ff2b27fcbd5ff4419261cdee7f5baae4a` |
| 8 | `theorem` | [tendsto_lcRow0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/tendsto-lcrow0--b04aaa881a65239dc3cc6387.md) | 206 | `result-track:b04aaa881a65239dc3cc6387815d2f5de22ee83293cbd2c9a1607a746354671f` |
| 9 | `theorem` | [smul_eq_lcRow0_add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/smul-eq-lcrow0-add--dc45e40b13848b53e3098821.md) | 249 | `result-track:dc45e40b13848b53e309882166c0c3458452ae6415960a768df63bb036282396` |
| 10 | `theorem` | [tendsto_abs_re_smul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/tendsto-abs-re-smul--b64d9de8484d0234ba7f75e2.md) | 265 | `result-track:b64d9de8484d0234ba7f75e2be730d37a239705f4807145ca741fbe5b4ebf23e` |
| 11 | `theorem` | [exists_max_im](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/exists-max-im--a166225161895758f7a8072e.md) | 295 | `result-track:a166225161895758f7a8072ebc04431b6df5c742e3542fbe4b5fdc162af116c2` |
| 12 | `theorem` | [exists_row_one_eq_and_min_re](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/exists-row-one-eq-and-min-re--81942b1c96998e38dee69d91.md) | 313 | `result-track:81942b1c96998e38dee69d9121fa1bb59de0756475e998c5f291402ef0551647` |
| 13 | `theorem` | [coe_T_zpow_smul_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/coe-t-zpow-smul-eq--49770b9c37c87cba7d14e18d.md) | 328 | `result-track:49770b9c37c87cba7d14e18d256b48e68024f9bcd1f6e5ebdce629cc5375f492` |
| 14 | `theorem` | [re_T_zpow_smul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/re-t-zpow-smul--b69a409e956e0963f3f96fbc.md) | 333 | `result-track:b69a409e956e0963f3f96fbc3d03754d3fddcd5235d1d52c0552f3eb281df14d` |
| 15 | `theorem` | [im_T_zpow_smul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/im-t-zpow-smul--7df9022da653bb4dfb8f1934.md) | 337 | `result-track:7df9022da653bb4dfb8f1934428d8878a89cf5214daff8210f45a103a7ce6585` |
| 16 | `theorem` | [re_T_smul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/re-t-smul--3b7e590a791fa3b85b8db462.md) | 341 | `result-track:3b7e590a791fa3b85b8db462501cede506d866e507a6da2f8c251782d2d583ec` |
| 17 | `theorem` | [im_T_smul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/im-t-smul--11c96ac35c7b276a7cd53ddf.md) | 344 | `result-track:11c96ac35c7b276a7cd53ddf1a370aef0e1caf60c369c6409d7aa2c13fde409b` |
| 18 | `theorem` | [re_T_inv_smul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/re-t-inv-smul--9e94db09a3d88cab50e14f4a.md) | 347 | `result-track:9e94db09a3d88cab50e14f4ae80619df5b35cbb54e8ac4938ab3934401b409f1` |
| 19 | `theorem` | [im_T_inv_smul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/im-t-inv-smul--c7f5e42027e2c5dc10075af4.md) | 350 | `result-track:c7f5e42027e2c5dc10075af4fa0df708d9cc9e19c2ac324a3b1c05ca00f086ae` |
| 20 | `theorem` | [exists_eq_T_zpow_of_c_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/exists-eq-t-zpow-of-c-eq-zero--d0426750ec7d2e08e8f54368.md) | 356 | `result-track:d0426750ec7d2e08e8f54368e4afa27e47c2399836ddfd094a8c966368aad893` |
| 21 | `theorem` | [g_eq_of_c_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/g-eq-of-c-eq-one--ecf35834da0ecf07517986ec.md) | 372 | `result-track:ecf35834da0ecf07517986ec6856ed23e50da780a498369dad647396e2db8fcf` |
| 22 | `theorem` | [normSq_S_smul_lt_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/normsq-s-smul-lt-one--2f683ffecb7c231fdb2b99d5.md) | 384 | `result-track:2f683ffecb7c231fdb2b99d588141557e9e52d8e268d70c77100eb45f16ddcfd` |
| 23 | `theorem` | [im_lt_im_S_smul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/im-lt-im-s-smul--b44c71c3c58e8e57c51b7796.md) | 389 | `result-track:b44c71c3c58e8e57c51b7796e36d88f62e7475462f31093a6ed11a15d24a7bf6` |
| 24 | `def` | [fd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/fd--ee76cbf8cdda5772010ef502.md) | 400 | `declaration-track:ee76cbf8cdda5772010ef5024196e6ac9f2fb4ad6fd61aa3946352f315417530` |
| 25 | `def` | [fdo](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/fdo--752f948682c8699b02a6c8f5.md) | 405 | `declaration-track:752f948682c8699b02a6c8f5fe44ba71b99fa60c7c687ae0e7734c4be10d4885` |
| 26 | `theorem` | [abs_two_mul_re_lt_one_of_mem_fdo](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/abs-two-mul-re-lt-one-of-mem-fdo--a20bed8bad94495900025d59.md) | 417 | `result-track:a20bed8bad94495900025d5928a75346b346b3a41f03834a2c04898ecd9d2d8c` |
| 27 | `theorem` | [three_lt_four_mul_im_sq_of_mem_fdo](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/three-lt-four-mul-im-sq-of-mem-fdo--214fb7240d203336a3a365d2.md) | 422 | `result-track:214fb7240d203336a3a365d2b618713618b1372e845884a4e7c621c285f26f20` |
| 28 | `theorem` | [one_lt_normSq_T_zpow_smul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/one-lt-normsq-t-zpow-smul--8355b8fb71c89887eea8487a.md) | 430 | `result-track:8355b8fb71c89887eea8487a50db71b0b259c19022732588593ca4dbb8a8c853` |
| 29 | `theorem` | [eq_zero_of_mem_fdo_of_T_zpow_mem_fdo](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/eq-zero-of-mem-fdo-of-t-zpow-mem-fdo--73a1ca81b8fef0187e0d6af8.md) | 437 | `result-track:73a1ca81b8fef0187e0d6af85fa1b52fe0cd3782600ec980c1bd19af4af27ac1` |
| 30 | `theorem` | [exists_smul_mem_fd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/exists-smul-mem-fd--3a544e80892c453b0d672bc7.md) | 451 | `result-track:3a544e80892c453b0d672bc7b0a9fa6d00623e1928758ce74a11ec81ee250f30` |
| 31 | `theorem` | [abs_c_le_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/abs-c-le-one--d9a96ec5db0d76b1d0c99014.md) | 486 | `result-track:d9a96ec5db0d76b1d0c9901447d3b8118d405fe95ebb89a763c9cbebbe764d90` |
| 32 | `theorem` | [c_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/c-eq-zero--26f903232e1533440be8c50e.md) | 521 | `result-track:26f903232e1533440be8c50e6949e9a2897b3027b744cf991223006ced18f186` |
| 33 | `theorem` | [eq_smul_self_of_mem_fdo_mem_fdo](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/declarations/eq-smul-self-of-mem-fdo-mem-fdo--4f9e68ef15d41d8798176dde.md) | 544 | `result-track:4f9e68ef15d41d8798176dde65e44b1f724fd7745c3dfc3d1f577269ebe6dda8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
