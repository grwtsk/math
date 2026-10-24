# Verification target: GRWTSK.NumberTheory.Chebyshev.CompactProfileExplicitFormula

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce7d4ef34ed617f586ba17699d73a612f49b9a19",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce7d4ef34ed617f586ba17699d73a612f49b9a19`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Distribution.CompactProfileDilation`](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.DigammaFourierBound`](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_second_eq_explicit](../../../../mathematics/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/declarations/source-second-eq-explicit--9a47dd9b5e4e79d5cb75f886.md) | 27 | `result-track:9a47dd9b5e4e79d5cb75f8864a0eeb2dd019cdb7f3602607f3e957526afb60b4` |
| 2 | `theorem` | [normalized_test_eq_explicit](../../../../mathematics/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/declarations/normalized-test-eq-explicit--bd28fc4be76321dd2269dfc5.md) | 42 | `result-track:bd28fc4be76321dd2269dfc5d8cc28f678abc86a7b3f61a567adaed26795790a` |
| 3 | `theorem` | [actual_archimedean_integrable](../../../../mathematics/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/declarations/actual-archimedean-integrable--505bc4dd244fb885bde900bd.md) | 49 | `result-track:505bc4dd244fb885bde900bd820d51ac344883c73b8ee8405d422161aebb9d07` |
| 4 | `def` | [admittedDilationRealization](../../../../mathematics/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/declarations/admitteddilationrealization--71362b08098b9b1545c32cf8.md) | 60 | `declaration-track:71362b08098b9b1545c32cf8277cdf54f7da2565a8eed5f44be496d6627ec0f3` |
| 5 | `theorem` | [admitted_second_derivative](../../../../mathematics/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/declarations/admitted-second-derivative--a83e3d4cd4e86741a20d7041.md) | 64 | `result-track:a83e3d4cd4e86741a20d70419a1f96973f4578cf213f8db0309b6d62f37253d1` |
| 6 | `theorem` | [source_realization_exists](../../../../mathematics/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/declarations/source-realization-exists--169cfc61891c7f6f890813a7.md) | 67 | `result-track:169cfc61891c7f6f890813a7999bb76f489a98c43aaf39db1643068620d82f0b` |
| 7 | `theorem` | [arithmetic_representation](../../../../mathematics/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/declarations/arithmetic-representation--28663fc5aa926339be7312bf.md) | 72 | `result-track:28663fc5aa926339be7312bf94b9ebbecf356b1a2653d1795899c795292aafb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
