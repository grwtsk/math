# Verification target: GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "399be289c9122c07ae30af3955d9441fc91a1b66",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit__SourceOccurrencee1d20fe1cc4e3227a4946c36.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit__SourceOccurrencee1d20fe1cc4e3227a4946c36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `399be289c9122c07ae30af3955d9441fc91a1b66`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples`](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence0c2b52424b26a4b023b52b8e.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [noncommutativity_consumer](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit__SourceOccurrencee1d20fe1cc4e3227a4946c36.lean/declarations/noncommutativity-consumer--079ab6c722aa98b064638759.md) | 8 | `result-track:079ab6c722aa98b064638759ecf544b778ace8b07dadbd37222c40a9e1e302e8` |
| 2 | `theorem` | [inverse_product_failure_consumer](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit__SourceOccurrencee1d20fe1cc4e3227a4946c36.lean/declarations/inverse-product-failure-consumer--994fffc821599a14b2b026ba.md) | 11 | `result-track:994fffc821599a14b2b026ba6884a6b3f8ee182d078256d35df4fef833602a12` |
| 3 | `elab` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit__SourceOccurrencee1d20fe1cc4e3227a4946c36.lean/declarations/elab--0f13fb791d8ad7f59dde2984.md) | 17 | `declaration-track:0f13fb791d8ad7f59dde29844f5acc1a09d6201821193a41494e5560066feb0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
