# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OfMap.Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd7fb1d2d991b28beadee05a8163a9fdd62d5a26",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd7fb1d2d991b28beadee05a8163a9fdd62d5a26`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Image` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/ofmultiset--f60c87480689fc850bb21a1f.md) | 36 | `declaration-track:f60c87480689fc850bb21a1fed9112f5c4be1dbf7f30d7f29bd7def8e5b3d20f` |
| 2 | `def` | [ofList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/oflist--140afd8347224a7300eb6cf3.md) | 40 | `declaration-track:140afd8347224a7300eb6cf311a30a0fd453c005fe6008cdbcf99bcf7a9f11ee` |
| 3 | `def` | [ofBijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/ofbijective--011a4dd19e37d21ea4ce8131.md) | 44 | `declaration-track:011a4dd19e37d21ea4ce813144c650be25cdc59fcc6d471af61a570adef41b37` |
| 4 | `def` | [ofSurjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/ofsurjective--2c948b8e9d0f8219fa629752.md) | 50 | `declaration-track:2c948b8e9d0f8219fa62975281af5a6cf8c21e0d6eab6cd55d0f86117c889ed8` |
| 5 | `def` | [ofInjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/ofinjective--1843f2af62446882b56c7038.md) | 58 | `declaration-track:1843f2af62446882b56c703851c4eb4135d2ec8a224b7af60009c82e305f2795` |
| 6 | `def` | [ofEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/ofequiv--e318a89abcdea1a5423a86a7.md) | 66 | `declaration-track:e318a89abcdea1a5423a86a7319a6a959c10dcd71f9102db5377625c604c6ac4` |
| 7 | `def` | [ofSubsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/ofsubsingleton--f3d4f58130ca79863ed90102.md) | 70 | `declaration-track:f3d4f58130ca79863ed90102eccd890e1813bce4b52225124c0a807cbe802e51` |
| 8 | `theorem` | [univ_ofSubsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/univ-ofsubsingleton--728f5accf4bb8e4eb4406c17.md) | 75 | `result-track:728f5accf4bb8e4eb4406c170cc651080e1fc81f3245f12a55363b9b64c89bbc` |
| 9 | `def` | [ofIsEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/ofisempty--c632d4a5bbd3eaa36397de47.md) | 80 | `declaration-track:c632d4a5bbd3eaa36397de476f3560041e7022bde283ee08489a071694eedb9c` |
| 10 | `theorem` | [univ_ofIsEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/univ-ofisempty--80f40265d36d836857432ae8.md) | 85 | `result-track:80f40265d36d836857432ae8e23264cf0f1dbb9b2df0df69a5caab32a9dd54ad` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/instance--7b8124f26cc760e43849d97d.md) | 88 | `declaration-track:7b8124f26cc760e43849d97d7899733ec82746efb0a54c6597181b4fe5410efa` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OfMap/Variant64183b64ca18c0ef2383ce70e2ebdc0edd17810c57af9bcfea0f73d44778811f.lean/declarations/instance--b5c2064787d49f32ec3c2674.md) | 89 | `declaration-track:b5c2064787d49f32ec3c2674a5bbc8e15894d1bc78fd981ec62d337b532d49de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
