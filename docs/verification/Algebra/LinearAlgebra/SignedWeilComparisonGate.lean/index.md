# Verification target: GRWTSK.LinearAlgebra.SignedWeilComparisonGate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f81cabc4b5c9a7fc60c3a9a742588dc6ac0399f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/SignedWeilComparisonGate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/SignedWeilComparisonGate.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/SignedWeilComparisonGate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f81cabc4b5c9a7fc60c3a9a742588dc6ac0399f`.

Source path: `GRWTSK/LinearAlgebra/SignedWeilComparisonGate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/SignedWeilComparisonGate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.SignedOrientationBridge`](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveGramComparison](../../../../mathematics/Algebra/LinearAlgebra/SignedWeilComparisonGate.lean/declarations/positivegramcomparison--745ca24d1e0d4004b5c01433.md) | 35 | `declaration-track:745ca24d1e0d4004b5c014332a604678badbcd39ac32b5b643278f1f256c3d12` |
| 2 | `theorem` | [negativeWitness_forces_comparisonError](../../../../mathematics/Algebra/LinearAlgebra/SignedWeilComparisonGate.lean/declarations/negativewitness-forces-comparisonerror--3d0a7762942ff59c265484c2.md) | 46 | `result-track:3d0a7762942ff59c265484c284fc566a3cf6f48bc528c769c30fa075994659c1` |
| 3 | `theorem` | [positive_of_arbitrarily_small_comparisonError](../../../../mathematics/Algebra/LinearAlgebra/SignedWeilComparisonGate.lean/declarations/positive-of-arbitrarily-small-comparisonerror--b2656bded7506878a249aee2.md) | 60 | `result-track:b2656bded7506878a249aee2716fdebc3ff402ca92419bb0c2046b565f7c6044` |
| 4 | `theorem` | [signed_not_positive_from_positive_metric](../../../../mathematics/Algebra/LinearAlgebra/SignedWeilComparisonGate.lean/declarations/signed-not-positive-from-positive-metric--14cd4fee187689705cfa13a5.md) | 78 | `result-track:14cd4fee187689705cfa13a55d83fd3a8d41aedb6339ed9aafe892fb4b22359a` |
| 5 | `theorem` | [exactSignedPort_has_negativeWitness](../../../../mathematics/Algebra/LinearAlgebra/SignedWeilComparisonGate.lean/declarations/exactsignedport-has-negativewitness--a5c90c316f411b4a127b0fe7.md) | 90 | `result-track:a5c90c316f411b4a127b0fe70ab677c43f1cc30099e27b843ed890c601d7929b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
