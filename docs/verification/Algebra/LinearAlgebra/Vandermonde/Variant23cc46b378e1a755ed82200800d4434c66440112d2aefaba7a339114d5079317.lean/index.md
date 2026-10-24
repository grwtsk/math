# Verification target: GRWTSK.Algebra.LinearAlgebra.Vandermonde.Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ddafed9bd60d412563027fef32fadd78c6e6456",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ddafed9bd60d412563027fef32fadd78c6e6456`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Nondegenerate` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rectVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/rectvandermonde--01fdccdb1053d0cd0a1aa033.md) | 79 | `declaration-track:01fdccdb1053d0cd0a1aa0337f2d44a954eb6072c49a97ee5c0665b29e274b9c` |
| 2 | `def` | [projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/projvandermonde--ba7acee39308653a9fbcf8fa.md) | 83 | `declaration-track:ba7acee39308653a9fbcf8fa456f56883610b74d0d26b6f863e9fc18222a13c4` |
| 3 | `def` | [vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/vandermonde--2bead122f42c7b1e9f43208e.md) | 87 | `declaration-track:2bead122f42c7b1e9f43208e46267f61abb11b81947465a96e62c4e91da159b4` |
| 4 | `lemma` | [vandermonde_eq_projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/vandermonde-eq-projvandermonde--531e9c27c5f8b2221fc16a38.md) | 89 | `result-track:531e9c27c5f8b2221fc16a388689cc97e8a3c54a4e99ae5e5410b8d0372cf2b0` |
| 5 | `theorem` | [projVandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/projvandermonde-apply--687392c676b9ac009b343256.md) | 94 | `result-track:687392c676b9ac009b34325636e8d86eca24c3a48d66d5e8d8facb9cf8150af7` |
| 6 | `theorem` | [rectVandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/rectvandermonde-apply--8121eb0f20bccf903146401a.md) | 97 | `result-track:8121eb0f20bccf903146401ac8aa26376754c93d1c3e81591f366a80196348a9` |
| 7 | `theorem` | [vandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/vandermonde-apply--143225f092566941b25e93d2.md) | 101 | `result-track:143225f092566941b25e93d2e3f2bbe629752ca2d9395fbc937247c2fef27054` |
| 8 | `theorem` | [vandermonde_cons](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/vandermonde-cons--05c649ceaaa2cb34ff8afe37.md) | 104 | `result-track:05c649ceaaa2cb34ff8afe3781149a7c43eba840149501abab19bbac3e8f50f1` |
| 9 | `theorem` | [vandermonde_succ](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/vandermonde-succ--563bdb75c5f4de581b28f478.md) | 113 | `result-track:563bdb75c5f4de581b28f4782c4f5dc0401b318973572e3dbdc43e330860e4ec` |
| 10 | `theorem` | [vandermonde_mul_vandermonde_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/vandermonde-mul-vandermonde-transpose--e89d121a1a835c3d8ada9729.md) | 120 | `result-track:e89d121a1a835c3d8ada9729d2c1d61af763bad16e681325efa9c7e468f36a9c` |
| 11 | `theorem` | [vandermonde_transpose_mul_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/vandermonde-transpose-mul-vandermonde--d7a474d028336f20e3273796.md) | 124 | `result-track:d7a474d028336f20e32737963be277124501595ee96a02ee78a94a3778158827` |
| 12 | `theorem` | [rectVandermonde_apply_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/rectvandermonde-apply-zero-right--5ae6e280f09984c01e6b595d.md) | 128 | `result-track:5ae6e280f09984c01e6b595d983dfcbd6e32bcc8b7fcc8e77493ff36ffad2bfa` |
| 13 | `theorem` | [projVandermonde_apply_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/projvandermonde-apply-of-ne-zero--da07b26305afab1454665c93.md) | 136 | `result-track:da07b26305afab1454665c93e7b9a8362d27170828b1ce2f5717afc534177a3d` |
| 14 | `theorem` | [projVandermonde_apply_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/projvandermonde-apply-zero-right--31b2bdf46f1cf90b6ccda6ba.md) | 141 | `result-track:31b2bdf46f1cf90b6ccda6babb87be79e15e736e47dd1d16b0ca0a3786bca60f` |
| 15 | `theorem` | [projVandermonde_comp](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/projvandermonde-comp--0e606c695fc27dde20748cd9.md) | 149 | `result-track:0e606c695fc27dde20748cd9084cd83c5aa4a945cbbea7a15802531b37fde955` |
| 16 | `theorem` | [projVandermonde_map](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/projvandermonde-map--a9c9fbc3ef77028f0774a8bf.md) | 152 | `result-track:a9c9fbc3ef77028f0774a8bf94fdf7f14ac8777255f93e49836e86ac5d845703` |
| 17 | `theorem` | [det_projVandermonde_of_field](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/det-projvandermonde-of-field--343af821ce5d59bc46d07074.md) | 157 | `result-track:343af821ce5d59bc46d070745b76090ed0d301bb3a119cfd383b0e025bd8de96` |
| 18 | `theorem` | [det_projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/det-projvandermonde--a5b48ff289b7d322508c6778.md) | 203 | `result-track:a5b48ff289b7d322508c67785fbefee78d7f81b0683972f789e71359fa291e58` |
| 19 | `theorem` | [det_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/det-vandermonde--5ea8da4c4953f401dbe977a2.md) | 217 | `result-track:5ea8da4c4953f401dbe977a2ee85098fcb2402036077cb723c93fc22241a92b7` |
| 20 | `theorem` | [det_vandermonde_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/det-vandermonde-eq-zero-iff--43ad9c8064fd9f14dcd881c4.md) | 221 | `result-track:43ad9c8064fd9f14dcd881c43ec8317127ebe1299cc27a6ae7f5979f69217e54` |
| 21 | `theorem` | [det_vandermonde_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/det-vandermonde-ne-zero-iff--6eb90d35e9b73c713a7c1cdf.md) | 231 | `result-track:6eb90d35e9b73c713a7c1cdfe749a800f04313e6f56503b38dadcdef9974aff7` |
| 22 | `theorem` | [det_vandermonde_add](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/det-vandermonde-add--f6b8ef7d38ccfae07c16ff33.md) | 237 | `result-track:f6b8ef7d38ccfae07c16ff33e7ccc5cb317641f982a05daadf8c453a98877ad6` |
| 23 | `theorem` | [det_vandermonde_sub](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/det-vandermonde-sub--361a74b6cbf0aeb16fb42f10.md) | 242 | `result-track:361a74b6cbf0aeb16fb42f108bd1819df96dd2a62d24f1b63016c2659df9810c` |
| 24 | `theorem` | [eq_zero_of_forall_index_sum_pow_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/eq-zero-of-forall-index-sum-pow-mul-eq-zero--7590fc69dbfcf4120614de13.md) | 247 | `result-track:7590fc69dbfcf4120614de1393ac4dad6fb775f344ff1a04f2506905f936cccd` |
| 25 | `theorem` | [eq_zero_of_forall_index_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/eq-zero-of-forall-index-sum-mul-pow-eq-zero--3bfa88fd76846e507b6368fb.md) | 251 | `result-track:3bfa88fd76846e507b6368fb5e7050c0dec6f4cec3c54383241ecbda36703602` |
| 26 | `theorem` | [eq_zero_of_forall_pow_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/eq-zero-of-forall-pow-sum-mul-pow-eq-zero--b5283e98fb1f956d79043ba3.md) | 257 | `result-track:b5283e98fb1f956d79043ba37f746bbba7a542ffc302e94ad69f5a53c759d433` |
| 27 | `theorem` | [eval_matrixOfPolynomials_eq_vandermonde_mul_matrixOfPolynomials](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/eval-matrixofpolynomials-eq-vandermonde-mul-matrixofpolynomials--56cbc1b379e9edd31bae80d0.md) | 264 | `result-track:56cbc1b379e9edd31bae80d0bba46f1711a703cbfe0d2914d68ad273cc97e4a3` |
| 28 | `theorem` | [det_eval_matrixOfPolynomials_eq_det_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/declarations/det-eval-matrixofpolynomials-eq-det-vandermonde--a65805e8330dd5acde5b9a54.md) | 277 | `result-track:a65805e8330dd5acde5b9a5473008066ee78a5d6a71cd5e99d67ab7c251fa957` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
