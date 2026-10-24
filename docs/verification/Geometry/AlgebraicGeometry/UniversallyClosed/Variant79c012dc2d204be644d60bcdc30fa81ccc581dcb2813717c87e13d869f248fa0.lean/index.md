# Verification target: GRWTSK.Geometry.AlgebraicGeometry.UniversallyClosed.Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "084d7936ef8d1ed2a898b272787325dee92e9f04",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `084d7936ef8d1ed2a898b272787325dee92e9f04`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalAtTarget` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniversallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosed--a3bfd27cbc2df862ec753920.md) | 39 | `declaration-track:a3bfd27cbc2df862ec75392079a58a7f407d46ae3c9c7fec4a24a9e67e727ce6` |
| 2 | `lemma` | [Scheme.Hom.isClosedMap](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/scheme-hom-isclosedmap--2d657f0631e57867a72e362a.md) | 42 | `result-track:2d657f0631e57867a72e362a030fe3e2589e15e8472ae888455897da14b2fc7e` |
| 3 | `theorem` | [universallyClosed_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosed-eq--b2df5d2171fae75d612bc7da.md) | 45 | `result-track:b2df5d2171fae75d612bc7da7b9aa1e16c930d78317cfd41bc220de09f98d77d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/instance--51554bd68bac971237f1e8e7.md) | 48 | `declaration-track:51554bd68bac971237f1e8e76f25e7a267d8b09dd2fde0313fc243fac249fce8` |
| 5 | `theorem` | [universallyClosed_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosed-respectsiso--028ee76718e2c930de15d5e8.md) | 55 | `result-track:028ee76718e2c930de15d5e88b024ca5196c7a8b70801847473cbc90ce02383e` |
| 6 | `instance` | [universallyClosed_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosed-isstableunderbasechange--7d7cad35f789ad14133c9a86.md) | 58 | `declaration-track:7d7cad35f789ad14133c9a8613ecf3cfb033b5cbf9a4e782471e559012bf371b` |
| 7 | `instance` | [isClosedMap_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/isclosedmap-isstableundercomposition--d473078e95789018dfa09ca4.md) | 61 | `declaration-track:d473078e95789018dfa09ca43c2567e4c8d59badf50d8d9cb23bdd1c6ecb90cb` |
| 8 | `instance` | [universallyClosed_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosed-isstableundercomposition--e41cf71702793c81dd53fddf.md) | 65 | `declaration-track:e41cf71702793c81dd53fddf9c576cc331789f809c592650ee9fd60ade553d2b` |
| 9 | `lemma` | [UniversallyClosed.of_comp_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosed-of-comp-surjective--2b34c6653258f7646ad04444.md) | 70 | `result-track:2b34c6653258f7646ad0444444d48b0047ea448c5432e2a15b9a68ee2cec6493` |
| 10 | `instance` | [universallyClosedTypeComp](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosedtypecomp--0fa642d2de8feef2b5b6eabb.md) | 78 | `declaration-track:0fa642d2de8feef2b5b6eabbe804b1835adefdf8119312fb9b78c63f4d0a9a3a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/instance--069811f5c32153ecc5ab41a7.md) | 82 | `declaration-track:069811f5c32153ecc5ab41a769f8013a271b78e6a49893d50ca7c0c3a8462228` |
| 12 | `instance` | [universallyClosed_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosed-fst--6d08635dee6d5f29b009de7d.md) | 85 | `declaration-track:6d08635dee6d5f29b009de7deaf4be5b66fb7a359205b6683cf5c30cc2248eb8` |
| 13 | `instance` | [universallyClosed_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosed-snd--1946e53cf4bbfb5bb65cba4e.md) | 89 | `declaration-track:1946e53cf4bbfb5bb65cba4e877375e68359fd42d5073f15d1bc0f9d3add7e4f` |
| 14 | `instance` | [universallyClosed_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosed-islocalattarget--d3ad9b5efc53368eeb76da7b.md) | 93 | `declaration-track:d3ad9b5efc53368eeb76da7bfd1373f1950e823de3f5d842e6793c4dee02d7ec` |
| 15 | `lemma` | [compactSpace_of_universallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/compactspace-of-universallyclosed--aff4f6653d98a4c71c8e967f.md) | 102 | `result-track:aff4f6653d98a4c71c8e967f3535aa22b7c3fbb47ca34a2503078c1511e66622` |
| 16 | `lemma` | [Scheme.Hom.isProperMap](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/scheme-hom-ispropermap--8911972a61a0a28a5b75c6bd.md) | 144 | `result-track:8911972a61a0a28a5b75c6bda44e597e5cb00d4481064ff20f2da00f784832de` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/instance--76587799c3d552d2f3eec72b.md) | 153 | `declaration-track:76587799c3d552d2f3eec72b25a397462eb9bce0717d80c6bc9ddf3d918e8654` |
| 18 | `lemma` | [universallyClosed_eq_universallySpecializing](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/universallyclosed-eq-universallyspecializing--81904a61070319102cc5c024.md) | 156 | `result-track:81904a61070319102cc5c024259a75424f6b6d2d792efcb5080b6395fa32a865` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant79c012dc2d204be644d60bcdc30fa81ccc581dcb2813717c87e13d869f248fa0.lean/declarations/instance--7a675bf8670a2d8cc06ee4ce.md) | 165 | `declaration-track:7a675bf8670a2d8cc06ee4ceec13ea19795ac445f7f43caecd34cf05c552dde0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
