# Verification target: GRWTSK.NumberTheory.Chebyshev.RieszCorrectionNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0ab995416291369f35bb714076bc29b0b74b697",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0ab995416291369f35bb714076bc29b0b74b697`.

Source path: `GRWTSK/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.RationalRieszPrimitive`](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.RieszSourceSecondDifference`](../../../../mathematics/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [firstRieszPrefix_stable](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/declarations/firstrieszprefix-stable--3755bd5f941d8447e1482158.md) | 23 | `result-track:3755bd5f941d8447e148215850a15063ad964368f59e9c11a4ca7310018245e0` |
| 2 | `def` | [correctedRieszSourceDefect](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/declarations/correctedrieszsourcedefect--cabf4bfcd47ac1a85642c747.md) | 36 | `declaration-track:cabf4bfcd47ac1a85642c747a9962b3b3f8a73498fed0b44aa1af5a4ca951579` |
| 3 | `theorem` | [correctedRieszSourceDefect_second_difference](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/declarations/correctedrieszsourcedefect-second-difference--5a5f9f0d0164110b48df992a.md) | 41 | `result-track:5a5f9f0d0164110b48df992aab94be7cecbc483ca49d72ac71942bb74c1b6d70` |
| 4 | `theorem` | [correctedRieszSourceDefect_midpoint](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/declarations/correctedrieszsourcedefect-midpoint--5e613801f35b902d8b156c86.md) | 54 | `result-track:5e613801f35b902d8b156c86282326061f42058463185e2cf5a0aa12136a043e` |
| 5 | `theorem` | [firstRieszPrefix_two](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/declarations/firstrieszprefix-two--157dc151d1d90de8369858ca.md) | 64 | `result-track:157dc151d1d90de8369858cad36b913434ad956b9e4bc6e8a08be6fdd141dfd0` |
| 6 | `theorem` | [firstRieszPrefix_three](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/declarations/firstrieszprefix-three--b80cc2e2f794d46fe627c7ba.md) | 68 | `result-track:b80cc2e2f794d46fe627c7badc710c21dd113d10f9aeb98fc40ef7d1aff0fd58` |
| 7 | `theorem` | [correctedRieszSourceDefect_two](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/declarations/correctedrieszsourcedefect-two--99c82a5e6f7af21e74ced9c0.md) | 77 | `result-track:99c82a5e6f7af21e74ced9c079621e75749d6a2c007a201c58f5528cd572d146` |
| 8 | `theorem` | [correctedRieszSourceDefect_three](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/declarations/correctedrieszsourcedefect-three--be1cac31aa977310ce9bfda5.md) | 85 | `result-track:be1cac31aa977310ce9bfda54bb1c29ea7b7195d91f48918c8962faaf320fa5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
