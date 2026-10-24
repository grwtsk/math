# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b0a5ed825fffdef8fd4daf06fa0e7d14c59dc74",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b0a5ed825fffdef8fd4daf06fa0e7d14c59dc74`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_list_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean/declarations/range-list-map--a157ddf362f50e72b184381f.md) | 30 | `result-track:a157ddf362f50e72b184381fcd68470fef29721ee63d4a54d18c4d1054d5dd68` |
| 2 | `theorem` | [range_list_map_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean/declarations/range-list-map-coe--f7da34d01f06f2c5ff1a14f7.md) | 40 | `result-track:f7da34d01f06f2c5ff1a14f714305140c98d0ca9d0219bf38633ccc85a34db0e` |
| 3 | `theorem` | [range_list_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean/declarations/range-list-get--9e8d07035818b83ddf93e743.md) | 44 | `result-track:9e8d07035818b83ddf93e743f03af790764d5dd1b7b9342e17d2d3325df3cb02` |
| 4 | `theorem` | [range_list_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean/declarations/range-list-getelem--e526c4d716470745ac7e01e3.md) | 48 | `result-track:e526c4d716470745ac7e01e3539b2dbefc6eb9e6b72984182d4ac62b486c44f6` |
| 5 | `theorem` | [range_list_getD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean/declarations/range-list-getd--0d43490bbf8c8ab6ec79e7e0.md) | 60 | `result-track:0d43490bbf8c8ab6ec79e7e08fb93ca76dd75de77af02b975e7f450f88425e3f` |
| 6 | `theorem` | [range_list_getI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean/declarations/range-list-geti--0dacb877ad2ea4278fbd5b66.md) | 69 | `result-track:0dacb877ad2ea4278fbd5b6658da6a5b23135987280c875757238828b91baae8` |
| 7 | `instance` | [List.canLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9b6794a857542da7546ae34aab2467368942a0a2f40b310cdf98e501db1f47b5.lean/declarations/list-canlift--b02808c27607d03dabb2b842.md) | 78 | `declaration-track:b02808c27607d03dabb2b8424c27bd8d21277a42fbfea6e63cf2c496eed0ad29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
