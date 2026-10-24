# Verification target: GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27b090337ad94fde8ab1057b87aaa590547fc133",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/SignedTentCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/SignedTentCorrection.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/SignedTentCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27b090337ad94fde8ab1057b87aaa590547fc133`.

Source path: `GRWTSK/NumberTheory/Chebyshev/SignedTentCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/SignedTentCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.TentRationalCorrection`](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CountedTentTail`](../../../../mathematics/NumberTheory/Chebyshev/CountedTentTail.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareTrivialCorrection](../../../../mathematics/NumberTheory/Chebyshev/SignedTentCorrection.lean/declarations/squaretrivialcorrection--8dc51b3fa6831ade62f7ed2e.md) | 34 | `declaration-track:8dc51b3fa6831ade62f7ed2e13e2068f45761b8c459f6a6f956285722d8e8912` |
| 2 | `def` | [squareTrivialBudget](../../../../mathematics/NumberTheory/Chebyshev/SignedTentCorrection.lean/declarations/squaretrivialbudget--3d80d6921667995e3cee8554.md) | 38 | `declaration-track:3d80d6921667995e3cee8554b68e892e0165c6c4cd66e38ce998ec503f572b45` |
| 3 | `theorem` | [squareTrivialCorrection_bounds](../../../../mathematics/NumberTheory/Chebyshev/SignedTentCorrection.lean/declarations/squaretrivialcorrection-bounds--a85c93558b0a1c0205f57bbd.md) | 42 | `result-track:a85c93558b0a1c0205f57bbdc0f4b1637e36ce48c40603d7815410e60cbeb613` |
| 4 | `theorem` | [squareTrivialCorrection_neg](../../../../mathematics/NumberTheory/Chebyshev/SignedTentCorrection.lean/declarations/squaretrivialcorrection-neg--a1e95661801364945d285cc1.md) | 52 | `result-track:a1e95661801364945d285cc1e48fc1f94ca32f400243ea044962581eead804c4` |
| 5 | `theorem` | [square_correctionPrefix_error](../../../../mathematics/NumberTheory/Chebyshev/SignedTentCorrection.lean/declarations/square-correctionprefix-error--36230131b70e89c5296370e0.md) | 58 | `result-track:36230131b70e89c5296370e0d00ae5879fef74e795a8d73cc6291c094bea4119` |
| 6 | `theorem` | [prime_in_square_of_signed_counted_tent](../../../../mathematics/NumberTheory/Chebyshev/SignedTentCorrection.lean/declarations/prime-in-square-of-signed-counted-tent--5a687a40cdd6e75130a8443d.md) | 69 | `result-track:5a687a40cdd6e75130a8443dda8f26124ed0258ccbbe7008c365311f017aa538` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
