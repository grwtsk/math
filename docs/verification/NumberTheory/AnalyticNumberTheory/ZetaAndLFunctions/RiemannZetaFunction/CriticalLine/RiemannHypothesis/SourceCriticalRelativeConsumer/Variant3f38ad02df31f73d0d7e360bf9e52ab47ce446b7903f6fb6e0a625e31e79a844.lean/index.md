# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalRelativeConsumer.Variant3f38ad02df31f73d0d7e360bf9e52ab47ce446b7903f6fb6e0a625e31e79a844

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a74b1f64d27e67045791049027373e628b79ed71",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Variant3f38ad02df31f73d0d7e360bf9e52ab47ce446b7903f6fb6e0a625e31e79a844.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Variant3f38ad02df31f73d0d7e360bf9e52ab47ce446b7903f6fb6e0a625e31e79a844.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Variant3f38ad02df31f73d0d7e360bf9e52ab47ce446b7903f6fb6e0a625e31e79a844.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a74b1f64d27e67045791049027373e628b79ed71`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Variant3f38ad02df31f73d0d7e360bf9e52ab47ce446b7903f6fb6e0a625e31e79a844.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Variant3f38ad02df31f73d0d7e360bf9e52ab47ce446b7903f6fb6e0a625e31e79a844.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CriticalRelativePairing` — import line 1; external provider; requires a separately pinned dependency.
- `IntegerWitnessTransfer` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integer_bound_at_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Variant3f38ad02df31f73d0d7e360bf9e52ab47ce446b7903f6fb6e0a625e31e79a844.lean/declarations/integer-bound-at-radius--91ff1ab1ffa30b5351e84aaa.md) | 19 | `result-track:91ff1ab1ffa30b5351e84aaae32ae1143f48c4c67f1462bd610eac3d5b4a5ff0` |
| 2 | `theorem` | [residual_bound_at_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Variant3f38ad02df31f73d0d7e360bf9e52ab47ce446b7903f6fb6e0a625e31e79a844.lean/declarations/residual-bound-at-radius--0dfa7c95ffe99564b6c7c87f.md) | 30 | `result-track:0dfa7c95ffe99564b6c7c87ff2641fd9d649af7549015ac237eee98e3df1a0bd` |
| 3 | `theorem` | [estimate_of_criticalRelativePairing_bound_at_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Variant3f38ad02df31f73d0d7e360bf9e52ab47ce446b7903f6fb6e0a625e31e79a844.lean/declarations/estimate-of-criticalrelativepairing-bound-at-radius--8dc1ec7b4ae22d5c6658e3ba.md) | 38 | `result-track:8dc1ec7b4ae22d5c6658e3badda1f2e6f908f88f990f9b683340e806d19452cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
