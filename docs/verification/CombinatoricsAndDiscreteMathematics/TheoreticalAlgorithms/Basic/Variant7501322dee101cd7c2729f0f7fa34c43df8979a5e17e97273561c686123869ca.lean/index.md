# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fa18d23e788e66308f42ea4f494dcdd822271c7",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fa18d23e788e66308f42ea4f494dcdd822271c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ApplicativeTransformation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/applicativetransformation--7127f527218f61d6e0626130.md) | 72 | `declaration-track:7127f527218f61d6e06261305ad6d20303878e6fcc8abbd81255696f45f055ef` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/instance--3b6232beea9cc25da602be42.md) | 89 | `declaration-track:3b6232beea9cc25da602be42adfc8bb4361ac5656ea3edb7f388416f7a7e0634` |
| 3 | `theorem` | [app_eq_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/app-eq-coe--2c02a96817aee1d6f8052b6e.md) | 95 | `result-track:2c02a96817aee1d6f8052b6e126e3f5309f2c1781a5e19d7b6c4f6d8dd69d238` |
| 4 | `theorem` | [coe_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/coe-mk--9c43e4ec2582cc313ba5bcec.md) | 100 | `result-track:9c43e4ec2582cc313ba5bcec1ffedb86d28b5f3982c7a03b924fb44cd032a050` |
| 5 | `theorem` | [congr_fun](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/congr-fun--88360cd3e6d82bc995d15ae1.md) | 105 | `result-track:88360cd3e6d82bc995d15ae1010d82427281cf8aaabbca263aa9e7b6180ce151` |
| 6 | `theorem` | [congr_arg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/congr-arg--3098d47ecf3e4809c5ccda27.md) | 110 | `result-track:3098d47ecf3e4809c5ccda279c8b7011e908f2394464282be7e5188a1f30df47` |
| 7 | `theorem` | [coe_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/coe-inj--77b0cc1f1d149e66d6e3a091.md) | 115 | `result-track:77b0cc1f1d149e66d6e3a09155494bd5d4ec1387db404915a55eaabc024558c6` |
| 8 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/ext--25fff9dcafc5864f18844dbd.md) | 123 | `result-track:25fff9dcafc5864f18844dbd47b3dbfb57fb502d65916b22a7ceaed2ae56b9ea` |
| 9 | `theorem` | [ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/ext-iff--290187fdf06b6d34bf84c8e9.md) | 130 | `result-track:290187fdf06b6d34bf84c8e92636d7f75408266ba95333d4495fb79615a89981` |
| 10 | `theorem` | [preserves_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/preserves-pure--89a7836fbc231d9012c59435.md) | 140 | `result-track:89a7836fbc231d9012c5943575b969aef4f51ed83a1c91ddbde87729ca9f6d64` |
| 11 | `theorem` | [preserves_seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/preserves-seq--648fc6a35976fb9762a32ae3.md) | 145 | `result-track:648fc6a35976fb9762a32ae36fdb77d2f0aa31c18a5a1af08c7dff0f10e17e15` |
| 12 | `theorem` | [preserves_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/preserves-map--1bd9f54179991d019e8127c4.md) | 150 | `result-track:1bd9f54179991d019e8127c4e8072343c0b34ff3f6de2d96026da09542085109` |
| 13 | `theorem` | [preserves_map'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/preserves-map--220bb2e20014a66632062e56.md) | 154 | `result-track:220bb2e20014a66632062e568cbe036271888ce6e2d2c033af457963edd0d34a` |
| 14 | `def` | [idTransformation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/idtransformation--2a8e6c9a98a460cfaaa9605e.md) | 162 | `declaration-track:2a8e6c9a98a460cfaaa9605e05ba08ae7cbab4f2c86e5a12ed66b1eb9aa694f0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/instance--ae835efb8b268db7d00a6372.md) | 168 | `declaration-track:ae835efb8b268db7d00a6372b1790b5d3ac67cbe3de31e69faeccca8e19fc43b` |
| 16 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/comp--62956defca6ee539f8c66042.md) | 176 | `declaration-track:62956defca6ee539f8c6604299cf49cfe714d3fba6c3011e936c3d2c6fe570a3` |
| 17 | `theorem` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/comp-apply--23ed9f531d0f0feb9c8b913a.md) | 186 | `result-track:23ed9f531d0f0feb9c8b913a26591022bcb17d46c71205566b2a3835c2da987c` |
| 18 | `theorem` | [comp_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/comp-assoc--b22f0d00df66a61abcbd32c5.md) | 193 | `result-track:b22f0d00df66a61abcbd32c596b0dec1477505ccff345fe025c9cce592cc0462` |
| 19 | `theorem` | [comp_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/comp-id--f8a9171542f3d0c7c5aa97da.md) | 200 | `result-track:f8a9171542f3d0c7c5aa97daa5620290295d066e28726392bd5fd76aaf06218b` |
| 20 | `theorem` | [id_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/id-comp--a539593fe2ddddb23075d962.md) | 205 | `result-track:a539593fe2ddddb23075d9620a1dc799cae0a49e29e41243494fb230faf78817` |
| 21 | `class` | [Traversable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/traversable--ab96f5ec7302a31cfd94fb31.md) | 218 | `declaration-track:ab96f5ec7302a31cfd94fb31ba61abd5a4d1264d11309e5d78efcbb485f17e0d` |
| 22 | `def` | [sequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/sequence--d0f27015a9b6b3b02cb1186a.md) | 238 | `declaration-track:d0f27015a9b6b3b02cb1186a6cad6b71afd777dee3091050dd9672c8daff6a3c` |
| 23 | `class` | [LawfulTraversable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/lawfultraversable--c49224ce2046766bdfb41d53.md) | 250 | `declaration-track:c49224ce2046766bdfb41d5391ffc5d5184c2dd0348877992dd89176a8293fb2` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/instance--ddf6e0a21ac3b97bfa4ca484.md) | 270 | `declaration-track:ddf6e0a21ac3b97bfa4ca484bd0cc85ab7ef199e5565f391b53570782e97c807` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/instance--6195cb2833e5f777888a17b5.md) | 273 | `declaration-track:6195cb2833e5f777888a17b5b3bb4b2c7f92cff1cccd72e7a31f8351b7ef2a0b` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/instance--e83d329adfbef23faffdce80.md) | 279 | `declaration-track:e83d329adfbef23faffdce809c768dbe787c534d78d151473b62bc2847ee20bc` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/instance--2037b557e6f1714cef73b635.md) | 282 | `declaration-track:2037b557e6f1714cef73b63587a820b0ca94cb96e90adceecda35c377bf1c2bd` |
| 28 | `def` | [traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/traverse--4d189239ad1627ea656a5661.md) | 313 | `declaration-track:4d189239ad1627ea656a566152847e1012641dfaebb29ed055875c7f469f15cb` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/declarations/instance--3fa55c98f24a8bcba622c2cb.md) | 320 | `declaration-track:3fa55c98f24a8bcba622c2cb303df56b2f3fbd7db313edf12e2eae1e5f972b2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
