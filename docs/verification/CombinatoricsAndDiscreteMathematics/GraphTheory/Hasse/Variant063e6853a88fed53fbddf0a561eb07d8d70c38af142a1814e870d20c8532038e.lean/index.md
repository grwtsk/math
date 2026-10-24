# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Hasse.Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8387eccb1fd0a544d7058ed177b53bc2945618e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8387eccb1fd0a544d7058ed177b53bc2945618e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Relation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/hasse--26e9b9b6f5456bada4b550f9.md) | 36 | `declaration-track:26e9b9b6f5456bada4b550f9977930c4a1435d39cb4328ef0ab388e567a24f50` |
| 2 | `theorem` | [hasse_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/hasse-adj--02725a6fbfdb6844ff5661f4.md) | 45 | `result-track:02725a6fbfdb6844ff5661f49208e0be192ca401ae75432ae5b6e17e646cdef9` |
| 3 | `def` | [hasseDualIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/hassedualiso--589d655db93005b1cc2c999f.md) | 50 | `declaration-track:589d655db93005b1cc2c999f2832517337376fbbede5268431415f8f6331b77b` |
| 4 | `theorem` | [hasseDualIso_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/hassedualiso-apply--f92e970c7410ba5aaf3dabf3.md) | 55 | `result-track:f92e970c7410ba5aaf3dabf3abd208106026eb153de8a41f59d61fb274a95ef9` |
| 5 | `theorem` | [hasseDualIso_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/hassedualiso-symm-apply--62970dee3fbc898782a365b9.md) | 60 | `result-track:62970dee3fbc898782a365b9901969a42c41eb1ebe457d60f6b7a4957f0d0f75` |
| 6 | `theorem` | [hasse_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/hasse-prod--1dad1b41b13f7384a15ba584.md) | 71 | `result-track:1dad1b41b13f7384a15ba584e3ffc67d7ff3297decf33e4dd11b29d01b456f7c` |
| 7 | `theorem` | [hasse_preconnected_of_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/hasse-preconnected-of-succ--c1998444d09fe83d0cde364c.md) | 83 | `result-track:c1998444d09fe83d0cde364c17366118f072f293f5d9267e588f7434b2d80e1b` |
| 8 | `theorem` | [hasse_preconnected_of_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/hasse-preconnected-of-pred--1e407445ccee319e3901ea3a.md) | 91 | `result-track:1e407445ccee319e3901ea3ad435f7e31a9751920f54859b6d4e4ae073c8f46b` |
| 9 | `def` | [pathGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/pathgraph--26520777bf0076222f595735.md) | 102 | `declaration-track:26520777bf0076222f59573532c8b88fd95546aacebca47ad9d273c8dc3b0f3f` |
| 10 | `theorem` | [pathGraph_preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/pathgraph-preconnected--40907d16abde359e261f5ee9.md) | 106 | `result-track:40907d16abde359e261f5ee96c87b3457b15f2af9bfc2cad34301ec33c010cde` |
| 11 | `theorem` | [pathGraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean/declarations/pathgraph-connected--0e08e4cf1d621e7109733fc6.md) | 110 | `result-track:0e08e4cf1d621e7109733fc6154650c75550ed46d19c4e5b90e4f79b91d74739` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
