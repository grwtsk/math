# Verification target: GRWTSK.Analysis.Complex.IsolatedFiniteOrderContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18b494775954f5ce491cdb66df689187be752499",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18b494775954f5ce491cdb66df689187be752499`.

Source path: `GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/IsolatedFiniteOrderContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IsolatedSimpleZeroContour`](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Analytic.Order` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [filledFactor](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/declarations/filledfactor--7ec58ec0f23691014be894f4.md) | 37 | `declaration-track:7ec58ec0f23691014be894f47f4d481d5ebd01fe5f21aa5662c3f2c94b0f56d5` |
| 2 | `theorem` | [filledFactor_of_ne](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/declarations/filledfactor-of-ne--399230ab2917c414a3e81e9e.md) | 41 | `result-track:399230ab2917c414a3e81e9e2dd076ed0e52a69d03c38a7a8d51d008afc31242` |
| 3 | `theorem` | [filledFactor_factorization](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/declarations/filledfactor-factorization--7d4a2e11972c4485ea852663.md) | 47 | `result-track:7d4a2e11972c4485ea85266365d07a4e4115e65e9e145bb1b4e915586f3fe5b8` |
| 4 | `theorem` | [exists_nonvanishing_factor](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/declarations/exists-nonvanishing-factor--2a4c255a27503a14f76e7162.md) | 59 | `result-track:2a4c255a27503a14f76e7162aa198e62e2c08fea4532699cbc9afdfba7ae4986` |
| 5 | `theorem` | [log_derivative_split](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/declarations/log-derivative-split--bb7113f7e2858524a2272bce.md) | 103 | `result-track:bb7113f7e2858524a2272bceebc6d58ef2efa0d08663f98732e1032952089a70` |
| 6 | `theorem` | [exists_regular_extension](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/declarations/exists-regular-extension--4ac3250b8c93359639425f83.md) | 126 | `result-track:4ac3250b8c93359639425f83cb3505ad059bd428805ae4c2736e043a251a14fd` |
| 7 | `theorem` | [log_derivative_circleIntegral_of_order](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/declarations/log-derivative-circleintegral-of-order--c06a39936de2a2865c245b94.md) | 144 | `result-track:c06a39936de2a2865c245b94f7e373604949fa9bc897db7bc96eb3cc37e8ed77` |
| 8 | `theorem` | [double_zero_isolation_fixture](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/declarations/double-zero-isolation-fixture--7921ae025ebb385a2bc560e1.md) | 190 | `result-track:7921ae025ebb385a2bc560e152964d35be2e75c7ae585235962de5a4ca8fd004` |
| 9 | `theorem` | [wrong_unit_residue_fixture](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/declarations/wrong-unit-residue-fixture--9be2f636218d5c5a2eec4db1.md) | 205 | `result-track:9be2f636218d5c5a2eec4db1c0aad4a88de9695dea10583050a62c21a644e5d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
