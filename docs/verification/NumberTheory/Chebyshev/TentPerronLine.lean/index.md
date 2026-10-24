# Verification target: GRWTSK.NumberTheory.Chebyshev.TentPerronLine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7322bbb770443950c514ad52522606fdb9f6bc3d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TentPerronLine.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7322bbb770443950c514ad52522606fdb9f6bc3d`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TentPerronLine.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TentPerronLine.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.LSeries.TentPairing`](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentSource`](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CountedTentTail`](../../../../mathematics/NumberTheory/Chebyshev/CountedTentTail.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mangoldt_series_on_rightLine](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/declarations/mangoldt-series-on-rightline--bfd4f72b97ccd6992c73905b.md) | 36 | `result-track:bfd4f72b97ccd6992c73905b99f71f7696468c5b1966056ea11889bac671827e` |
| 2 | `theorem` | [rightLine_zeta_ne_zero](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/declarations/rightline-zeta-ne-zero--1614377b82f40837bc767e0c.md) | 44 | `result-track:1614377b82f40837bc767e0cadf2daee707631eb3fcfa4143a4455cc96b7174e` |
| 3 | `theorem` | [weighted_mangoldt_tsum_eq](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/declarations/weighted-mangoldt-tsum-eq--88032f215fe5330d4ad95c80.md) | 48 | `result-track:88032f215fe5330d4ad95c80553d1d36fcf73d1c6be38221e562261dbb5c65f1` |
| 4 | `theorem` | [squareTentMangoldt_eq_rightLine](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/declarations/squaretentmangoldt-eq-rightline--ffc90bac7b1926a2b039c9d0.md) | 65 | `result-track:ffc90bac7b1926a2b039c9d0851ceea94432bc15f7ed02c388a63fc3c9bd23e8` |
| 5 | `def` | [mangoldtLineMass](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/declarations/mangoldtlinemass--585842443c4939d1226c4fdd.md) | 79 | `declaration-track:585842443c4939d1226c4fdd0b3692ce687f8f0caa02f64d621c780412fd86c9` |
| 6 | `theorem` | [mangoldtLineMass_nonneg](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/declarations/mangoldtlinemass-nonneg--97e9f3be01cd3fc0a79e58f5.md) | 83 | `result-track:97e9f3be01cd3fc0a79e58f5f4f9a089ffefb90236d04faea64890cb6ae87607` |
| 7 | `theorem` | [norm_neg_logDeriv_rightLine_le](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/declarations/norm-neg-logderiv-rightline-le--9a2713d9910d23d09767f0b3.md) | 87 | `result-track:9a2713d9910d23d09767f0b31f13e2d37b82d4b5ad0ebf63a65849127d8e08a5` |
| 8 | `theorem` | [continuous_neg_logDeriv_rightLine](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/declarations/continuous-neg-logderiv-rightline--0684ecd26e61c03b9fad0995.md) | 96 | `result-track:0684ecd26e61c03b9fad0995bdd888d467fb6aa07372acc1aa2f09019527ab47` |
| 9 | `theorem` | [integrable_zeta_tent_rightLine](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/declarations/integrable-zeta-tent-rightline--ae846df3dc12d996132b2a2e.md) | 108 | `result-track:ae846df3dc12d996132b2a2e0082f9e1be99e91c95087aa9a064e8e539bd25bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
