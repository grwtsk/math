# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94235f20cc731ba18c07c020d04f13238f33d8ce",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94235f20cc731ba18c07c020d04f13238f33d8ce`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Markov` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Sub` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [limsup_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/declarations/limsup-lintegral-le--6ca6a23edba0a6a4362bb7ab.md) | 23 | `result-track:6ca6a23edba0a6a4362bb7abc8dd1f432fa6daab9001bd3ae6a12df740a6782a` |
| 2 | `theorem` | [tendsto_lintegral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/declarations/tendsto-lintegral-of-dominated-convergence--3d7c43eba5364e235e55e1ef.md) | 42 | `result-track:3d7c43eba5364e235e55e1efe1b8ede9f06b8fb9a3caa25fd5af087709c32002` |
| 3 | `theorem` | [tendsto_lintegral_of_dominated_convergence'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/declarations/tendsto-lintegral-of-dominated-convergence--33eaa6505c044631835bffee.md) | 57 | `result-track:33eaa6505c044631835bffeeeaefd51f3131d7d45e0e43d3008f632dbaf9cdd1` |
| 4 | `theorem` | [tendsto_lintegral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/declarations/tendsto-lintegral-filter-of-dominated-convergence--39d0369d44eaf71aa36cd4f8.md) | 76 | `result-track:39d0369d44eaf71aa36cd4f8532126cc3b126cf163159f9a970561acdce1bbd8` |
| 5 | `lemma` | [tendsto_of_lintegral_tendsto_of_monotone_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/declarations/tendsto-of-lintegral-tendsto-of-monotone-aux--d7ceb5b69337a979b79dedae.md) | 109 | `result-track:d7ceb5b69337a979b79dedae296819b4321075bad5fe2bee1b8e1f155a2cf7c9` |
| 6 | `lemma` | [tendsto_of_lintegral_tendsto_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/declarations/tendsto-of-lintegral-tendsto-of-monotone--60e29ce6110feb01f04e8e98.md) | 148 | `result-track:60e29ce6110feb01f04e8e984c2596eea2b4713c6d4592cd8c4b55aa26c6260f` |
| 7 | `lemma` | [tendsto_of_lintegral_tendsto_of_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/declarations/tendsto-of-lintegral-tendsto-of-antitone--e63e44fdac136b75ec24969e.md) | 190 | `result-track:e63e44fdac136b75ec24969e0450d8578013f1326a51c18d8b29019635d19cec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
