# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8234be9318b20de245a21d1699a1c74857799744",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8234be9318b20de245a21d1699a1c74857799744`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.ZetaZeros` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.NormCast` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ZeroPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/zeropoint--e06b7e4818c197a20596fdc8.md) | 37 | `declaration-track:e06b7e4818c197a20596fdc85f43e7ba8d7ecc5289ec2c4b90e21bfb52ee1631` |
| 2 | `theorem` | [analyticAt_point](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/analyticat-point--c1d9e8f943fc7dc2cdb7e35d.md) | 40 | `result-track:c1d9e8f943fc7dc2cdb7e35d0031fa70973e493d346d9615c3a420ce772bec7a` |
| 3 | `theorem` | [order_ne_top](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/order-ne-top--d233e706a9a920171905e643.md) | 45 | `result-track:d233e706a9a920171905e643731e45daf0c4eba64d46f31b4072a4ee1864daa9` |
| 4 | `def` | [multiplicity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/multiplicity--3bfb38d1f765854689b46963.md) | 55 | `declaration-track:3bfb38d1f765854689b46963ff9a2cbaa93460a60fc6548dafdd1ac3855d9756` |
| 5 | `theorem` | [multiplicity_cast](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/multiplicity-cast--63aa1bf1c9ed14162e7835d4.md) | 58 | `result-track:63aa1bf1c9ed14162e7835d442e13997668baf789818b7244584d86346d8da7b` |
| 6 | `theorem` | [multiplicity_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/multiplicity-pos--1fd4900a213a367ab8345a2d.md) | 63 | `result-track:1fd4900a213a367ab8345a2da3142508c417f5adddf77b4405530cae1d7434dc` |
| 7 | `theorem` | [multiplicity_factorization](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/multiplicity-factorization--a080dfaab9c3ac0d4ed2764f.md) | 73 | `result-track:a080dfaab9c3ac0d4ed2764fd740d0a6fe78b0ba9141ae02e8a772af5f6683d8` |
| 8 | `def` | [height](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/height--645c5a6273f6949350b86832.md) | 79 | `declaration-track:645c5a6273f6949350b8683258f466f90484772f3a3d05dc72f5995a99fb3610` |
| 9 | `theorem` | [point_mem_strip](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/point-mem-strip--cda875cf9f7a11e77e65a450.md) | 82 | `result-track:cda875cf9f7a11e77e65a45083b11854c28972f21781bec6cc27826b60d20965` |
| 10 | `theorem` | [bounded_zero_set_finite](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/bounded-zero-set-finite--7b23675789af822b8097dfdd.md) | 86 | `result-track:7b23675789af822b8097dfdd3e191c39f590c777c35460dd2b4ba7d465978136` |
| 11 | `theorem` | [height_set_finite](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/height-set-finite--985b4a7559bcbdc50293530e.md) | 100 | `result-track:985b4a7559bcbdc50293530e397bf59c45532be2793263e2061e6f2392e6427c` |
| 12 | `def` | [heightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/heighthead--de0f243e7582035f5a511969.md) | 109 | `declaration-track:de0f243e7582035f5a511969614f44775d6cd4e715570ea43a65ac2ce97c020a` |
| 13 | `theorem` | [mem_heightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/mem-heighthead--3135d7a52ce1038e5d7d2ee9.md) | 111 | `result-track:3135d7a52ce1038e5d7d2ee95a8693f9c3a7ce7e5cdf572581fd3bc778825cd6` |
| 14 | `theorem` | [heightHead_eq_of_exact_membership](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/heighthead-eq-of-exact-membership--db399cd25d86aaaee38b5dc9.md) | 118 | `result-track:db399cd25d86aaaee38b5dc9c75f88709ef1ca5696501219ce89ac835599f592` |
| 15 | `theorem` | [height_gt_of_not_mem_head](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/height-gt-of-not-mem-head--6978ab23d267cfd7a8bf04da.md) | 125 | `result-track:6978ab23d267cfd7a8bf04da4b0aa0e2eb6770e543677677ff39aad8d657db2f` |
| 16 | `theorem` | [point_mem_own_head](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/point-mem-own-head--ef54ee12964cbcb119c482e5.md) | 130 | `result-track:ef54ee12964cbcb119c482e57d52b24b0e599596586a202552172a12d6abfa56` |
| 17 | `theorem` | [heightHead_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/heighthead-mono--e248733d1d0ee40f04448c30.md) | 134 | `result-track:e248733d1d0ee40f04448c30774583f9326596312abdce5bab4b0d726e286a7b` |
| 18 | `theorem` | [heightHead_eq_empty_of_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/heighthead-eq-empty-of-neg--b3833db805d7666c2ff175d3.md) | 139 | `result-track:b3833db805d7666c2ff175d3a39b5def1b64f16f3cc3e9379a576a243eed5c19` |
| 19 | `def` | [heightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/heightcount--ffee49c41c264a5bb95f74a7.md) | 147 | `declaration-track:ffee49c41c264a5bb95f74a7326a313041c27c4759bcf0ed443bb8ca82181088` |
| 20 | `theorem` | [head_card_le_heightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/head-card-le-heightcount--ed5d3f2ec9b7733b89ae6e3a.md) | 150 | `result-track:ed5d3f2ec9b7733b89ae6e3abef33b958750c987c48f8f6999c520b7ec2509cf` |
| 21 | `theorem` | [heightCount_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/heightcount-mono--b616d4cb95f3f2f40e0c6195.md) | 156 | `result-track:b616d4cb95f3f2f40e0c61955c4878499244d629b2a6ad14d809bf9cd467ea43` |
| 22 | `theorem` | [heightCount_eq_zero_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/heightcount-eq-zero-iff--e2755ac057057f1efc3e0cdb.md) | 161 | `result-track:e2755ac057057f1efc3e0cdba926a3181aaa29b10d05e897779b1fb7e33b353a` |
| 23 | `theorem` | [heightCount_cast](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/declarations/heightcount-cast--ad907120e35404c919b4f20c.md) | 171 | `result-track:ad907120e35404c919b4f20c1ec0a4e3e8d89976c5178744e4faffe9924ac02a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
