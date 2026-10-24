# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Piecewise.Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3a2a46421199a638c854006335c36c1e1cb4d0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3a2a46421199a638c854006335c36c1e1cb4d0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convexOn_univ_piecewise_Iic_of_antitoneOn_Iic_monotoneOn_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean/declarations/convexon-univ-piecewise-iic-of-antitoneon-iic-monotoneon-ici--618b03eac058bb120fcaf029.md) | 46 | `result-track:618b03eac058bb120fcaf029f669f5fed2384e8b21855410ecca542d8ea3d868` |
| 2 | `theorem` | [convexOn_univ_piecewise_Ici_of_monotoneOn_Ici_antitoneOn_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean/declarations/convexon-univ-piecewise-ici-of-monotoneon-ici-antitoneon-iic--73a3c83345a762676df0470c.md) | 100 | `result-track:73a3c83345a762676df0470c1c224f9611fbabb7f9cb2551a6547e47741cbeac` |
| 3 | `theorem` | [concaveOn_univ_piecewise_Iic_of_monotoneOn_Iic_antitoneOn_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean/declarations/concaveon-univ-piecewise-iic-of-monotoneon-iic-antitoneon-ici--af019bb207cb7a6f752c4c81.md) | 114 | `result-track:af019bb207cb7a6f752c4c812c5a0549bcb0ebdb97696988b7df598f6a0b1908` |
| 4 | `theorem` | [concaveOn_univ_piecewise_Ici_of_antitoneOn_Ici_monotoneOn_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean/declarations/concaveon-univ-piecewise-ici-of-antitoneon-ici-monotoneon-iic--28f8eabd8f22ed5ca8110332.md) | 125 | `result-track:28f8eabd8f22ed5ca81103327731b5298bf79d0d19b793da8180fce063b30af2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
