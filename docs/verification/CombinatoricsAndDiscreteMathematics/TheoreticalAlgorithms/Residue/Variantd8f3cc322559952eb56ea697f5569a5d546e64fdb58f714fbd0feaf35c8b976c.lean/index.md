# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Residue.Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c4cc52d8792be0d3c52bbd4304e83aa60936133",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c4cc52d8792be0d3c52bbd4304e83aa60936133`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidueAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/residueatom--bcb8bbe4344405aff1813eb4.md) | 7 | `declaration-track:bcb8bbe4344405aff1813eb435635eb2adc58ab9a21e14f13724ac48a36e6af2` |
| 2 | `def` | [ResidueAtom.key](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/residueatom-key--a9c9d0b2febc241863d007fe.md) | 22 | `declaration-track:a9c9d0b2febc241863d007fec1961b4265aff7f4bdeedac0957dc0f7771d173b` |
| 3 | `def` | [RequiredResidues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/requiredresidues--f348163bdbad010bfac47f4f.md) | 41 | `declaration-track:f348163bdbad010bfac47f4f4d16517b4abac80b96aef28508e2cf820ad833e8` |
| 4 | `theorem` | [RequiredResidues_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/requiredresidues-count--373a862e839eb61f32d44fd3.md) | 56 | `result-track:373a862e839eb61f32d44fd3d557559bb63ca364c66ea7c537e2c23509adbc17` |
| 5 | `theorem` | [RequiredResidues_complete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/requiredresidues-complete--8e770aea3608b89e2764c621.md) | 60 | `result-track:8e770aea3608b89e2764c621486a5ccbefcf3fdb261d8f6f0597ac89323a7956` |
| 6 | `structure` | [ResidueClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/residueclass--e4515433626a5f345cdfa204.md) | 64 | `declaration-track:e4515433626a5f345cdfa204e8bd4b6e2dbd3f419509cfa6eac0776e08e3fab1` |
| 7 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/zero--5a0c588cf1bd3bb0359e5174.md) | 71 | `declaration-track:5a0c588cf1bd3bb0359e5174a5346eedc59b076df84517e64677d1388471d0f5` |
| 8 | `def` | [ofAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/ofatom--ddb530e66b5d600e84a37212.md) | 74 | `declaration-track:ddb530e66b5d600e84a3721250bdc58210c7b593ba3ead713dbcc52597d40648` |
| 9 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/add--3470995cf3920b1643a0670e.md) | 77 | `declaration-track:3470995cf3920b1643a0670ecef610146826e6538afe94d181a29a53b3e57807` |
| 10 | `def` | [closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/closed--064fed9f725199faba3dd0ea.md) | 83 | `declaration-track:064fed9f725199faba3dd0ea2fc90611a0765a8b0043fbbbfe2648848e976f76` |
| 11 | `theorem` | [zero_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/zero-closed--117086f3bb08ac41fa8d96c7.md) | 86 | `result-track:117086f3bb08ac41fa8d96c7c6e34477403f21519fc16ae513d80cff8f4d9c93` |
| 12 | `structure` | [ResidueLedger](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/residueledger--f8c7cbf0d8ce5e2bd0f93306.md) | 92 | `declaration-track:f8c7cbf0d8ce5e2bd0f93306ba0d6d98b0b3c3b62d25636e696ea63feede760d` |
| 13 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/empty--0bc4c5b99713b5d97592a811.md) | 98 | `declaration-track:0bc4c5b99713b5d97592a811fad52f2107d5105cabb3c281030dbabace820540` |
| 14 | `def` | [emit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/emit--a76f53479cc02bb327f648dd.md) | 101 | `declaration-track:a76f53479cc02bb327f648dd9ebad7e12d600a00c49fc29d81da8d05687d2a1e` |
| 15 | `def` | [contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/contains--49db3b567a8cab3280c1f843.md) | 104 | `declaration-track:49db3b567a8cab3280c1f84377cbed99c78812b2d8e41ab842f5a3eaefe73976` |
| 16 | `theorem` | [emit_contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c.lean/declarations/emit-contains--629082d321d8e6b69df02357.md) | 107 | `result-track:629082d321d8e6b69df02357e3d848570c3720186e7ae033568093509bfd7a75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
