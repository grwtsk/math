# Verification target: GRWTSK.Analysis.MeasureTheory.Representation.Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff87857837695f11b64c0c802c21140dd55845f4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff87857837695f11b64c0c802c21140dd55845f4`.

Source path: `GRWTSK/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Sigmoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.CDF` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_measurable_map_eq_unitInterval_aux](../../../../../mathematics/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean/declarations/exists-measurable-map-eq-unitinterval-aux--f7afefb09429b21c41466c14.md) | 46 | `result-track:f7afefb09429b21c41466c14edf3fae9e6164f4af53a592e5e97708836c6d25b` |
| 2 | `theorem` | [exists_measurable_map_eq_unitInterval](../../../../../mathematics/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean/declarations/exists-measurable-map-eq-unitinterval--5dccc1e7f30d8feebfdb442f.md) | 111 | `result-track:5dccc1e7f30d8feebfdb442f0eabbfa941b3a826a84771972523b8ac2b621722` |
| 3 | `theorem` | [MeasureTheory.Measure.exists_measurable_map_eq](../../../../../mathematics/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean/declarations/measuretheory-measure-exists-measurable-map-eq--60f681e7ccb68be0db7ad108.md) | 126 | `result-track:60f681e7ccb68be0db7ad108dd28547f2439985365161c8d56342fc92ef4a2c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
