# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Small.Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71d02013f5603aea09344ac6fdd5ea1cccaf77f6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71d02013f5603aea09344ac6fdd5ea1cccaf77f6`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Cover.Over` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Sites.MorphismProperty` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite.InducedTopology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Over` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cover.toPresieveOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/cover-topresieveover--bb8dc26435a6f43485cd938c.md) | 41 | `declaration-track:bb8dc26435a6f43485cd938c8cf08b1b844c2c6f2462ad4d4f36ad20bdbbacfb` |
| 2 | `def` | [Cover.toPresieveOverProp](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/cover-topresieveoverprop--6105fbeb4d294cd9732980fb.md) | 45 | `declaration-track:6105fbeb4d294cd9732980fb2c95a0c0cabd8291c4ff7895341d3c603240a63b` |
| 3 | `lemma` | [Cover.overEquiv_generate_toPresieveOver_eq_ofArrows](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/cover-overequiv-generate-topresieveover-eq-ofarrows--8d50b5bdca82a4e61f7d7e72.md) | 49 | `result-track:8d50b5bdca82a4e61f7d7e72200ba579372b59c8adfc8a39f63fb6bf9ab27877` |
| 4 | `lemma` | [Cover.toPresieveOver_le_arrows_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/cover-topresieveover-le-arrows-iff--bb85987a1639b91e4017ad4a.md) | 63 | `result-track:bb85987a1639b91e4017ad4aebb25e9e22e297ad720378764d3a7e3ddd887027` |
| 5 | `def` | [overPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/overpretopology--0aca3113be344220448d636d.md) | 77 | `declaration-track:0aca3113be344220448d636d6f9ae4278ac71a60771847aa537856dc95487ed8` |
| 6 | `abbrev` | [overGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/overgrothendiecktopology--6dc9709b2c6fc6d21dd6a2eb.md) | 96 | `declaration-track:6dc9709b2c6fc6d21dd6a2ebd4089e14789f2ca3d1746d72d846751c71e6fa34` |
| 7 | `lemma` | [overGrothendieckTopology_eq_toGrothendieck_overPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/overgrothendiecktopology-eq-togrothendieck-overpretopology--01f7d6a0c3479d9be9b4e0a9.md) | 99 | `result-track:01f7d6a0c3479d9be9b4e0a9383641a605e956f7fb7c4db4169de0f4ce8cb132` |
| 8 | `lemma` | [mem_overGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/mem-overgrothendiecktopology--c23b62447c4bc21f6b07c242.md) | 117 | `result-track:c23b62447c4bc21f6b07c2428a7e50ab5aca1a24d0cc13ba95df97ddd90331cb` |
| 9 | `lemma` | [locallyCoverDense_of_le](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/locallycoverdense-of-le--c21fca6babfa261dec8ff7d2.md) | 130 | `result-track:c21fca6babfa261dec8ff7d272cfe6c007e0e4867a28660ecae1e30c8812b60d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/instance--c89b94e79fa27b43aff85c5c.md) | 144 | `declaration-track:c89b94e79fa27b43aff85c5c4c985e323aac06663bf3ec3d4358f6e91ae57759` |
| 11 | `abbrev` | [smallGrothendieckTopologyOfLE](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/smallgrothendiecktopologyofle--ef6d839852bd761620921a7d.md) | 150 | `declaration-track:ef6d839852bd761620921a7d9d4a7f32e40de32c2655c1ce8e5c4144fb78e582` |
| 12 | `abbrev` | [smallGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/smallgrothendiecktopology--978c44a75aa10b53bdf7febf.md) | 160 | `declaration-track:978c44a75aa10b53bdf7febf5e52800e30ad0ec89eefdae2e94a59dabda08513` |
| 13 | `def` | [smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/smallpretopology--dcc77ca7cf7e059c6d986e57.md) | 169 | `declaration-track:dcc77ca7cf7e059c6d986e57186618936a2424274947cab81fdc29d3de257158` |
| 14 | `lemma` | [smallGrothendieckTopologyOfLE_eq_toGrothendieck_smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/smallgrothendiecktopologyofle-eq-togrothendieck-smallpretopology--658d1e12f921435c6b83af9b.md) | 193 | `result-track:658d1e12f921435c6b83af9b7360f0fca26a1308595865ebeda52d1f4d74e45c` |
| 15 | `lemma` | [smallGrothendieckTopology_eq_toGrothendieck_smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/smallgrothendiecktopology-eq-togrothendieck-smallpretopology--8afbfc1ee49b828e4e7cdb14.md) | 215 | `result-track:8afbfc1ee49b828e4e7cdb14c936f3facc1d155def8262b6996db883357d2e02` |
| 16 | `lemma` | [mem_toGrothendieck_smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/mem-togrothendieck-smallpretopology--c2a17999f5b65ab3880e5503.md) | 221 | `result-track:c2a17999f5b65ab3880e55035c33ec3da6cd7b0b21926e586c2cb9c475ea166b` |
| 17 | `lemma` | [mem_smallGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/declarations/mem-smallgrothendiecktopology--753b74b55880e0754f150100.md) | 249 | `result-track:753b74b55880e0754f150100051a7cb9c6677c4fbeccb6f44ea1d140e272ddf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
