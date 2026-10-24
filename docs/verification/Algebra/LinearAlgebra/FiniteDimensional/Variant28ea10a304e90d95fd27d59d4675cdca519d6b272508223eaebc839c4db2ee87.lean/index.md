# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteDimensional.Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37ed2d8566d19e5364d9b4ffac5cf926a294630c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37ed2d8566d19e5364d9b4ffac5cf926a294630c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Cardinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Infinite` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/instance--a9bd2ecf61cac24b0857113e.md) | 31 | `declaration-track:a9bd2ecf61cac24b0857113e123ccd49667268b438ec457eaf921d38ca03b6ba` |
| 2 | `theorem` | [finrank_real_complex](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/finrank-real-complex--8869ff26add0c923b1a57124.md) | 35 | `result-track:8869ff26add0c923b1a571249e0f4962e262fb7f1a4faeb046de5fa9e86449ae` |
| 3 | `theorem` | [rank_real_complex](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/rank-real-complex--410599990db94661e441c5a7.md) | 39 | `result-track:410599990db94661e441c5a7e91936b8831a36ad31ee33ced69ad293341fdff7` |
| 4 | `theorem` | [rank_real_complex'.](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/rank-real-complex--6f9af067d186773a0b056c67.md) | 41 | `result-track:6f9af067d186773a0b056c67732a7f7ba872d10a65241ab48c9b68441c9a9d39` |
| 5 | `theorem` | [finrank_real_complex_fact](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/finrank-real-complex-fact--dda86b0b81f5626491bd862d.md) | 46 | `result-track:dda86b0b81f5626491bd862d619acd5bd03215476366da57ebafd43c1a375704` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/instance--567086b494cec22ea48bb245.md) | 51 | `declaration-track:567086b494cec22ea48bb245981f7dad10559c0ada0e60470fd72d30ffea972e` |
| 7 | `theorem` | [rank_real_of_complex](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/rank-real-of-complex--f6f1d633b09fd748b2881ecf.md) | 55 | `result-track:f6f1d633b09fd748b2881ecf3c0405eacbf1cc210c306eeaf5b22d71cc962054` |
| 8 | `theorem` | [finrank_real_of_complex](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/finrank-real-of-complex--5b79989c1c19eb86a42bbd00.md) | 61 | `result-track:5b79989c1c19eb86a42bbd007359c507b2b62b22411f9aa9aa5609b4aac7c25c` |
| 9 | `lemma` | [Real.rank_rat_real](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/real-rank-rat-real--257627632f9e5e8509aff137.md) | 70 | `result-track:257627632f9e5e8509aff137452b81b8c223bb17afb51344d32f2294724a4278` |
| 10 | `lemma` | [Complex.rank_rat_complex](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/complex-rank-rat-complex--f107801089e8e6463927dcc4.md) | 76 | `result-track:f107801089e8e6463927dcc4c520d8b3a1aa61dcb4b9a7f9c3633a09e1e68539` |
| 11 | `theorem` | [Complex.nonempty_linearEquiv_real](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87.lean/declarations/complex-nonempty-linearequiv-real--c304c8c175ed2ffd401b92a0.md) | 82 | `result-track:c304c8c175ed2ffd401b92a0b25c2c5550c87f2d6554d283a633b032d304f0e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
