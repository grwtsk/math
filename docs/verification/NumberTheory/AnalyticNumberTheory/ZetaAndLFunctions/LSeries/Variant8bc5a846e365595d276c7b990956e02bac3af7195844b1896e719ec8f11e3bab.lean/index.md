# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.LSeries.Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fedfcbe0a7751bd9f3b0cea68cab65496bea5b1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fedfcbe0a7751bd9f3b0cea68cab65496bea5b1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.FiniteDimension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/declarations/lseries--da11fee645c777b926ff7fc9.md) | 42 | `declaration-track:da11fee645c777b926ff7fc97b22686fc004a9e1739d54acbe9dde8acb48e326` |
| 2 | `def` | [LSeriesSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/declarations/lseriessummable--f10b1be1e50a3eea5e6c723c.md) | 47 | `declaration-track:f10b1be1e50a3eea5e6c723c052d824d86932791af7d5a9e6e168d8f4e27c5ec` |
| 3 | `theorem` | [LSeries_eq_zero_of_not_LSeriesSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/declarations/lseries-eq-zero-of-not-lseriessummable--0db0e908330edf0baa33dd00.md) | 51 | `result-track:0db0e908330edf0baa33dd006e613879b9277d644fd0ceb0d606a0e40152de4c` |
| 4 | `theorem` | [LSeriesSummable_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/declarations/lseriessummable-zero--15ac3ad1d06bd2b3ff763070.md) | 57 | `result-track:15ac3ad1d06bd2b3ff763070005e8d42dfac4eb8d3c78864db1b10bee9934bc5` |
| 5 | `theorem` | [LSeriesSummable_of_bounded_of_one_lt_real](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/declarations/lseriessummable-of-bounded-of-one-lt-real--7c5e0cbaa0886e4d626038cf.md) | 61 | `result-track:7c5e0cbaa0886e4d626038cfc690289a5946c87afd7d1f8e7047ad47ea303970` |
| 6 | `theorem` | [LSeriesSummable_iff_of_re_eq_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/declarations/lseriessummable-iff-of-re-eq-re--60af1a226e6a6214299f330f.md) | 80 | `result-track:60af1a226e6a6214299f330fe5e6459ec08b14bcb427e28749fb4c4400d00d35` |
| 7 | `theorem` | [LSeriesSummable_of_bounded_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/declarations/lseriessummable-of-bounded-of-one-lt-re--6c50a1ddef17419dd07948c4.md) | 98 | `result-track:6c50a1ddef17419dd07948c45aa658c09550a769a6c90364308e42590255c675` |
| 8 | `theorem` | [zeta_LSeriesSummable_iff_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/declarations/zeta-lseriessummable-iff-one-lt-re--52811fc9904d6bca1e550c42.md) | 107 | `result-track:52811fc9904d6bca1e550c42e75e8417467cf2f58f68d5d1ef6440e52af12dec` |
| 9 | `theorem` | [LSeries_add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/declarations/lseries-add--984d5d1137e0230ad0873d26.md) | 124 | `result-track:984d5d1137e0230ad0873d26e271d61431a7a63cc25d85be6f2e983ba9dae682` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
