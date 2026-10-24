# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeCostFatouAttempt05.Variant3312379e9003074a420ae42b754e5d3ebd507dcce3e2e1732140c28e50b5987c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78132621f12303453afeb1d2e87eb88a9840a750",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variant3312379e9003074a420ae42b754e5d3ebd507dcce3e2e1732140c28e50b5987c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variant3312379e9003074a420ae42b754e5d3ebd507dcce3e2e1732140c28e50b5987c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variant3312379e9003074a420ae42b754e5d3ebd507dcce3e2e1732140c28e50b5987c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78132621f12303453afeb1d2e87eb88a9840a750`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variant3312379e9003074a420ae42b754e5d3ebd507dcce3e2e1732140c28e50b5987c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variant3312379e9003074a420ae42b754e5d3ebd507dcce3e2e1732140c28e50b5987c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_limit_of_nonnegative_uniform_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variant3312379e9003074a420ae42b754e5d3ebd507dcce3e2e1732140c28e50b5987c.lean/declarations/integrable-limit-of-nonnegative-uniform-integrals--a7f4a91ffc1b911d000bc2a0.md) | 24 | `result-track:a7f4a91ffc1b911d000bc2a097f541cf0b2a67395fe23317f4bf9c5566e1a952` |
| 2 | `theorem` | [no_uniform_nonnegative_integrals_of_nonintegrable_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variant3312379e9003074a420ae42b754e5d3ebd507dcce3e2e1732140c28e50b5987c.lean/declarations/no-uniform-nonnegative-integrals-of-nonintegrable-limit--7bbae823a458102d54b260f1.md) | 43 | `result-track:7bbae823a458102d54b260f125046827feb7033318e8e595350748423f241185` |
| 3 | `theorem` | [not_integrableOn_of_positive_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variant3312379e9003074a420ae42b754e5d3ebd507dcce3e2e1732140c28e50b5987c.lean/declarations/not-integrableon-of-positive-tail--d33d55ee93eafc56ef9f7939.md) | 54 | `result-track:d33d55ee93eafc56ef9f79397752777c9d4397f73344fa3a5be48aae47773c07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
