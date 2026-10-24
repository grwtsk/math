# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b469b730b962faa379d6fe39b963c31cab3f6f2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b469b730b962faa379d6fe39b963c31cab3f6f2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CommSq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Retract` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/hasliftingproperty--9e4e5de85e622bb9c40f5619.md) | 47 | `declaration-track:9e4e5de85e622bb9c40f5619a88f967806c2350f5738450b40ae9e455fea9786` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/instance--4efaec975cb0af59b14f7090.md) | 51 | `declaration-track:4efaec975cb0af59b14f709036bbdd872518fa368fd187256313a64b68cbe838` |
| 3 | `theorem` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/op--a49c6e92ca4226862f8e4742.md) | 58 | `result-track:a49c6e92ca4226862f8e4742593896c42aae77fff0098c9adc6816a316e457e2` |
| 4 | `theorem` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/unop--a1147dc27a5c08c22ba709b5.md) | 63 | `result-track:a1147dc27a5c08c22ba709b5cc3edea0335e2c4881ab22d3cb2290652766a9cb` |
| 5 | `theorem` | [iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/iff-op--5b27b38ebf6867abbe621daa.md) | 70 | `result-track:5b27b38ebf6867abbe621daa20614bde10f6f9e122573ea05137e85d5bd760d4` |
| 6 | `theorem` | [iff_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/iff-unop--98c9beb572b677bb84b20014.md) | 73 | `result-track:98c9beb572b677bb84b200141ebdd00289d04589a72bc327a6f783fa256c93d0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/instance--96de06ee900fcf352b9dea37.md) | 79 | `declaration-track:96de06ee900fcf352b9dea3745a628f058e4bf3da6fc82c84f697f0ffffb2342` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/instance--beae2e25655313dbe87a64f4.md) | 86 | `declaration-track:beae2e25655313dbe87a64f41ea9a71f0e9c86acdaf515fb798086a2b9d47277` |
| 9 | `instance` | [of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/of-comp-left--d36e9c4b722eb23fb5ed3646.md) | 93 | `declaration-track:d36e9c4b722eb23fb5ed36466b7b36a8feb50f00f3ee3dd392aa10768895797e` |
| 10 | `instance` | [of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/of-comp-right--852a5609f5ce45dce3027084.md) | 104 | `declaration-track:852a5609f5ce45dce3027084390a5e4b3103abcdf8a8a39d664ece3988fb0438` |
| 11 | `theorem` | [of_arrow_iso_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/of-arrow-iso-left--e7d6d2d83c47ebb29065b277.md) | 116 | `result-track:e7d6d2d83c47ebb29065b2774b299374f6489489f6f9c85e1dabf1c56046dc1e` |
| 12 | `theorem` | [of_arrow_iso_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/of-arrow-iso-right--a04d2e4d192ee2253ac76d0f.md) | 122 | `result-track:a04d2e4d192ee2253ac76d0f2bc96eab7a3565510e5d7066142b473c87e742b9` |
| 13 | `theorem` | [iff_of_arrow_iso_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/iff-of-arrow-iso-left--14aa16babb6860d972e40cc9.md) | 127 | `result-track:14aa16babb6860d972e40cc9597ffe1e8d77fa5a7b59eb712fed291672e5f002` |
| 14 | `theorem` | [iff_of_arrow_iso_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/iff-of-arrow-iso-right--501d7ebe66e8645f6b0cca78.md) | 133 | `result-track:501d7ebe66e8645f6b0cca7817090368a78d8dc4764721fe1b29479232ac92a9` |
| 15 | `lemma` | [RetractArrow.leftLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/retractarrow-leftliftingproperty--df97c0f6f8433b292416a0eb.md) | 140 | `result-track:df97c0f6f8433b292416a0eb7d90449e4e833dc05673133466adbb01bfdd53eb` |
| 16 | `lemma` | [RetractArrow.rightLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant01d45e6a4cc639d8205c1d7c9a72c142a4c0270216bb9706f610427c204c4b13.lean/declarations/retractarrow-rightliftingproperty--f92c84a501f690a4575ebaaf.md) | 152 | `result-track:f92c84a501f690a4575ebaaff83d2dc115188f73b50039bb16d480533ff3a0c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
