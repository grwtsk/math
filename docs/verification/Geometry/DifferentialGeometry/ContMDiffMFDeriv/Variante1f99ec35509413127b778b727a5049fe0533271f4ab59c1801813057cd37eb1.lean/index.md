# Verification target: GRWTSK.Geometry.DifferentialGeometry.ContMDiffMFDeriv.Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `559d4d74dc5cc61540c8e679e6929a4787b6f381`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.Tangent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiffMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Hom` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContMDiffWithinAt.mfderivWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiffwithinat-mfderivwithin--cff608fdd4ea7114dc611ffa.md) | 66 | `result-track:cff608fdd4ea7114dc611ffa981b063dbf0dd0dd9cc2a30f0c9f0a341d319692` |
| 2 | `theorem` | [ContMDiffWithinAt.mfderivWithin_const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiffwithinat-mfderivwithin-const--fa80e6bf557217515a832f59.md) | 197 | `result-track:fa80e6bf557217515a832f59ccc8426246a47a16d25509166adb4b803befe2a5` |
| 3 | `theorem` | [ContMDiffWithinAt.mfderivWithin_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiffwithinat-mfderivwithin-apply--b4675920098e2488b8e22c31.md) | 214 | `result-track:b4675920098e2488b8e22c315c0b49bcc272643f7d4bb9701e88b08e8e5dfe87` |
| 4 | `theorem` | [ContMDiffAt.mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiffat-mfderiv--64fe31cba2c1f3fa3bfcfad9.md) | 232 | `result-track:64fe31cba2c1f3fa3bfcfad976447118423c91dae909dbdbcd70a610bfab3b38` |
| 5 | `theorem` | [ContMDiffAt.mfderiv_const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiffat-mfderiv-const--7d4b50f26e959dc3a7e8d8c1.md) | 250 | `result-track:7d4b50f26e959dc3a7e8d8c12d82b08aa9e31ac12b9e39271ca01e40d6e1aec4` |
| 6 | `theorem` | [ContMDiffAt.mfderiv_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiffat-mfderiv-apply--5583cde0a7d7a77a80dee443.md) | 265 | `result-track:5583cde0a7d7a77a80dee44301f54a5678056b9fa99574917b141a5e4462b076` |
| 7 | `theorem` | [ContMDiffOn.contMDiffOn_tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiffon-contmdiffon-tangentmapwithin--f9b931a0ec33c4b854d26915.md) | 284 | `result-track:f9b931a0ec33c4b854d26915664709ebedffb28a358687c6dc5ee0f8d1a30c46` |
| 8 | `theorem` | [ContMDiffOn.continuousOn_tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiffon-continuouson-tangentmapwithin--a8194811200bb8361043e990.md) | 315 | `result-track:a8194811200bb8361043e990116f95a7872cde91f6c05cee1b360f4d9bd82386` |
| 9 | `theorem` | [ContMDiff.contMDiff_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiff-contmdiff-tangentmap--38d941965642d59ff8e10854.md) | 324 | `result-track:38d941965642d59ff8e108546113e2aeb42c6c6bae7f6e9f0a5d09eac0dec04a` |
| 10 | `theorem` | [ContMDiff.continuous_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiff-continuous-tangentmap--a64dd40b5a70cecfe32cad8d.md) | 331 | `result-track:a64dd40b5a70cecfe32cad8d7771dc57d46b8e437d308f6d4e35fff9fa143235` |
| 11 | `theorem` | [tangentMap_tangentBundle_pure](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/tangentmap-tangentbundle-pure--dd604e07800d74f43dc69400.md) | 360 | `result-track:dd604e07800d74f43dc694001ee57ada532dd3e81be27d927bfad373b63c8bcf` |
| 12 | `theorem` | [mdifferentiable'](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/mdifferentiable--0cee4dfc91231836a4a0c44f.md) | 401 | `result-track:0cee4dfc91231836a4a0c44f69d260182daf31609dcc12387aebac3342163e86` |
| 13 | `theorem` | [mdifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/mdifferentiable--f4a110c058f654a387539980.md) | 404 | `result-track:f4a110c058f654a38753998034459eb3b6b79573135418c5e40df06bec69819d` |
| 14 | `theorem` | [mdifferentiableAt](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/mdifferentiableat--e860b9b402bb4f8d91f5defd.md) | 407 | `result-track:e860b9b402bb4f8d91f5defd0efd6ac64907689e1f0eb5cb6d8b609298ab40f0` |
| 15 | `def` | [equivTangentBundleProd](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/equivtangentbundleprod--3bbf56e62ee264e217c9270a.md) | 417 | `declaration-track:3bbf56e62ee264e217c9270aef3215cb07320990ca8f76a6c383009d2d6a4245` |
| 16 | `lemma` | [equivTangentBundleProd_eq_tangentMap_prod_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/equivtangentbundleprod-eq-tangentmap-prod-tangentmap--9e667f4118305fd206e3de1b.md) | 424 | `result-track:9e667f4118305fd206e3de1b0e79171a97b8e7137fcd75db58a228b0055a7da0` |
| 17 | `lemma` | [contMDiff_equivTangentBundleProd](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiff-equivtangentbundleprod--f6946f54a03810da0bf81460.md) | 433 | `result-track:f6946f54a03810da0bf8146093366d6d537dba1f9bb9d314c599316ae7af857a` |
| 18 | `lemma` | [contMDiff_equivTangentBundleProd_symm](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/declarations/contmdiff-equivtangentbundleprod-symm--a50fb6e3cb2243dc2ad8a44e.md) | 442 | `result-track:a50fb6e3cb2243dc2ad8a44e54ff7f07c133d698aabed3267671c25482711382` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
