# Verification target: GRWTSK.Topology.GeneralTopology.DiscreteSubset.Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "652edc9a4f1f2f81b360624c0b9081502aee2fad",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `652edc9a4f1f2f81b360624c0b9081502aee2fad`.

Source path: `GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.SubsetProperties` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_cofinite_cocompact_iff](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean/declarations/tendsto-cofinite-cocompact-iff--c533058ce2e18928f8b3038e.md) | 33 | `result-track:c533058ce2e18928f8b3038e4705a879fd7ac13ab787fbdef3476d176bea28ff` |
| 2 | `lemma` | [Continuous.discrete_of_tendsto_cofinite_cocompact](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean/declarations/continuous-discrete-of-tendsto-cofinite-cocompact--62d216957f086e51f724eb32.md) | 39 | `result-track:62d216957f086e51f724eb32cb30c16b17f9f9d14f4688d1fde83ba832978e37` |
| 3 | `lemma` | [tendsto_cofinite_cocompact_of_discrete](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean/declarations/tendsto-cofinite-cocompact-of-discrete--ee9fe3176d22b8299bf8a06a.md) | 49 | `result-track:ee9fe3176d22b8299bf8a06a701c8b5671cee32021657bea6f54ea36ac007acb` |
| 4 | `lemma` | [IsClosed.tendsto_coe_cofinite_of_discreteTopology](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean/declarations/isclosed-tendsto-coe-cofinite-of-discretetopology--81f8daf52522b144ddb68332.md) | 55 | `result-track:81f8daf52522b144ddb683324599f328168eea1c108339a4843df66c489d1e56` |
| 5 | `lemma` | [IsClosed.tendsto_coe_cofinite_iff](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean/declarations/isclosed-tendsto-coe-cofinite-iff--9b68120c0ad06ecc87bec38a.md) | 60 | `result-track:9b68120c0ad06ecc87bec38ab49c22d8207bda3809efc7cb074ca05c06b481ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
