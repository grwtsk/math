# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SmallTripling.Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffb35a30d396526678a8a71434c97805107711a7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffb35a30d396526678a8a71434c97805107711a7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.PluenneckeRuzsa` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [inductive_claim_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/declarations/inductive-claim-mul--c3b8c149b9d802a9cacef3c1.md) | 34 | `result-track:c3b8c149b9d802a9cacef3c10b36e06142479381527ab1fea3806f73fcb183fd` |
| 2 | `lemma` | [small_neg_pos_pos_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/declarations/small-neg-pos-pos-mul--9102df57c12ba2050b6fac52.md) | 67 | `result-track:9102df57c12ba2050b6fac52923b6cedbe1f991ffe73cd270f96afaa9f012115` |
| 3 | `lemma` | [small_neg_neg_pos_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/declarations/small-neg-neg-pos-mul--7a67a928623e3fe695f973b3.md) | 85 | `result-track:7a67a928623e3fe695f973b3034e4bb3c45e0d780ffc2f4060c39a4c34c01cc3` |
| 4 | `lemma` | [small_pos_neg_neg_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/declarations/small-pos-neg-neg-mul--9fb478c889e6dfffe0bc987b.md) | 90 | `result-track:9fb478c889e6dfffe0bc987bd00fb3c5720f68ab2256076e1310070917061174` |
| 5 | `lemma` | [small_pos_pos_neg_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/declarations/small-pos-pos-neg-mul--ea0f9fca1fa536dfd4e732d6.md) | 94 | `result-track:ea0f9fca1fa536dfd4e732d66dce138c11310e2aef322667545ab976e79ec29d` |
| 6 | `lemma` | [small_pos_neg_pos_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/declarations/small-pos-neg-pos-mul--dd5e8770772e9fdb86c6299e.md) | 99 | `result-track:dd5e8770772e9fdb86c6299ef49ed0d4aa02b5e981f9517d566b75cb2d88235e` |
| 7 | `lemma` | [small_neg_pos_neg_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/declarations/small-neg-pos-neg-mul--bfe119e9f6071e0578ba64ba.md) | 117 | `result-track:bfe119e9f6071e0578ba64ba74c4e8fe99f7a13b7b37764df7504bd4e783f127` |
| 8 | `lemma` | [small_alternating_pow_of_small_tripling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/declarations/small-alternating-pow-of-small-tripling--267a17ec4482050e76069124.md) | 134 | `result-track:267a17ec4482050e76069124fa0a59d172578b817ab8333927df196628c84c01` |
| 9 | `lemma` | [small_pow_of_small_tripling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/declarations/small-pow-of-small-tripling--3fba757ee9102cb7428f8ad0.md) | 178 | `result-track:3fba757ee9102cb7428f8ad06bcb6536aadd7149614e06c009b1bff242a35a7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
