# Verification target: GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fa1d7ff07ba3b97bf45d7a4d239018d43187a08",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MoebiusEulerProduct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fa1d7ff07ba3b97bf45d7a4d239018d43187a08`.

Source path: `GRWTSK/NumberTheory/Moebius/MoebiusEulerProduct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MoebiusEulerProduct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 2; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../../mathematics/NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integerCoefficient](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/integercoefficient--dc7c60cea4d82587c78ef8da.md) | 15 | `declaration-track:dc7c60cea4d82587c78ef8daa63b0ad33ec88d853f773090175a47c711fcd960` |
| 2 | `theorem` | [integerCoefficient_exact](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/integercoefficient-exact--73b7c04c3600a7f5068073a8.md) | 19 | `result-track:73b7c04c3600a7f5068073a868500ef0ddb7901959d8437800320ef970363dc3` |
| 3 | `theorem` | [repeated_prime_coefficient_zero](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/repeated-prime-coefficient-zero--9a456d4fa3612703ef8bb528.md) | 57 | `result-track:9a456d4fa3612703ef8bb528c848e33704c2fda16e584a8cbadf83fac664386e` |
| 4 | `theorem` | [divisor_moebius_sum](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/divisor-moebius-sum--8e4025ef0b737249c7866984.md) | 61 | `result-track:8e4025ef0b737249c78669844d24e1ded18aed5f9ca3fbdb752f3cb7a39698b2` |
| 5 | `theorem` | [moebius_inversion](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/moebius-inversion--e559bcea2443ad033efb8b0c.md) | 67 | `result-track:e559bcea2443ad033efb8b0cb76f38cbea0dd89408245ef7f85d7f3050c46c55` |
| 6 | `def` | [moebiusDirichletTerm](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/moebiusdirichletterm--a10cdfab0998ec1644d8902a.md) | 73 | `declaration-track:a10cdfab0998ec1644d8902a6a6f7bfea45091b31b8bb3c721734c83c8258da7` |
| 7 | `theorem` | [moebiusDirichletTerm_eq](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/moebiusdirichletterm-eq--50cc0cc2a069cbd98dbed245.md) | 76 | `result-track:50cc0cc2a069cbd98dbed245df81cfcdc2bd94cbed613a5f0a67c6b7cd4d9a54` |
| 8 | `theorem` | [moebiusDirichlet_summable](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/moebiusdirichlet-summable--eb1981b54ca6cfc4fd78bb36.md) | 83 | `result-track:eb1981b54ca6cfc4fd78bb368a21308d86ee6b28c728f18ac9f516380d7b43fb` |
| 9 | `theorem` | [moebiusDirichlet_eq_inv_zeta](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/moebiusdirichlet-eq-inv-zeta--a427ca3d1655408e7ad76ba7.md) | 88 | `result-track:a427ca3d1655408e7ad76ba7a7100fcb9db331bae9a7509ed2bff63945753fce` |
| 10 | `theorem` | [reciprocal_zeta_hasProd](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/reciprocal-zeta-hasprod--d1246cba49e822c8077ec0f2.md) | 98 | `result-track:d1246cba49e822c8077ec0f2c5641dc3b6347d0f805c27e8e773a9c3d10eafc3` |
| 11 | `theorem` | [reciprocal_zeta_tprod](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/reciprocal-zeta-tprod--f6b22c47b650f637d1c4c485.md) | 103 | `result-track:f6b22c47b650f637d1c4c485b0eddc5b1383f8a50289bb8decdc76ff71a1ba68` |
| 12 | `theorem` | [moebius_sum_eq_euler_product](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/moebius-sum-eq-euler-product--bc004070e9a3b035bf9fa728.md) | 107 | `result-track:bc004070e9a3b035bf9fa728705ba4f01a4dd6b1886bea66eb15dd1a00137e61` |
| 13 | `theorem` | [finite_causal_pickup](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/finite-causal-pickup--8d44d602652fe419256a2f93.md) | 112 | `result-track:8d44d602652fe419256a2f938630644be1bece937023ec90bcb40da1b0b11266` |
| 14 | `def` | [completedPickup](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/completedpickup--265e82fdba7d18d945d1ea0f.md) | 118 | `declaration-track:265e82fdba7d18d945d1ea0fba52f03426efcd8c910e904a93d01609ea86b985` |
| 15 | `def` | [pickupLaplace](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/declarations/pickuplaplace--50ccaeac0adb6a46c6c8c3da.md) | 122 | `declaration-track:50ccaeac0adb6a46c6c8c3dab592c6a46ae37de8e57722a57ee7bb6ef2655b8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
