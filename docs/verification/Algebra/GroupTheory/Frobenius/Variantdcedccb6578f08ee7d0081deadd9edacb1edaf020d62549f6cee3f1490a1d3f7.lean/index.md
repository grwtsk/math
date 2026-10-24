# Verification target: GRWTSK.Algebra.GroupTheory.Frobenius.Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "019f3d985ebcb0f013f2fabfe244987b23b3e24f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `019f3d985ebcb0f013f2fabfe244987b23b3e24f`.

Source path: `GRWTSK/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [frobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/frobenius-def--db6f8f73c87c523e49f7981b.md) | 32 | `result-track:db6f8f73c87c523e49f7981bfe63feff28fcd368f1ac3b59a22e534f4eadf394` |
| 2 | `lemma` | [iterateFrobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/iteratefrobenius-def--30beafb2db8352e0a6c8f1e2.md) | 34 | `result-track:30beafb2db8352e0a6c8f1e24722a841ebe3dab4dd319093e7339208ed4eb872` |
| 3 | `lemma` | [iterate_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/iterate-frobenius--5213dfe64bf45d598b961746.md) | 36 | `result-track:5213dfe64bf45d598b961746ef395f96d7a36cf7a76637c336a8f74580b33bea` |
| 4 | `lemma` | [iterateFrobenius_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/iteratefrobenius-eq-pow--cd16e3220bb45db3ff076ab1.md) | 40 | `result-track:cd16e3220bb45db3ff076ab13fcaf4aa4863825789a8b9e877e9637d4f458ebb` |
| 5 | `lemma` | [coe_iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/coe-iteratefrobenius--af3db746a29ae57e9c957211.md) | 43 | `result-track:af3db746a29ae57e9c9572114592e41a8a1ec0277ea3544746df94827fb64810` |
| 6 | `lemma` | [iterateFrobenius_one_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/iteratefrobenius-one-apply--deee91b1c68f239df2746cc8.md) | 46 | `result-track:deee91b1c68f239df2746cc8ab6785d71fc34873a487202055f76ef7c5b1556c` |
| 7 | `lemma` | [iterateFrobenius_one](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/iteratefrobenius-one--c6face1191527627dd9056d7.md) | 50 | `result-track:c6face1191527627dd9056d77be2442a3919d9231b98a941b102d12b53598942` |
| 8 | `lemma` | [iterateFrobenius_zero_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/iteratefrobenius-zero-apply--685a5b42dc3f1664cef6f8df.md) | 53 | `result-track:685a5b42dc3f1664cef6f8dfb6f951e6682bfd0e69a19b05411c6bf6d61ad24f` |
| 9 | `lemma` | [iterateFrobenius_zero](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/iteratefrobenius-zero--df48130d231f24bb15477d96.md) | 57 | `result-track:df48130d231f24bb15477d96d1cadf723975ca0d7b58616579220087a10417d5` |
| 10 | `lemma` | [iterateFrobenius_add_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/iteratefrobenius-add-apply--a78b4d4a8da14052f9968715.md) | 60 | `result-track:a78b4d4a8da14052f996871505b37580457fdbb2cc144f3933f83c317fc261d2` |
| 11 | `lemma` | [iterateFrobenius_add](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/iteratefrobenius-add--78f559dd3c7e2cd6d758fc0a.md) | 64 | `result-track:78f559dd3c7e2cd6d758fc0af6279157f3565fe45fa41cd78b8d3b2fc4a290a9` |
| 12 | `lemma` | [iterateFrobenius_mul_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/iteratefrobenius-mul-apply--4aa8d72f83cf36a7638e2297.md) | 68 | `result-track:4aa8d72f83cf36a7638e2297d62fa19fdd97f64d327d6d80ef627e47cb6b8c43` |
| 13 | `lemma` | [coe_iterateFrobenius_mul](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/coe-iteratefrobenius-mul--56ae75663b020334b051c126.md) | 72 | `result-track:56ae75663b020334b051c126cfdc06bb9b6fb4dae0ab98476621e2dffb39157d` |
| 14 | `lemma` | [MonoidHom.map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/monoidhom-map-frobenius--ff939e8c13894437a46df097.md) | 77 | `result-track:ff939e8c13894437a46df097f0e86ba4d53b411b543cf9e98ff9dd1d17e6842b` |
| 15 | `lemma` | [RingHom.map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/ringhom-map-frobenius--f3126668e8f1892552abeb3f.md) | 78 | `result-track:f3126668e8f1892552abeb3f6ab78db4b39a2f5a9a9eea2ba10ab5d75407e4f6` |
| 16 | `lemma` | [MonoidHom.map_iterate_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/monoidhom-map-iterate-frobenius--872e2ce39b6919bee65e4cad.md) | 80 | `result-track:872e2ce39b6919bee65e4cad61c75d7e084ee7a094ca48b63cbd84a48bfbb03a` |
| 17 | `lemma` | [MonoidHom.map_iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/monoidhom-map-iteratefrobenius--2be15b0c90305612fd0f6713.md) | 84 | `result-track:2be15b0c90305612fd0f6713fbc65737b52127b81ad2a0ab14305e1fab469ea1` |
| 18 | `lemma` | [RingHom.map_iterate_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/ringhom-map-iterate-frobenius--766100204b77f23c6a4bc6fc.md) | 88 | `result-track:766100204b77f23c6a4bc6fceb67dcd11b76bf6fd05f4cba2345cf72791550c5` |
| 19 | `lemma` | [RingHom.map_iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/ringhom-map-iteratefrobenius--245fe78b8c194ccb52d1fbd1.md) | 92 | `result-track:245fe78b8c194ccb52d1fbd107211d916f32ec24aad40b7cfc3bb5bb15c27080` |
| 20 | `lemma` | [MonoidHom.iterate_map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/monoidhom-iterate-map-frobenius--b9522d0e2d8a8c3cdd493c20.md) | 96 | `result-track:b9522d0e2d8a8c3cdd493c20cc5fab6d6d1ef9b3ee85d332155d2f259eae0320` |
| 21 | `lemma` | [RingHom.iterate_map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/ringhom-iterate-map-frobenius--16d2694b2a0a76603f3dd17c.md) | 100 | `result-track:16d2694b2a0a76603f3dd17cb5ae3f9837d512e71aa6e0d84efb4fd5476c38e6` |
| 22 | `lemma` | [RingHom.frobenius_comm](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/ringhom-frobenius-comm--7d7ee07c21409ed7b646b9f0.md) | 104 | `result-track:7d7ee07c21409ed7b646b9f08ab2f93d4deefa77a115e0c447594e2d7d640581` |
| 23 | `lemma` | [RingHom.iterateFrobenius_comm](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/ringhom-iteratefrobenius-comm--d01c06428a69e97b2a2f57a8.md) | 108 | `result-track:d01c06428a69e97b2a2f57a8104dbe7b3db8a1a6f1a84799c8ecd6c7c16bb1ca` |
| 24 | `def` | [LinearMap.frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/linearmap-frobenius--ba87614898d5572ae0715938.md) | 115 | `declaration-track:ba87614898d5572ae0715938b4d30c8ccaf267742e7875add3d4a13488ca7155` |
| 25 | `def` | [LinearMap.iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/linearmap-iteratefrobenius--0b2289f3c6596501dee1626b.md) | 121 | `declaration-track:0b2289f3c6596501dee1626bbdde75f1c052fff581b778a13887bc7864795a9e` |
| 26 | `theorem` | [LinearMap.frobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/linearmap-frobenius-def--72c9c2e23c7b9423088191b8.md) | 126 | `result-track:72c9c2e23c7b9423088191b8c4cf817457f704369d28cb08bbd866833c6e677d` |
| 27 | `theorem` | [LinearMap.iterateFrobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variantdcedccb6578f08ee7d0081deadd9edacb1edaf020d62549f6cee3f1490a1d3f7.lean/declarations/linearmap-iteratefrobenius-def--eb961d9315b28e70c46c6a07.md) | 128 | `result-track:eb961d9315b28e70c46c6a07a3f24ff0a6bfa42dbfd3bb201b048d747c4b447d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
