# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Phase.Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d11231a0be1ed74e489ed39d14888919fd3a01c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d11231a0be1ed74e489ed39d14888919fd3a01c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Residue` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Phase3](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3--a0b34c49dd47f5192dd096fb.md) | 17 | `declaration-track:a0b34c49dd47f5192dd096fb72b8470d0ded1ca01e30480540ee0657d10b104c` |
| 2 | `def` | [Phase3.mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-mul--f921c2384eddbe62e09ed389.md) | 22 | `declaration-track:f921c2384eddbe62e09ed389f88dcfc3e26f7c980550c474b16af633716f4c10` |
| 3 | `def` | [Phase3.act](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-act--2050c559acb6be4956d0dd1e.md) | 28 | `declaration-track:2050c559acb6be4956d0dd1e9e3927e6b7fc7fa9ad8f06c436b480d21165c751` |
| 4 | `theorem` | [phase3_mul_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-mul-assoc--3deee99ac1d0aed2c6b77feb.md) | 33 | `result-track:3deee99ac1d0aed2c6b77febee58ef559fc7869db300753da63abaf97ddeeff0` |
| 5 | `theorem` | [phase3_identity_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-identity-left--08960675837066b8b25343b3.md) | 44 | `result-track:08960675837066b8b25343b32ac8054aadd67e93ab10b626cb972545fa2e8bd9` |
| 6 | `theorem` | [phase3_identity_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-identity-right--cf659cd6ae4fbf70b2a7da67.md) | 50 | `result-track:cf659cd6ae4fbf70b2a7da67454f552f9e2d2688fa63d0d9dca9c29282c1636c` |
| 7 | `theorem` | [phase3_reflect_square](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-reflect-square--72ae58bcdf8fd7ffc2f53f17.md) | 56 | `result-track:72ae58bcdf8fd7ffc2f53f177412090fca8ab824247839f68547a5b83a5ac349` |
| 8 | `theorem` | [phase3_action_preserves_safe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-action-preserves-safe--71ae57b2e6696e64d67089c3.md) | 61 | `result-track:71ae57b2e6696e64d67089c3e126052fcc115f617f6579d0dc5a50910793e0c1` |
| 9 | `theorem` | [phase3_mul_act](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-mul-act--42810ca657f49f23333509ef.md) | 73 | `result-track:42810ca657f49f23333509ef9f1468657b0d2ff8b21c85a438008366632f3dbc` |
| 10 | `theorem` | [phase3_reflect_act](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-reflect-act--d3a6bcd4e06586b859fda029.md) | 83 | `result-track:d3a6bcd4e06586b859fda029c872ca14c2686e5ae3c86dd51922996960669042` |
| 11 | `theorem` | [phase3_act_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-act-zero--2ecf8e54f5cb1fc5deea8761.md) | 90 | `result-track:2ecf8e54f5cb1fc5deea87618a158a1c06bcf0c50669be3c2aff9fee89170b23` |
| 12 | `theorem` | [phase3_safe_action_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variantbf0f3c994b134d4bf9ad55d5fe31ec88632b5cf588e82653bfd8e5bf44319fb1.lean/declarations/phase3-safe-action-ne-zero--86c073667edf0b2cdc98a6bd.md) | 95 | `result-track:86c073667edf0b2cdc98a6bd379607284b0fe16fd78b3f35924792b1e111b56f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
