# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Symmetric.Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33e371b283b13d5d98642bc31437ffa7b6b57feb",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33e371b283b13d5d98642bc31437ffa7b6b57feb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Path` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Push` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Symmetrify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/symmetrify--34c3c1ef2993cd3539370c30.md) | 29 | `declaration-track:34c3c1ef2993cd3539370c30477acea83d93d1eab2a9c71fdd4572ca62763ef3` |
| 2 | `instance` | [symmetrifyQuiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/symmetrifyquiver--7a0046cd4c08ce07574409a5.md) | 31 | `declaration-track:7a0046cd4c08ce07574409a5ded4da59a72d8bfb594a9b54ca62c607a8bd7b91` |
| 3 | `class` | [HasReverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/hasreverse--b36f9f036d6c952af95afb65.md) | 38 | `declaration-track:b36f9f036d6c952af95afb65ef9bd254381cdd2f4d1c7ee9778725125412e6ca` |
| 4 | `def` | [reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/reverse--244e62aa36df7d02f4946370.md) | 43 | `declaration-track:244e62aa36df7d02f4946370d3603da59e73c461e659d03cf9b8a9f1ef081b66` |
| 5 | `class` | [HasInvolutiveReverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/hasinvolutivereverse--807a99aa8a9af6e4bc61b277.md) | 47 | `declaration-track:807a99aa8a9af6e4bc61b277d30925b07ab84e3ce3081e74a3f062796dd3d7fd` |
| 6 | `theorem` | [reverse_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/reverse-reverse--0fc73d2adb8a436408e1c2ec.md) | 54 | `result-track:0fc73d2adb8a436408e1c2ec60668e08334f998442c52b0d66b06dd1badeb28e` |
| 7 | `theorem` | [reverse_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/reverse-inj--f4483312bba5d8439af8c3ef.md) | 58 | `result-track:f4483312bba5d8439af8c3efabbe3a47cd458d98e80150a32c6fec94f7fcccd3` |
| 8 | `theorem` | [eq_reverse_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/eq-reverse-iff--0c5cdc735dbc8dc2a0a50dc8.md) | 66 | `result-track:0c5cdc735dbc8dc2a0a50dc84a1e962f38c53200e18d8814eeeee43b27607ae5` |
| 9 | `class` | [_root_.Prefunctor.MapReverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/root-prefunctor-mapreverse--cc865864dec3d84f155c80fb.md) | 75 | `declaration-track:cc865864dec3d84f155c80fbb4f64d8cbbf0ebed6a32a3a6c32987693ba2920c` |
| 10 | `theorem` | [_root_.Prefunctor.map_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/root-prefunctor-map-reverse--46fd7df5ce5e572a4bad7681.md) | 80 | `result-track:46fd7df5ce5e572a4bad7681f5333037f775b1807c991b9f5ee987ffb26fab8a` |
| 11 | `instance` | [_root_.Prefunctor.mapReverseComp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/root-prefunctor-mapreversecomp--d957bdab4ee0dd90e282ab9e.md) | 84 | `declaration-track:d957bdab4ee0dd90e282ab9edc4c6cb1545cfdf84dea7df27af73a781a24e130` |
| 12 | `instance` | [_root_.Prefunctor.mapReverseId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/root-prefunctor-mapreverseid--64075ed646e2d57000b6b4a8.md) | 90 | `declaration-track:64075ed646e2d57000b6b4a84b73cc5c2be6b550dee975c864e3dda6651d5e32` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/instance--b7d0f81882ad9dc32b0353f9.md) | 96 | `declaration-track:b7d0f81882ad9dc32b0353f949468e03bf4c3f26b4b21bf7cc2b2f5e3bd048ec` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/instance--0400a3d09813b9b71e39a239.md) | 99 | `declaration-track:0400a3d09813b9b71e39a23942fdd38843a16e2cf05181f44de5a84907b7b026` |
| 15 | `theorem` | [symmetrify_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/symmetrify-reverse--5c2f678815fe05796f5e76f0.md) | 106 | `result-track:5c2f678815fe05796f5e76f0f231851b2e5c14040f09b9f3e3e5bebfa688b3f4` |
| 16 | `abbrev` | [Hom.toPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/hom-topos--87f9b6cb22807015994ecf0f.md) | 112 | `declaration-track:87f9b6cb22807015994ecf0f28e7e6ce507a0461b9cbddc67f271b69f36f2401` |
| 17 | `abbrev` | [Hom.toNeg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/hom-toneg--414431084d63eca22b9e0a9a.md) | 116 | `declaration-track:414431084d63eca22b9e0a9a5134965bf2b4c0f202fb9c9c63ddd793f86616fc` |
| 18 | `def` | [Path.reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/path-reverse--3cee8c15c1edc449914355a9.md) | 121 | `declaration-track:3cee8c15c1edc449914355a9eaa16b3ad90346980b9799adce8b3b4c46f970c2` |
| 19 | `theorem` | [Path.reverse_toPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/path-reverse-topath--0a03cc29c0a2a3786f20e1be.md) | 126 | `result-track:0a03cc29c0a2a3786f20e1be2783384059aec4ba462be8a2ea2d288d94683d93` |
| 20 | `theorem` | [Path.reverse_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/path-reverse-comp--de69d27d5a88c2a62f553d12.md) | 131 | `result-track:de69d27d5a88c2a62f553d124b0e82d6c54e94ca569e4af140a172ea0f718e2c` |
| 21 | `theorem` | [Path.reverse_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/path-reverse-reverse--66c1cafdff62db17dde6685c.md) | 138 | `result-track:66c1cafdff62db17dde6685c1b77263a5cb44a385d9454c6698e6cb8d54f495b` |
| 22 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/of--f827ab0d393feb28293bf675.md) | 152 | `declaration-track:f827ab0d393feb28293bf675af5a8f3ae70e2ce10d396d347e7d8ea679e66edf` |
| 23 | `def` | [lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/lift--38f9d7dc56e7529aeac59e8f.md) | 160 | `declaration-track:38f9d7dc56e7529aeac59e8f99dc67eabe6e2d4c1f10f72f06ad1e2f644bdd14` |
| 24 | `theorem` | [lift_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/lift-spec--b2ee65a94c452b49d3cb6490.md) | 167 | `result-track:b2ee65a94c452b49d3cb6490f39566e1b6e2168557e7c10f5840c70c57ebe498` |
| 25 | `theorem` | [lift_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/lift-reverse--0f08d75fe193eef13a001695.md) | 175 | `result-track:0f08d75fe193eef13a001695e86b67a9700c734a701b1b5f2e6b74218f85e9ab` |
| 26 | `theorem` | [lift_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/lift-unique--c9fadf9236f2fc9f5f75af7f.md) | 185 | `result-track:c9fadf9236f2fc9f5f75af7f3983eddce7a63f3b74d3e9723da67d16ed6d3c6f` |
| 27 | `def` | [_root_.Prefunctor.symmetrify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/root-prefunctor-symmetrify--830596f4f984404561db8ba1.md) | 200 | `declaration-track:830596f4f984404561db8ba18172b464e97e2411ef26c9519b87c6f79ad2dda5` |
| 28 | `instance` | [_root_.Prefunctor.symmetrify_mapReverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/root-prefunctor-symmetrify-mapreverse--9feae983f5370961433fba4f.md) | 204 | `declaration-track:9feae983f5370961433fba4fba6a6b4ebdcf82972c450fe5e3e19315f68d423b` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/instance--5308c39a81a526fd2b2bc4a4.md) | 214 | `declaration-track:5308c39a81a526fd2b2bc4a4e14adf78e506e406946c2a938484788041be5b45` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/instance--b859ed317e1498f44b53705a.md) | 218 | `declaration-track:b859ed317e1498f44b53705a1183777bd7782dd1f639897ebff818cb3ac4abc1` |
| 31 | `theorem` | [of_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/of-reverse--2a4c0bfb93f7816351677bd8.md) | 225 | `result-track:2a4c0bfb93f7816351677bd8a528e85c974cd1bdd0beb0cc2cf2f612b79669fa` |
| 32 | `instance` | [ofMapReverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/ofmapreverse--baa935652695e5ef10ab7833.md) | 229 | `declaration-track:baa935652695e5ef10ab783382143f705d94bc36dc1471329b4ebd5a6637a27b` |
| 33 | `def` | [IsPreconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.lean/declarations/ispreconnected--6bd12a345f7ec36b21f4f084.md) | 240 | `declaration-track:6bd12a345f7ec36b21f4f0844340a0e0cdfb0d984397c11e881228c2aeb4a16e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
