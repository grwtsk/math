# Verification target: GRWTSK.Analysis.MeasureTheory.Count.Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ebb171e0fe17b5a9d8eb54e70f9552935dd3595",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Count/Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ebb171e0fe17b5a9d8eb54e70f9552935dd3595`.

Source path: `GRWTSK/Analysis/MeasureTheory/Count/Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Count/Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eLpNorm_dirac](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173.lean/declarations/elpnorm-dirac--66d12b47f734388013d508c8.md) | 25 | `result-track:66d12b47f734388013d508c8548cbf8cb0f7141a910020749b0989098abca902` |
| 2 | `lemma` | [enorm_le_eLpNorm_count](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173.lean/declarations/enorm-le-elpnorm-count--d8657320e1ef23c275b941aa.md) | 33 | `result-track:d8657320e1ef23c275b941aa43053d6b2ebf95c4b0f8fee9120a3a9526c7bf3b` |
| 3 | `lemma` | [eLpNorm_count_lt_top_of_lt](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173.lean/declarations/elpnorm-count-lt-top-of-lt--b1882f474ef592d69cdc2b61.md) | 39 | `result-track:b1882f474ef592d69cdc2b61f95f0364c1e02722728d0c2dfb79236fe44913f4` |
| 4 | `lemma` | [eLpNorm_count_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173.lean/declarations/elpnorm-count-lt-top--4eb59906c5830c71ec548b1c.md) | 47 | `result-track:4eb59906c5830c71ec548b1c48b8b7dd08672706d1ddc5953152117e21f99a56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
