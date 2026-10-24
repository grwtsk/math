# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Convergence.Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03e4660de008227642b508c74d184ff18571fbe8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03e4660de008227642b508c74d184ff18571fbe8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.EReal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LSeries.abscissaOfAbsConv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-abscissaofabsconv--b34dfad9755c047fd411e7ee.md) | 34 | `declaration-track:b34dfad9755c047fd411e7eeaa8b90dadbedd05e15a6367644b5de6022a2eb16` |
| 2 | `lemma` | [LSeries.abscissaOfAbsConv_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-abscissaofabsconv-congr--5ed5c2498febb49d0c9f90df.md) | 37 | `result-track:5ed5c2498febb49d0c9f90df9acd2f8f9349961b988539a1ad08695b1bf5338f` |
| 3 | `lemma` | [LSeries.abscissaOfAbsConv_congr'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-abscissaofabsconv-congr--356a4e0f6dfa50961bd809bb.md) | 44 | `result-track:356a4e0f6dfa50961bd809bb6f672e2b9ec4f9971f8102b6fe762e034550be4e` |
| 4 | `lemma` | [LSeriesSummable_of_abscissaOfAbsConv_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseriessummable-of-abscissaofabsconv-lt-re--4fba6800a601b653e9c7f05f.md) | 50 | `result-track:4fba6800a601b653e9c7f05f17e4a03cdcb700623a50a209144d6e497b207f66` |
| 5 | `lemma` | [LSeriesSummable_lt_re_of_abscissaOfAbsConv_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseriessummable-lt-re-of-abscissaofabsconv-lt-re--d2fd9cdaa06e1617d874cd61.md) | 56 | `result-track:d2fd9cdaa06e1617d874cd6158bb2718f6d5b2a60e1688dd62c03265d2118afb` |
| 6 | `lemma` | [LSeriesSummable.abscissaOfAbsConv_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseriessummable-abscissaofabsconv-le--378f3ab609971de281f1a8a8.md) | 62 | `result-track:378f3ab609971de281f1a8a87320a888994cfb37a19a15b357449dd90a92b29d` |
| 7 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-abscissaofabsconv-le-of-forall-lt-lseriessummable--f90ada7b76c5c5cd1f0cfa26.md) | 66 | `result-track:f90ada7b76c5c5cd1f0cfa26995876edd3685b89963d8c90660d30cbc1575c45` |
| 8 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-abscissaofabsconv-le-of-forall-lt-lseriessummable--734573d3cff8db6ebd2f7e6a.md) | 76 | `result-track:734573d3cff8db6ebd2f7e6ab3f1f3ee740c707230ff7df140365d654b3e1242` |
| 9 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_le_const_mul_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-abscissaofabsconv-le-of-le-const-mul-rpow--b6ec6f95e92c9f98ee2b1086.md) | 91 | `result-track:b6ec6f95e92c9f98ee2b1086f2b43dd1112e41a9fb23ec45f9c398b654c2fd26` |
| 10 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_isBigO_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-abscissaofabsconv-le-of-isbigo-rpow--1cf7a402a716f7017d1e0238.md) | 102 | `result-track:1cf7a402a716f7017d1e023860d73d883723f8b1c189b2659a183f49fbb8eb3a` |
| 11 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_le_const](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-abscissaofabsconv-le-of-le-const--0df6c94afa10389791b6b78d.md) | 112 | `result-track:0df6c94afa10389791b6b78d010f3d157dd7794fb7a03e75e662cbe40eaebb56` |
| 12 | `lemma` | [LSeries.abscissaOfAbsConv_le_one_of_isBigO_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-abscissaofabsconv-le-one-of-isbigo-one--0a5e85a8bf6ebd3aa8a94f2a.md) | 118 | `result-track:0a5e85a8bf6ebd3aa8a94f2a6f90e2cb70eff48f3a7543d7d3546219e65a0ee5` |
| 13 | `lemma` | [LSeries.summable_real_of_abscissaOfAbsConv_lt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-summable-real-of-abscissaofabsconv-lt--28c46562b20a7d47dce812bc.md) | 124 | `result-track:28c46562b20a7d47dce812bc559913f1a5b2c4ff65ad694da0f07508282c6b94` |
| 14 | `lemma` | [LSeries.abscissaOfAbsConv_binop_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/declarations/lseries-abscissaofabsconv-binop-le--a58be7875fcd8c1154faaf52.md) | 140 | `result-track:a58be7875fcd8c1154faaf52ce4d6a6e12ea357694a84812b6f9d1af6936359f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
