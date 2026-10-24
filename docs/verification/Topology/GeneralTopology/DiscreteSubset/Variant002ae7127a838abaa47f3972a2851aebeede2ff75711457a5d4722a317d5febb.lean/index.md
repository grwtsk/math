# Verification target: GRWTSK.Topology.GeneralTopology.DiscreteSubset.Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74b4867ddb19a6e8dc2adaad93e8891b3f6e4c2a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74b4867ddb19a6e8dc2adaad93e8891b3f6e4c2a`.

Source path: `GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.SubsetProperties` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_cofinite_cocompact_iff](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean/declarations/tendsto-cofinite-cocompact-iff--e23aee6031de53361f087edf.md) | 41 | `result-track:e23aee6031de53361f087edf56ef08b6eb329469fb534335c59332f3dae7a785` |
| 2 | `lemma` | [Continuous.discrete_of_tendsto_cofinite_cocompact](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean/declarations/continuous-discrete-of-tendsto-cofinite-cocompact--7aa1220ba301f96e319a9ed5.md) | 47 | `result-track:7aa1220ba301f96e319a9ed5b5b6737b5e165a1d5f6d150ca5f20250d2412caa` |
| 3 | `lemma` | [tendsto_cofinite_cocompact_of_discrete](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean/declarations/tendsto-cofinite-cocompact-of-discrete--6fffc7cbe8c02e29aa724e2e.md) | 57 | `result-track:6fffc7cbe8c02e29aa724e2e05574063540f5656c58f53dfaa7fba5a19ce1a54` |
| 4 | `lemma` | [IsClosed.tendsto_coe_cofinite_of_discreteTopology](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean/declarations/isclosed-tendsto-coe-cofinite-of-discretetopology--245a474ac21a2472f292e81b.md) | 63 | `result-track:245a474ac21a2472f292e81bbe25f6faef0909bd7d4c79ebea9d850fa06d0603` |
| 5 | `lemma` | [IsClosed.tendsto_coe_cofinite_iff](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean/declarations/isclosed-tendsto-coe-cofinite-iff--47b605a2c44b7e11b0cb569a.md) | 68 | `result-track:47b605a2c44b7e11b0cb569a7c9ca95a4adee2dbbbe027c077e856cfa13a7ecd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
