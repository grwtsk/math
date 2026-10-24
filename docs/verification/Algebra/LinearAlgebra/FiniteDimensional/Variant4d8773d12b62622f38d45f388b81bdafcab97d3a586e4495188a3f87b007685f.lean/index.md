# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteDimensional.Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0d1702e424ac1b4bb9788c0b233ec8df6be9dc4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0d1702e424ac1b4bb9788c0b233ec8df6be9dc4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Cardinality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Infinite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/instance--0b325c02a2e2c9a2b1edafbd.md) | 23 | `declaration-track:0b325c02a2e2c9a2b1edafbdcb9255c78b45080468f74326c96fef762e571d3b` |
| 2 | `theorem` | [finrank_real_complex](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/finrank-real-complex--b145f5eaaac49f6573668cc6.md) | 27 | `result-track:b145f5eaaac49f6573668cc6024f61bbdb2638f0d7bd3203238a61f2dea53dc6` |
| 3 | `theorem` | [rank_real_complex](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/rank-real-complex--a829463597f8ad9fb70f4cb2.md) | 31 | `result-track:a829463597f8ad9fb70f4cb26aa555980c4bfe6617b5058a81cc979e7715a31b` |
| 4 | `theorem` | [rank_real_complex'.](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/rank-real-complex--63e8fec5117ef25817208a05.md) | 33 | `result-track:63e8fec5117ef25817208a0581d07e4dfa59cc493498a39574af18bbe69b7b59` |
| 5 | `theorem` | [finrank_real_complex_fact](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/finrank-real-complex-fact--8e26bdc72a3b608bef180fa5.md) | 38 | `result-track:8e26bdc72a3b608bef180fa553af6ebf4bf3e7add047b47de121a218579b11c4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/instance--bdebcb9fc62c970a640b44e9.md) | 43 | `declaration-track:bdebcb9fc62c970a640b44e9d903b9785d691dd5f9b129cc6f2579f75c0c907c` |
| 7 | `theorem` | [rank_real_of_complex](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/rank-real-of-complex--199304ba29b267790238f7c9.md) | 47 | `result-track:199304ba29b267790238f7c90a33b762fbcc3a756a04117d63e759200208029c` |
| 8 | `theorem` | [finrank_real_of_complex](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/finrank-real-of-complex--c38a60f10da0fcd5d5d264a1.md) | 53 | `result-track:c38a60f10da0fcd5d5d264a1cef693bdb7b28bcda7db18dc25861f39437dbcc1` |
| 9 | `lemma` | [Real.rank_rat_real](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/real-rank-rat-real--504f8b548403e9bb4627c30d.md) | 62 | `result-track:504f8b548403e9bb4627c30d395233643ee8978a309e4525a325c9049bf93fe0` |
| 10 | `lemma` | [Complex.rank_rat_complex](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/complex-rank-rat-complex--8f7cd4c171f8da59a2c4cff8.md) | 68 | `result-track:8f7cd4c171f8da59a2c4cff8372eff7b310698ada0ae9b75ce1c94f8cd1e26db` |
| 11 | `theorem` | [Complex.nonempty_linearEquiv_real](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f.lean/declarations/complex-nonempty-linearequiv-real--fba8a4fc6c05159d3851fd30.md) | 74 | `result-track:fba8a4fc6c05159d3851fd30d3787e45d992f64ad5d34e484dbdc64581219448` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
