# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.ConstructiveList

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcf215013572aef296345cce70a270690c10770a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcf215013572aef296345cce70a270690c10770a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [decidableMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/decidablemem--94fd808f7458df670c095b2c.md) | 27 | `declaration-track:94fd808f7458df670c095b2c57572ddb00f91b3557dff54167d167c32dc799ec` |
| 2 | `theorem` | [mem_cons_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/mem-cons-iff--62e66af7ad8a94941f4264eb.md) | 41 | `result-track:62e66af7ad8a94941f4264eb1ed71efed4dbe7b7275884825af5376402ab5fca` |
| 3 | `theorem` | [mem_singleton_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/mem-singleton-iff--20451080d163c208aeefa0eb.md) | 53 | `result-track:20451080d163c208aeefa0eb72fdf7ff3599beebb8bc0dd1d68e88242a6e2edd` |
| 4 | `theorem` | [mem_append_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/mem-append-iff--cee2751b17005ed3cf2b70c6.md) | 63 | `result-track:cee2751b17005ed3cf2b70c629e68c13e9f283f636a3302efcd91b69ffc8e2e0` |
| 5 | `theorem` | [eq_nil_iff_forall_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/eq-nil-iff-forall-not-mem--311fad8db0cb5ea6d940a2d2.md) | 90 | `result-track:311fad8db0cb5ea6d940a2d2f456c94934afa62e341811714aefd5410d722948` |
| 6 | `theorem` | [mem_map_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/mem-map-iff--66946e7ca3027ad5d7885f1e.md) | 101 | `result-track:66946e7ca3027ad5d7885f1eed20ad0583a01d5a333359013ca8350c074751df` |
| 7 | `theorem` | [map_eq_nil_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/map-eq-nil-iff--303c427bf5caa9c7dc580289.md) | 125 | `result-track:303c427bf5caa9c7dc580289578fdab5f422f7975225fa7cbc9713c8b19978e4` |
| 8 | `theorem` | [mem_filter_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/mem-filter-iff--f3720e2b9c7d5da02c95073f.md) | 136 | `result-track:f3720e2b9c7d5da02c95073f29969904436d19aa073c68d2c993ef29e26b366d` |
| 9 | `theorem` | [filter_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/filter-append--86e5761f9dca9e84b1a0d1fb.md) | 173 | `result-track:86e5761f9dca9e84b1a0d1fb1b6e8739e96c03fc3b822258790aaee31e12881c` |
| 10 | `theorem` | [append_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/append-nil--f8480bcf0564662ed1f2e402.md) | 189 | `result-track:f8480bcf0564662ed1f2e402aefb3ac483a92241437b3f1156183554f54166c9` |
| 11 | `theorem` | [append_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/append-assoc--5f56984126287974d4eb791a.md) | 194 | `result-track:5f56984126287974d4eb791a1269902fd89f427622247b9519f9b8e138e32939` |
| 12 | `theorem` | [prefix_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/prefix-refl--ffe073cad5a01fdff241ac28.md) | 200 | `result-track:ffe073cad5a01fdff241ac28f6231c1fad1cc58e91470e3467d6fc59fa4a74af` |
| 13 | `theorem` | [prefix_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/prefix-append--300b86f419bfa67ff8c492ab.md) | 203 | `result-track:300b86f419bfa67ff8c492abf508b42980873efe36dcfe67b41cc58ee4ff3852` |
| 14 | `theorem` | [prefix_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/prefix-trans--4007325a7cfafb476911db33.md) | 206 | `result-track:4007325a7cfafb476911db33a13b5bbaba306f66d66cbbbc821a6b8b7e1dea79` |
| 15 | `theorem` | [length_le_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/length-le-append--b2f1af85a24aebec6f1a19ee.md) | 214 | `result-track:b2f1af85a24aebec6f1a19eedc9aee34765328145a7222d98f2151743d0c7f66` |
| 16 | `theorem` | [prefix_length_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/prefix-length-le--94e9481f78b2de944f18a88a.md) | 219 | `result-track:94e9481f78b2de944f18a88a2c82d1cca911a7864a2ef617aede90288e96df5d` |
| 17 | `theorem` | [append_getElem_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/append-getelem-of-lt--984ea14e1613c845db45482f.md) | 225 | `result-track:984ea14e1613c845db45482f09ccd49a878ebe46065becbe9a4dcef061d0bb8e` |
| 18 | `theorem` | [prefix_getElem_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/prefix-getelem-of-lt--2d075417323387a2e4a788f0.md) | 235 | `result-track:2d075417323387a2e4a788f0ae1f3a5de09133ff1b2f590489490eeb1777a344` |
| 19 | `theorem` | [foldl_min_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/foldl-min-spec--ef0c399deb0d8239b23db6a0.md) | 244 | `result-track:ef0c399deb0d8239b23db6a008416e0dd19445e89ab58435a67f4661f9412c87` |
| 20 | `theorem` | [foldl_max_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/foldl-max-spec--a5873f6b76e725017c51b307.md) | 284 | `result-track:a5873f6b76e725017c51b30799bea54f3d5fb5b53ef32c28e21d509f8ff39d25` |
| 21 | `theorem` | [min?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/min-eq-none-iff--8502f848c0d0a4b7ec04ab14.md) | 323 | `result-track:8502f848c0d0a4b7ec04ab14023ada52a9caba392707bc1ae3b798990433fe89` |
| 22 | `theorem` | [max?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/max-eq-none-iff--3f8e1c3d556d6e516bde2773.md) | 333 | `result-track:3f8e1c3d556d6e516bde27738543b541c4a414598223634928281620ab855c12` |
| 23 | `theorem` | [min?_eq_some_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/min-eq-some-iff--8b95967e7fa0fec561b0e1d5.md) | 343 | `result-track:8b95967e7fa0fec561b0e1d52bf4556cc70c9499110412afe943a4092ba4bd45` |
| 24 | `theorem` | [max?_eq_some_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/declarations/max-eq-some-iff--3f677a867a651fde43d867e1.md) | 362 | `result-track:3f677a867a651fde43d867e12b7911781f77f6ce0b96dacd952b07e2ed526fda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
