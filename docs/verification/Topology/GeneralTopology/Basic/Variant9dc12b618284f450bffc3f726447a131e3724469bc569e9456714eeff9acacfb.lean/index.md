# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "819a1d713f60177fd85bfaf6eaafe779e78f3073",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `819a1d713f60177fd85bfaf6eaafe779e78f3073`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ExtremallyDisconnected` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Projective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Stonean](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/stonean--6b8dcad9d1830e9238e484e8.md) | 41 | `declaration-track:6b8dcad9d1830e9238e484e891ae5bf1c8b0a11bd0dfba7430afae060b83ef87` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--47e6fb17d27ab71b15bd4c72.md) | 50 | `declaration-track:47e6fb17d27ab71b15bd4c72e5ce794b60c78ac5b69df7c815aa361c6813b1fb` |
| 3 | `def` | [toStonean](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/tostonean--e1aebb6fa84c9dcdd30bc56d.md) | 72 | `declaration-track:e1aebb6fa84c9dcdd30bc56d9ca0811ca21f288938d5bf8fbb5da8f3c683fef1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--212fb60ddffe978d33fc9ffb.md) | 81 | `declaration-track:212fb60ddffe978d33fc9ffbd000a424ac7f32bca28dbf95bcee89c915a98c39` |
| 5 | `def` | [toCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/tocomphaus--6c9edd335acd14464d01f88d.md) | 86 | `declaration-track:6c9edd335acd14464d01f88dd7a7ee898d1cc9e04d45b4a6c457299b2d886848` |
| 6 | `def` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/of--0f419d0d95c3846dede6ff68.md) | 92 | `declaration-track:0f419d0d95c3846dede6ff684570f1e51ab1fe3eedcab5ec71b7ec90573bd953` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--67b7e4c7a39933e536cf4895.md) | 97 | `declaration-track:67b7e4c7a39933e536cf4895e123855a0282605ce3002ffb3c56f926e458a38a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--e5e519d37aaf5832478f4205.md) | 101 | `declaration-track:e5e519d37aaf5832478f420510d2bcba21031184e4e6b3a0921cf868d55d3210` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--8469276f9e94ffaf87b8ac8c.md) | 104 | `declaration-track:8469276f9e94ffaf87b8ac8c6bf93b7f927a08244e151bdd25957da8de5ba3ac` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--6e927abf26c955ff240f2f44.md) | 107 | `declaration-track:6e927abf26c955ff240f2f4421f80ec83b29b485fbf2f7f15b73353219ff5630` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--f003bd2af56ca04614dd420c.md) | 108 | `declaration-track:f003bd2af56ca04614dd420c20d2b68da779f11ad89c0de03892717b2e51fb01` |
| 12 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/insttopologicalspace--2649d4e5be8e90fb6bdee10a.md) | 111 | `declaration-track:2649d4e5be8e90fb6bdee10a43a158f4519749b74a2c1a2726d21e4e7cb970ff` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--6f05616552529cd40fff35be.md) | 115 | `declaration-track:6f05616552529cd40fff35be9a1bc1c54ac5fc0dda51d82a245ec8bd53a7a3fb` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--edc0d50a2a5d5d6b57e9d6dd.md) | 119 | `declaration-track:edc0d50a2a5d5d6b57e9d6dddbae3bbc24853840d15cabb653921f7b94f60151` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--bba9f6a8c57878da1eae74e7.md) | 122 | `declaration-track:bba9f6a8c57878da1eae74e7cfeff9bcec3b16183dec0ce30d921c24f5156147` |
| 16 | `def` | [toProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/toprofinite--554f21a1015af05d2f4003f9.md) | 127 | `declaration-track:554f21a1015af05d2f4003f98714a1720fdfa25b369a0820a39fe4b124c0bfb7` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--23bdbb03efe121737802194c.md) | 134 | `declaration-track:23bdbb03efe121737802194c921493486294942f96046b9c59b77575c571696a` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--f4435fa726a57283c4642dd8.md) | 138 | `declaration-track:f4435fa726a57283c4642dd80f78570d41cbe10b4fac4090d8eb67df86503626` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/example--ced31bf7abe83b168e4759e5.md) | 142 | `declaration-track:ced31bf7abe83b168e4759e53bc67cc5e5948461c1979549feb2169bf49661ee` |
| 20 | `def` | [isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/isoofhomeo--c9e07b0f8ad169d93a7e6ba4.md) | 148 | `declaration-track:c9e07b0f8ad169d93a7e6ba44cc387b69810782d4583a635a900ddced78af7c1` |
| 21 | `def` | [homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/homeoofiso--32c38bca57daa558565ded04.md) | 154 | `declaration-track:32c38bca57daa558565ded049434be27568c27da20aa3fc6d018e25784846f52` |
| 22 | `def` | [isoEquivHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/isoequivhomeo--e1c78bf597a2cc19bde0595a.md) | 160 | `declaration-track:e1c78bf597a2cc19bde0595ac929b0fd9fdbf7ddaafe80a6fa0054b6bb391b51` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/instance--cc98c8fdc1629ed926dfab74.md) | 167 | `declaration-track:cc98c8fdc1629ed926dfab74317497632ecdc5beb48561ba7fc34a4e8cfcfb46` |
| 24 | `def` | [presentation](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/presentation--b4cee45e0073f05a637914e6.md) | 186 | `declaration-track:b4cee45e0073f05a637914e635b49ed7e110ba7c87ce1cef943828c03ae46523` |
| 25 | `def` | [presentation.π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/presentation--c43d4f851bf53a0870f4f091.md) | 201 | `declaration-track:c43d4f851bf53a0870f4f0911bf5715aeb1146d7c7e1e8fb6d7bd526a0a581f4` |
| 26 | `instance` | [presentation.epi_π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/presentation-epi--81e38d2fd8500c7cbf7e7f48.md) | 206 | `declaration-track:81e38d2fd8500c7cbf7e7f48b6a532c4d80bc54d1428b36eaf2357af9d349f6a` |
| 27 | `def` | [lift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/lift--a6b2c72835439ec9e5877fbd.md) | 223 | `declaration-track:a6b2c72835439ec9e5877fbde5bb74f107d894bc0b4d7ba47e8c0d66e5424eaa` |
| 28 | `lemma` | [lift_lifts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/lift-lifts--f35e137a3259d68557a9fee1.md) | 228 | `result-track:f35e137a3259d68557a9fee1fb63365c52489201685b68c5baabcb798cb834bd` |
| 29 | `lemma` | [Gleason](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/declarations/gleason--316e42ac6ea479a5c08a1341.md) | 231 | `result-track:316e42ac6ea479a5c08a1341000b45c98d7d4b539df7bd4763b264d6931538a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
