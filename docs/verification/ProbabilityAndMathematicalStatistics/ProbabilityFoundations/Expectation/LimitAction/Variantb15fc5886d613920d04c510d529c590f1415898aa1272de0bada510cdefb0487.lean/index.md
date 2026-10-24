# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.LimitAction.Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fff33335a83ffacb25ff9f45d672e2727f695fc3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fff33335a83ffacb25ff9f45d672e2727f695fc3`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Boundary.LimitKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Symmetry.CutAction` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectiveAutomorphismSystem](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean/declarations/projectiveautomorphismsystem--5c274f58b5f5470b5162e9b3.md) | 19 | `declaration-track:5c274f58b5f5470b5162e9b3a4eb03c08c4109c5483af278972e26da9fc22f08` |
| 2 | `structure` | [CompatibleLimitAutomorphism](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean/declarations/compatiblelimitautomorphism--a14cc4286c01105a287e09c8.md) | 78 | `declaration-track:a14cc4286c01105a287e09c8378494776b19738881160c386b0da0440a9149d6` |
| 3 | `structure` | [LimitAutomorphismAction](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean/declarations/limitautomorphismaction--d5991e7cc3b8547e4b59fb7a.md) | 98 | `declaration-track:d5991e7cc3b8547e4b59fb7a4bc6bd006d5d450c4b1a0b87fd8e57d9b030f393` |
| 4 | `theorem` | [limit_automorphism_preserves_boundary_law](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean/declarations/limit-automorphism-preserves-boundary-law--b14266ffadddc33eea9f4684.md) | 134 | `result-track:b14266ffadddc33eea9f46848d1b1dfab565ff2f78e35f814ebabeb10a4b71ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
