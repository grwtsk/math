# Verification target: GRWTSK.Topology.GeneralTopology.Bijection.Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f05f2f7a39672753dfafe2a50dff0f886f79fa49",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f05f2f7a39672753dfafe2a50dff0f886f79fa49`.

Source path: `GRWTSK/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Epistemology.Induction.Gluing` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ScaledContinuousBijection](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean/declarations/scaledcontinuousbijection--802c54071ea84dddb193b982.md) | 15 | `declaration-track:802c54071ea84dddb193b98227a839590e69e47db0ec271ce96e6bf48e04c543` |
| 2 | `theorem` | [continuous_bijection_scales](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean/declarations/continuous-bijection-scales--8b1187aad5cce363a9f40595.md) | 20 | `result-track:8b1187aad5cce363a9f405955dd47fb05b51a1a2952d98e9180f0beabcafd5a8` |
| 3 | `def` | [ScaledFiveLayerBijection](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean/declarations/scaledfivelayerbijection--bd68bafcbbe032918e12741b.md) | 26 | `declaration-track:bd68bafcbbe032918e12741b5e7e81ef86a7c46f4613f14ce06e85d753c19cb1` |
| 4 | `theorem` | [five_layer_bijection_scales](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean/declarations/five-layer-bijection-scales--b86bd2b8f03ed563a90b190f.md) | 31 | `result-track:b86bd2b8f03ed563a90b190f5bf1aa3908a53bcc91d6471ed71ab275a9fad05b` |
| 5 | `def` | [ScaledCategoricalObjectBijection](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean/declarations/scaledcategoricalobjectbijection--7d36cccb6804c1cd339c1e9e.md) | 37 | `declaration-track:7d36cccb6804c1cd339c1e9ef96be94afb8b0b1373582c99d39440405eada996` |
| 6 | `theorem` | [categorical_object_bijection_scales](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant4beac2afe49d54ac76015c0b71a5adfaeceef2d6593d7ebd49b727fb2eb10f81.lean/declarations/categorical-object-bijection-scales--d4a744e608e422689960b032.md) | 42 | `result-track:d4a744e608e422689960b03258f3bfbefc7d74011519cf1f1b08ad6df1eda0eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
