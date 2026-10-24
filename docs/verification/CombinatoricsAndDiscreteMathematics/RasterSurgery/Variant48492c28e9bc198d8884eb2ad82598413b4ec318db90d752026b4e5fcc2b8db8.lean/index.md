# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RasterSurgery.Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "836710659b78d7029a3899e4f1c804917c8561d6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `836710659b78d7029a3899e4f1c804917c8561d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.ContinuousRaster` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Geometry.MeshSurgery` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointInMeshSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean/declarations/pointinmeshsurgery--3e7200514e07e15d5c10bf6a.md) | 21 | `declaration-track:3e7200514e07e15d5c10bf6a3d145ba760bdc191703a4d10dc94cc95e5dd60a9` |
| 2 | `def` | [rasterFieldOnCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean/declarations/rasterfieldoncell--12863b0d0f6e494c810f20c7.md) | 34 | `declaration-track:12863b0d0f6e494c810f20c7d82ad2bdef16d8521c14de021c34b46403dd86fc` |
| 3 | `structure` | [RasterSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean/declarations/rastersurgery--527f9d0a35f97428af3bcf81.md) | 48 | `declaration-track:527f9d0a35f97428af3bcf81b69a5e072fe9dc42814a31ff408deb917c7c1c41` |
| 4 | `theorem` | [vertex_charge_preserved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean/declarations/vertex-charge-preserved--2d154e9f2b015db68e9147d2.md) | 96 | `result-track:2d154e9f2b015db68e9147d2fb15a5e562639c14eb65f5c6f3f551a0b50c7a8e` |
| 5 | `theorem` | [field_eq_outside_locus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean/declarations/field-eq-outside-locus--150773c4c341c20c12916ae8.md) | 105 | `result-track:150773c4c341c20c12916ae8dffa07d1e0eca2b995dd63bdf08bf5c5ec35de1d` |
| 6 | `structure` | [ReversibleRasterSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8.lean/declarations/reversiblerastersurgery--07c95b7bcdbbce7925e4373a.md) | 116 | `declaration-track:07c95b7bcdbbce7925e4373abdf7b80ee61ed24f16fe58bc5e579908917a7140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
