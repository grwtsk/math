# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a305ecab8bbfacdf9314f95616d931c04c2d218",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a305ecab8bbfacdf9314f95616d931c04c2d218`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [image_smul_setₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/image-smul-set--d36ef38f9d01b843d135aeca.md) | 43 | `result-track:d36ef38f9d01b843d135aecafb1faf8e3de413d434e4d1bd50cf69352db20f84` |
| 2 | `theorem` | [Set.MapsTo.smul_setₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/set-mapsto-smul-set--d7581b494abe23384dd70250.md) | 48 | `result-track:d7581b494abe23384dd70250814d20aeb60ba3bafdf2f8a3a48e97b1a8c6a007` |
| 3 | `theorem` | [smul_preimage_set_subsetₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/smul-preimage-set-subset--93731f7d5813f65db6822009.md) | 53 | `result-track:93731f7d5813f65db682200957658642f3839e1b43326fe82124280db5f7a7ec` |
| 4 | `theorem` | [preimage_smul_setₛₗ'](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/preimage-smul-set--c40d7873679da04e57ba578f.md) | 68 | `result-track:c40d7873679da04e57ba578f1bd20ce0d5a971c291cd4d0918b3894f451186f2` |
| 5 | `theorem` | [preimage_smul_setₛₗ_of_isUnit_isUnit](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/preimage-smul-set-of-isunit-isunit--bc7494a173660a14d060e908.md) | 89 | `result-track:bc7494a173660a14d060e9085406466eb30ac6a78b4457fdac61ae1138cdf0a5` |
| 6 | `theorem` | [IsUnit.preimage_smul_setₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/isunit-preimage-smul-set--335cb9e61e70d0ab4cc64a0b.md) | 101 | `result-track:335cb9e61e70d0ab4cc64a0b80f0aa6db0db8029b16c954d35516ed9f84dc4a8` |
| 7 | `theorem` | [MonoidHom.preimage_smul_setₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/monoidhom-preimage-smul-set--c7bee643abaaaaf410d4be72.md) | 116 | `result-track:c7bee643abaaaaf410d4be7200a1e824132e68cb71ffdc91cbc65b8aaadb149f` |
| 8 | `theorem` | [Group.preimage_smul_setₛₗ](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/group-preimage-smul-set--0472af39de3d6d147a9f9917.md) | 125 | `result-track:0472af39de3d6d147a9f99178e089d35df7387c8c442f2acbeaf53b2f1ad28f9` |
| 9 | `theorem` | [image_smul_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/image-smul-set--61a71aaa5c377b1a63ac0751.md) | 140 | `result-track:61a71aaa5c377b1a63ac0751ef243ed0f07908967fbc472a65b606ee464c040b` |
| 10 | `theorem` | [smul_preimage_set_subset](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/smul-preimage-set-subset--ae593146ffba4072cfc3fb91.md) | 144 | `result-track:ae593146ffba4072cfc3fb91462346cdd58b86d18fe1fb2f9d47bbd2fb3854a6` |
| 11 | `theorem` | [Set.MapsTo.smul_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/set-mapsto-smul-set--320d68959aaf71f1dffd0416.md) | 154 | `result-track:320d68959aaf71f1dffd04162106852590f94cad6275956fbc08d9a84ccc5bdb` |
| 12 | `theorem` | [IsUnit.preimage_smul_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/isunit-preimage-smul-set--7596797e54ab661908bf289e.md) | 161 | `result-track:7596797e54ab661908bf289ee444015d24411b39db4a8b85626ed36bec2e1c7f` |
| 13 | `theorem` | [Group.preimage_smul_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/declarations/group-preimage-smul-set--d07bb1bfd870655f093515ee.md) | 175 | `result-track:d07bb1bfd870655f093515eeffd05c0906270d8b6fda586d86cb1adfd0b3bd92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
