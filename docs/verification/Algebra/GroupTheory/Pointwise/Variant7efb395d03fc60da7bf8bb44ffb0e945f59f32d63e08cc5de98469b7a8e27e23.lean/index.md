# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06954a0544f0d7731733937207996bc834720cd5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06954a0544f0d7731733937207996bc834720cd5`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [image_smul_setₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/image-smul-set--bd0be3ad7f3874f62c708cd3.md) | 51 | `result-track:bd0be3ad7f3874f62c708cd3d83c85d4d6cd082646a02af032487b26d92d3272` |
| 2 | `theorem` | [Set.MapsTo.smul_setₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/set-mapsto-smul-set--cfc2036bbc59b41655538483.md) | 56 | `result-track:cfc2036bbc59b4165553848395e89088a26d38c0efd4ff01e7916f23c2f9f144` |
| 3 | `theorem` | [smul_preimage_set_subsetₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/smul-preimage-set-subset--2570269a5bbbbec734ccfeac.md) | 61 | `result-track:2570269a5bbbbec734ccfeacd9285d21a6a9341f1f7e5ad7d5f0227ae74c9b0c` |
| 4 | `theorem` | [preimage_smul_setₛₗ'](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/preimage-smul-set--5eaf2bae9fe2f199b2b3cd70.md) | 76 | `result-track:5eaf2bae9fe2f199b2b3cd70e08942bb1576e6900139f5367ef86ab35faf0406` |
| 5 | `theorem` | [preimage_smul_setₛₗ_of_isUnit_isUnit](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/preimage-smul-set-of-isunit-isunit--828cef3875d2403e570b7d9f.md) | 97 | `result-track:828cef3875d2403e570b7d9ff00c0e82c4fa3aa51ccec0d6c3557c983fa71bc2` |
| 6 | `theorem` | [IsUnit.preimage_smul_setₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/isunit-preimage-smul-set--05fda24126117f361edcc72c.md) | 109 | `result-track:05fda24126117f361edcc72c5ed89a4872b8c4653ce9de2f2f0e015a7155b367` |
| 7 | `theorem` | [MonoidHom.preimage_smul_setₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/monoidhom-preimage-smul-set--df163406b97b57f80f78c857.md) | 124 | `result-track:df163406b97b57f80f78c8579806ef5322f3d6e079cb8584eb4774332196874b` |
| 8 | `theorem` | [Group.preimage_smul_setₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/group-preimage-smul-set--57ee0553b47496b3e124da58.md) | 133 | `result-track:57ee0553b47496b3e124da58a45bd0929e93ebc4a699d6ec26e7482218e8bccc` |
| 9 | `theorem` | [image_smul_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/image-smul-set--5e16ee9af14656f6c35e57d9.md) | 148 | `result-track:5e16ee9af14656f6c35e57d90da2d9a8b390dbd9247034389e58aec541f5739e` |
| 10 | `theorem` | [smul_preimage_set_subset](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/smul-preimage-set-subset--24c744c4516711433d8153f7.md) | 152 | `result-track:24c744c4516711433d8153f72113e7d3466389c148cb2f8711abcb0a52658a5f` |
| 11 | `theorem` | [Set.MapsTo.smul_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/set-mapsto-smul-set--dbab0c4e43f980e3cd034ed0.md) | 162 | `result-track:dbab0c4e43f980e3cd034ed0864c2fe0ff96075d57c5ffe315bad5eb18894bdd` |
| 12 | `theorem` | [IsUnit.preimage_smul_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/isunit-preimage-smul-set--c0c3135f5e08ed6da230e382.md) | 169 | `result-track:c0c3135f5e08ed6da230e38228de6a62afe037402637bd85efecf2ca669cffed` |
| 13 | `theorem` | [Group.preimage_smul_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/declarations/group-preimage-smul-set--e6bef2c073c9a45dfb0f8227.md) | 183 | `result-track:e6bef2c073c9a45dfb0f822780feedaf699eb00d5d9e8ea5b8dc6e614a9875e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
