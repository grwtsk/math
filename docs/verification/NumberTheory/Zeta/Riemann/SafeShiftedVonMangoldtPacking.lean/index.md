# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftedVonMangoldtPacking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3208c773b8b78c8d5bf3c3e5af061a39ed34588",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3208c773b8b78c8d5bf3c3e5af061a39ed34588`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SourceSensitivePackingNoGo`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/zerodefect--120aa857d6977da7078c3d29.md) | 44 | `declaration-track:120aa857d6977da7078c3d298206a5f6cc7f8e2108966a3da35e16e4324e5858` |
| 2 | `def` | [safeShiftPlus](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftplus--4f05d837ff40dbe6cf108381.md) | 48 | `declaration-track:4f05d837ff40dbe6cf1083817fd30772474473c07ad19fa27998cf6d2cb7d522` |
| 3 | `def` | [safeShiftMinus](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftminus--9e2912189781766fe5991031.md) | 52 | `declaration-track:9e2912189781766fe599103186d1542a5ddc849220e3f7c0dfa4dd4493e80111` |
| 4 | `theorem` | [safeShiftPlus_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftplus-re--2e30df904b68a1648b82f822.md) | 56 | `result-track:2e30df904b68a1648b82f822eef0c9f0fa53c46e787a738ed27854eaaa018224` |
| 5 | `theorem` | [safeShiftMinus_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftminus-re--9faf85e4dcc5462612bf60ed.md) | 61 | `result-track:9faf85e4dcc5462612bf60edda3baa37e5f86281d22a1f0606aaed7dd5928d42` |
| 6 | `theorem` | [safeShiftPlus_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftplus-im--659e6b76413113a2c6662039.md) | 66 | `result-track:659e6b76413113a2c666203984dc68236c1aaba19429946463a67ddb3fd95dac` |
| 7 | `theorem` | [safeShiftMinus_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftminus-im--8922586c1ed3d03e01ce4efa.md) | 71 | `result-track:8922586c1ed3d03e01ce4efa4839151cf35776c92b4cc241760cdbbfbd294ca0` |
| 8 | `theorem` | [safeShiftPlus_one_lt_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftplus-one-lt-re--eda3a56309dd2e22905cc729.md) | 76 | `result-track:eda3a56309dd2e22905cc729a7c1e41c908bd99b9053ad7a237ac1d1e7ab29cc` |
| 9 | `theorem` | [safeShiftMinus_one_lt_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftminus-one-lt-re--36112abc99698e3d4686a47c.md) | 82 | `result-track:36112abc99698e3d4686a47cdf85f4e04a8fa254699f7be6bef1880e552b91c5` |
| 10 | `theorem` | [zeroDefect_criticalReflection](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/zerodefect-criticalreflection--74f97fdbe4a715248251deae.md) | 89 | `result-track:74f97fdbe4a715248251deae9d7e79a8c101820ff3ff720d1b73ab84a6456303` |
| 11 | `theorem` | [safeShiftPlus_criticalReflection](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftplus-criticalreflection--6a1bb6495c78a5a6dc37817c.md) | 95 | `result-track:6a1bb6495c78a5a6dc37817ce6cb8c00f03d72dd8dddf533ceb53136ef8b6058` |
| 12 | `theorem` | [safeShiftMinus_criticalReflection](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftminus-criticalreflection--1d9a260f31e7c4595719b392.md) | 100 | `result-track:1d9a260f31e7c4595719b3924b4a706faa9b8bef4cc5e76c379da4e9883b8f57` |
| 13 | `def` | [vonMangoldtDirichletTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/vonmangoldtdirichletterm--cd3265964d93652113c23da8.md) | 107 | `declaration-track:cd3265964d93652113c23da8d6211ec8d3501fe755a02d25165b40afbcc0ec16` |
| 14 | `def` | [safePlusPrimePowerTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeplusprimepowerterm--24411a593a8dd54a51c42702.md) | 112 | `declaration-track:24411a593a8dd54a51c427027e05fd3edb10605693c79f6aa699bc49cc685a0e` |
| 15 | `def` | [safeMinusPrimePowerTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeminusprimepowerterm--d80546ff23dc1b7f4285f8b0.md) | 116 | `declaration-track:d80546ff23dc1b7f4285f8b0ba5cd248771ba649d03d7c730adc1d9ed72a2b2b` |
| 16 | `theorem` | [safeShiftPlus_lseries_eq_neg_logDeriv](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftplus-lseries-eq-neg-logderiv--9acd29d3c7ee5d217d65b73f.md) | 120 | `result-track:9acd29d3c7ee5d217d65b73fc5eec7ed23279109bdd6d42cf15df1f254cba4d7` |
| 17 | `theorem` | [safeShiftMinus_lseries_eq_neg_logDeriv](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftminus-lseries-eq-neg-logderiv--48a5362bc3ca7ebb39fff151.md) | 129 | `result-track:48a5362bc3ca7ebb39fff151b6756f97b7d9133185229eda0e27fd8d1b359da4` |
| 18 | `def` | [safeShiftPrimePowerPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftprimepowerpoint--14b9089506c9e929da9bc111.md) | 139 | `declaration-track:14b9089506c9e929da9bc1117e0aaa770c5994e78bc6eff5b39f29f5e7482224` |
| 19 | `def` | [safeShiftPointFamily](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftpointfamily--ddbee524942d45db4e3cc7db.md) | 146 | `declaration-track:ddbee524942d45db4e3cc7db1d91cdf82f33a98f2c0950e98910f6af37b79d43` |
| 20 | `def` | [safeShiftPackingSequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftpackingsequence--5e1f19d02c10d185ecd736a4.md) | 154 | `declaration-track:5e1f19d02c10d185ecd736a4e436849d932ce3de6c9d81e7dab7063ae041a305` |
| 21 | `theorem` | [safeShiftPackingSequence_valueAt_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/safeshiftpackingsequence-valueat-nonnegative--008b329c03a291c548fadbbf.md) | 158 | `result-track:008b329c03a291c548fadbbffbfbf3baefbdf7bb4eac486f001e7999074932d4` |
| 22 | `theorem` | [reflected_plus_term_eq_minus_term](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/declarations/reflected-plus-term-eq-minus-term--26067dbbec0f5b5cb3ddc58e.md) | 165 | `result-track:26067dbbec0f5b5cb3ddc58e88681d81f076500204babc42dad3d44b4186437d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
