# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousPreimage.Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b98c2b2b3906903327a0efb779fe3728e547a6f3",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b98c2b2b3906903327a0efb779fe3728e547a6f3`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_measure_symmDiff_preimage_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean/declarations/tendsto-measure-symmdiff-preimage-nhds-zero--5169c021511c1830191d50b6.md) | 45 | `result-track:5169c021511c1830191d50b6f544cc6a6792cc9fb1dcdc79c7d21b4b1ea86157` |
| 2 | `theorem` | [isClosed_setOf_preimage_ae_eq](../../../../../mathematics/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean/declarations/isclosed-setof-preimage-ae-eq--46709cef4e51bd148d5b91b9.md) | 106 | `result-track:46709cef4e51bd148d5b91b96cde1153b3d1322b4413355bb7215097ca317047` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
