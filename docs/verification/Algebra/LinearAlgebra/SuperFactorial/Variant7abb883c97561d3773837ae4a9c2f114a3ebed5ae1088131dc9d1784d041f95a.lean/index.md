# Verification target: GRWTSK.Algebra.LinearAlgebra.SuperFactorial.Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8392429ef862d6650d8f81131349d99eb58a061f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8392429ef862d6650d8f81131349d99eb58a061f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [superFactorial](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/superfactorial--a693a02d1948d7af334f498b.md) | 27 | `declaration-track:a693a02d1948d7af334f498b74c76d1db0da850a31ad4be21873ff5ced8c2062` |
| 2 | `theorem` | [superFactorial_zero](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/superfactorial-zero--5a4882081b322002fb5d92be.md) | 37 | `result-track:5a4882081b322002fb5d92be368ab89c44218b06a97a76daaf65eea7524a0852` |
| 3 | `theorem` | [superFactorial_succ](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/superfactorial-succ--c28132734f171d2820821f04.md) | 40 | `result-track:c28132734f171d2820821f04fd7bb06366953167281c88f18d83d3dfe9e46bd9` |
| 4 | `theorem` | [superFactorial_one](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/superfactorial-one--d9e26c2376151bc13709d30f.md) | 44 | `result-track:d9e26c2376151bc13709d30f19d423d7534271c3f695652b54cdd7d38256b9f2` |
| 5 | `theorem` | [superFactorial_two](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/superfactorial-two--c767fc13670b1ccec181eaff.md) | 48 | `result-track:c767fc13670b1ccec181eaff65f9d55080cda0e6fb788de7a1523540fbdd97b6` |
| 6 | `theorem` | [prod_Icc_factorial](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/prod-icc-factorial--312ffc0fbef1ed70a87542d3.md) | 54 | `result-track:312ffc0fbef1ed70a87542d30e186126aa6e77ca42f06bef25bfc2938cecea7d` |
| 7 | `theorem` | [prod_range_factorial_succ](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/prod-range-factorial-succ--20e0389865ce5b064a0c2312.md) | 61 | `result-track:20e0389865ce5b064a0c23128cd2a07800e2ea985fc5626ac55f08db02c9e060` |
| 8 | `theorem` | [prod_range_succ_factorial](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/prod-range-succ-factorial--6bb3dbc95c629cc5e3022e0a.md) | 65 | `result-track:6bb3dbc95c629cc5e3022e0ade8acb659c4967e9d8b1996a584f07a29b12e34c` |
| 9 | `theorem` | [det_vandermonde_id_eq_superFactorial](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/det-vandermonde-id-eq-superfactorial--066b254f329df8784821046d.md) | 72 | `result-track:066b254f329df8784821046d0346241c77099a91b05f153b2f9be72cee8e6896` |
| 10 | `theorem` | [superFactorial_two_mul](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/superfactorial-two-mul--e8100fdf109124c65dd260f5.md) | 85 | `result-track:e8100fdf109124c65dd260f5139c025278c57e5a10711215ef4c3a87b1136282` |
| 11 | `theorem` | [superFactorial_four_mul](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/superfactorial-four-mul--39c2ba3b16b715e1056df70e.md) | 93 | `result-track:39c2ba3b16b715e1056df70e27b36f88180c6898a2c5651f97e5a580842b963e` |
| 12 | `theorem` | [matrixOf_eval_descPochhammer_eq_mul_matrixOf_choose](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/matrixof-eval-descpochhammer-eq-mul-matrixof-choose--82d54a94a1fbdbadd8c92259.md) | 101 | `result-track:82d54a94a1fbdbadd8c92259715e60bccfbdaf46a7d2ca4e5e2155568d62ddc8` |
| 13 | `theorem` | [superFactorial_dvd_vandermonde_det](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/declarations/superfactorial-dvd-vandermonde-det--be8abe3fef20d597fcbeda1f.md) | 111 | `result-track:be8abe3fef20d597fcbeda1f5798608421f7f30b62b9cf836ba94ff097df1034` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
