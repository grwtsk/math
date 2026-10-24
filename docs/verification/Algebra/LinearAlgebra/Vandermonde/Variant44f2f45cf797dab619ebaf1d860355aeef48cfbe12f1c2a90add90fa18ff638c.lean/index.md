# Verification target: GRWTSK.Algebra.LinearAlgebra.Vandermonde.Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49a4992177aa418867633cf21bfb9254435e4abb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49a4992177aa418867633cf21bfb9254435e4abb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Nondegenerate` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/vandermonde--2639d2c578e0a259ffc7b4bc.md) | 39 | `declaration-track:2639d2c578e0a259ffc7b4bc4900813478c214f1f6afe69f6fdc62979bc6a7e5` |
| 2 | `theorem` | [vandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/vandermonde-apply--7a845de7f125334a3b39203e.md) | 43 | `result-track:7a845de7f125334a3b39203ec48c78852e3e281a4a013fd31f3435cd09ad97ad` |
| 3 | `theorem` | [vandermonde_cons](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/vandermonde-cons--449f565b030fa55822c8f9f5.md) | 48 | `result-track:449f565b030fa55822c8f9f523578d5b529285d1ca78306a6c9a32e058e4704b` |
| 4 | `theorem` | [vandermonde_succ](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/vandermonde-succ--64665706b429ab5e31a086f9.md) | 58 | `result-track:64665706b429ab5e31a086f9061c6cfa7dae45e776663887e39403d8fd1b4df5` |
| 5 | `theorem` | [vandermonde_mul_vandermonde_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/vandermonde-mul-vandermonde-transpose--b57a5eb6b1e9f7e40153e639.md) | 65 | `result-track:b57a5eb6b1e9f7e40153e6397ffb8ab9f7879ed60374938206da64d7862f08ba` |
| 6 | `theorem` | [vandermonde_transpose_mul_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/vandermonde-transpose-mul-vandermonde--57d47de2a5d320ecdfc76a3f.md) | 70 | `result-track:57d47de2a5d320ecdfc76a3f5beb34f652c8d7d0b65f4aace09ce5755de96858` |
| 7 | `theorem` | [det_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/det-vandermonde--1d19aa22c7a55eb3260b5253.md) | 75 | `result-track:1d19aa22c7a55eb3260b525302dd6e668d7b67b251ee833107f702eaed7b3a48` |
| 8 | `theorem` | [det_vandermonde_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/det-vandermonde-eq-zero-iff--d3acb36bb9789f1c9eadbf8e.md) | 140 | `result-track:d3acb36bb9789f1c9eadbf8e8824905694f79f203557081836ebc15d3261f96b` |
| 9 | `theorem` | [det_vandermonde_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/det-vandermonde-ne-zero-iff--f0c25931425ee720fde21948.md) | 151 | `result-track:f0c25931425ee720fde219483c1762882ed27b984a0860c232fb2e914e1d9737` |
| 10 | `theorem` | [eq_zero_of_forall_index_sum_pow_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/eq-zero-of-forall-index-sum-pow-mul-eq-zero--238cf36f7791cda34b5b2691.md) | 157 | `result-track:238cf36f7791cda34b5b26917efe12e5b1344e871b57911a0aac63df22ebb09a` |
| 11 | `theorem` | [eq_zero_of_forall_index_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/eq-zero-of-forall-index-sum-mul-pow-eq-zero--e37017f3f058dbdf9ee37706.md) | 163 | `result-track:e37017f3f058dbdf9ee377062d0b38be762009c010fc58b4eff5eb0e50050de0` |
| 12 | `theorem` | [eq_zero_of_forall_pow_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/declarations/eq-zero-of-forall-pow-sum-mul-pow-eq-zero--a91e202b24a0b11a6af5e935.md) | 171 | `result-track:a91e202b24a0b11a6af5e9358bc1b750528285c9d7f7fbc71f60a6b339e968ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
