# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RasterSurgery.Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc9c85d13373ef49e33c46671b1d42acac6d672c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc9c85d13373ef49e33c46671b1d42acac6d672c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.ContinuousRaster` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Geometry.MeshSurgery` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointInMeshSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/declarations/pointinmeshsurgery--b8bb87f07dcd31c594e1980b.md) | 29 | `declaration-track:b8bb87f07dcd31c594e1980bd373f80724939dbfae31f94e79f81d8c746669ee` |
| 2 | `def` | [rasterFieldOnCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/declarations/rasterfieldoncell--be08570c4996b4787fd25a7f.md) | 42 | `declaration-track:be08570c4996b4787fd25a7f5f6f39696f19bf789fcfa4c986ea32933a123a10` |
| 3 | `structure` | [RasterSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/declarations/rastersurgery--ad412d8d4c435cda76cc1c35.md) | 56 | `declaration-track:ad412d8d4c435cda76cc1c35afe17887f2d35803bfd045dadbef0c2d75063a1f` |
| 4 | `theorem` | [vertex_charge_preserved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/declarations/vertex-charge-preserved--25c6641c3d8758c997309376.md) | 104 | `result-track:25c6641c3d8758c9973093760c580bdab35d3939aa93c1b5e20e10d62def5b7e` |
| 5 | `theorem` | [field_eq_outside_locus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/declarations/field-eq-outside-locus--d465d390554749b5fd7035ce.md) | 113 | `result-track:d465d390554749b5fd7035cee0d350bff55f3cda29b3e697122053b9ad23da2d` |
| 6 | `structure` | [ReversibleRasterSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/declarations/reversiblerastersurgery--f7a4e225704ed0acc75da361.md) | 124 | `declaration-track:f7a4e225704ed0acc75da361a1fac45482295464835f6c05a34ee3c6ec647737` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
