# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWindowOverlapFlow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc9869e2c02a3c350767a04d91a3b0cfb6a19c4c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc9869e2c02a3c350767a04d91a3b0cfb6a19c4c`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternCountBalancing`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [windowPrefix](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean/declarations/windowprefix--ee1f5c13db0f22651ca459f3.md) | 23 | `declaration-track:ee1f5c13db0f22651ca459f3070b06a42dd92a074e9d477b0a1d13bdf05caf35` |
| 2 | `def` | [windowSuffix](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean/declarations/windowsuffix--cee295516b420aeff3dbd3c2.md) | 27 | `declaration-track:cee295516b420aeff3dbd3c21137384d82a71d8a6f736576ed4f233fb92f29e5` |
| 3 | `theorem` | [windowSuffix_eq_nextPrefix](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean/declarations/windowsuffix-eq-nextprefix--189e80e2fd7cc02085b453e9.md) | 31 | `result-track:189e80e2fd7cc02085b453e9a91afecad49594192b108093fa74e86f61e9720c` |
| 4 | `def` | [windowOutCount](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean/declarations/windowoutcount--085e5116b164b618ecec5972.md) | 39 | `declaration-track:085e5116b164b618ecec59725091d6f650be4430abd68be28cc81c1b70c72ce2` |
| 5 | `def` | [windowInCount](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean/declarations/windowincount--65a455a0315c7c6e427bb6e7.md) | 44 | `declaration-track:65a455a0315c7c6e427bb6e79310b51c59b95924e03a75d56ab884c1d8e1586e` |
| 6 | `theorem` | [window_overlap_flow](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWindowOverlapFlow.lean/declarations/window-overlap-flow--2c5615b2f9603548b6381b40.md) | 51 | `result-track:2c5615b2f9603548b6381b404af292c03bebedca45ba3ac9a6646f3f25c8569d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
