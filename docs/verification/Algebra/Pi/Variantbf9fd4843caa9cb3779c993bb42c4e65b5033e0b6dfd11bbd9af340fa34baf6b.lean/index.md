# Verification target: GRWTSK.Algebra.Pi.Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60f0d0a3538be1773fff906a2dd6485c624facd2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60f0d0a3538be1773fff906a2dd6485c624facd2`.

Source path: `GRWTSK/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [algebra](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/algebra--c57bdd0824b6cd214da1d85c.md) | 40 | `declaration-track:c57bdd0824b6cd214da1d85c78160e78e666069166aeb51e02d9172285732ce7` |
| 2 | `theorem` | [algebraMap_def](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/algebramap-def--a8a77a20cc92c204834b250a.md) | 45 | `result-track:a8a77a20cc92c204834b250aaaed1cea67020e02f79bb93fa7ec74e49a51b011` |
| 3 | `theorem` | [algebraMap_apply](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/algebramap-apply--43cac388e9fabeb9a3006f49.md) | 49 | `result-track:43cac388e9fabeb9a3006f49d640dc46f387970de6ef719eddad4142aae54023` |
| 4 | `def` | [algHom](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/alghom--cacf498ad4a8be0ae975968c.md) | 57 | `declaration-track:cacf498ad4a8be0ae975968ccd86132140615cc68ab4764f1e648257de1da662` |
| 5 | `def` | [evalAlgHom](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/evalalghom--cd6452a5b5b7cb62f7e697b4.md) | 64 | `declaration-track:cd6452a5b5b7cb62f7e697b4eed76eaeaa3d8dd38ae510891e6822d82cdadc6f` |
| 6 | `theorem` | [algHom_evalAlgHom](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/alghom-evalalghom--20a68fdcb6205d2523082a1c.md) | 70 | `result-track:20a68fdcb6205d2523082a1c28d981d8d25e6e5611a40c890f4df71831c3dbd5` |
| 7 | `theorem` | [algHom_comp](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/alghom-comp--8154c6164cdf6081d1b28829.md) | 73 | `result-track:8154c6164cdf6081d1b288299acac1d37da7f4f631cdefcd5eafb895dc130ccd` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/instance--d8d73be64cf63f4cce975e22.md) | 79 | `declaration-track:d8d73be64cf63f4cce975e224fc94c7e4b248b98cee2c07a8f1f4c36d222b269` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/example--36c075535d897f734c6ed143.md) | 84 | `declaration-track:36c075535d897f734c6ed143a51ed856e721aa7bc3ceb7310b2c1c20d99acb55` |
| 10 | `def` | [constAlgHom](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/constalghom--66eb159a1567bca739b0df66.md) | 91 | `declaration-track:66eb159a1567bca739b0df66ace529dd9752e5562073f9e75a4f9f0c20b451b3` |
| 11 | `theorem` | [constRingHom_eq_algebraMap](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/constringhom-eq-algebramap--54f7b7b84c7e4e10624351dd.md) | 99 | `result-track:54f7b7b84c7e4e10624351dd0736ad25af159e5d3bb18e61ffb79dd7869cf86a` |
| 12 | `theorem` | [constAlgHom_eq_algebra_ofId](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/constalghom-eq-algebra-ofid--c172c0556fc35cdc5ccaaf4b.md) | 103 | `result-track:c172c0556fc35cdc5ccaaf4b3adb090a2dc9bf872c5f6050707da0c4fec36dbf` |
| 13 | `instance` | [Function.algebra](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/function-algebra--dd64b83b6ee98d0b87f782b3.md) | 110 | `declaration-track:dd64b83b6ee98d0b87f782b3aac0bc7f0fd736ccd7ea9d44f54dccb6386ca649` |
| 14 | `def` | [compLeft](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/compleft--b297eb2664f860b6a12f451d.md) | 123 | `declaration-track:b297eb2664f860b6a12f451d7077da1b32e69ef3d01d2a344f426f50702e3e30` |
| 15 | `def` | [piCongrRight](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/picongrright--9967d6654def10d872e5f435.md) | 145 | `declaration-track:9967d6654def10d872e5f4357857477ce6c27cab8bf3fee245f4ad444d118472` |
| 16 | `theorem` | [piCongrRight_refl](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/picongrright-refl--e7d0997c2895a2f439ba6152.md) | 154 | `result-track:e7d0997c2895a2f439ba61521ce3edb8e5007f2d0ae59a492ef51d4a9b5ca5d2` |
| 17 | `theorem` | [piCongrRight_symm](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/picongrright-symm--47d6645c12a47c4687a2abfa.md) | 159 | `result-track:47d6645c12a47c4687a2abfa13c9c8508e62995d80773f268d0ec0f30fb50a97` |
| 18 | `theorem` | [piCongrRight_trans](../../../../mathematics/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean/declarations/picongrright-trans--c034e30f68ef31d0ec3d94eb.md) | 164 | `result-track:c034e30f68ef31d0ec3d94eb2aaf0f35b804a5fec96d95fa4026088c76c6fc42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
