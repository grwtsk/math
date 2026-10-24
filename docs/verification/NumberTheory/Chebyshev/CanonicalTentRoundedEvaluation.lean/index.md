# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalTentRoundedEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be15c5e4d545255c9f2b4d366b2afff4768cbc0d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be15c5e4d545255c9f2b4d366b2afff4768cbc0d`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RoundedLogPowerEvaluation`](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [roundedHead](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/declarations/roundedhead--a1e93388028d865bbbbfd2e1.md) | 30 | `declaration-track:a1e93388028d865bbbbfd2e1e9e6bd67450fcda86ad35af9810704fe9b5646b2` |
| 2 | `def` | [roundedHeadError](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/declarations/roundedheaderror--40ebc770877636e0f828d97a.md) | 35 | `declaration-track:40ebc770877636e0f828d97a1aabd83d9b210519507fa5b03b71e82c9aaa05fe` |
| 3 | `theorem` | [norm_head_sub_rounded_inputs_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/declarations/norm-head-sub-rounded-inputs-le--0c40f61c1e26aef92db17d42.md) | 41 | `result-track:0c40f61c1e26aef92db17d42e0b71e974e31352a54380edba67fcf668122c413` |
| 4 | `theorem` | [roundedHeadError_nonneg](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/declarations/roundedheaderror-nonneg--4a6e98c56ecabd4a2ff80ccf.md) | 61 | `result-track:4a6e98c56ecabd4a2ff80ccf2a786def1f5ef14cc59ac814decc74ddb9267f6b` |
| 5 | `theorem` | [norm_head_sub_rounded_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/declarations/norm-head-sub-rounded-le--95d009a74ce34987436a751b.md) | 67 | `result-track:95d009a74ce34987436a751b2384746b86f383807e8921747b8660d3bacf1baa` |
| 6 | `theorem` | [norm_head_sub_rounded_of_target](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/declarations/norm-head-sub-rounded-of-target--4af12fc2639ed727074ba249.md) | 82 | `result-track:4af12fc2639ed727074ba249dd37afd09f2fde5a26ceee8500c36933b195c946` |
| 7 | `theorem` | [prime_in_square_of_rounded_inputs](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/declarations/prime-in-square-of-rounded-inputs--d811b5c368a0819901c8ff78.md) | 91 | `result-track:d811b5c368a0819901c8ff78db6fd46df186943ba0985b6204639e7b83d86f0c` |
| 8 | `theorem` | [prime_in_square_of_accumulated_rounded_inputs](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/declarations/prime-in-square-of-accumulated-rounded-inputs--01ee8be85bc24b7db9081fb9.md) | 101 | `result-track:01ee8be85bc24b7db9081fb9a9654e0346ccb083a8a1c71888413618fcbba499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
