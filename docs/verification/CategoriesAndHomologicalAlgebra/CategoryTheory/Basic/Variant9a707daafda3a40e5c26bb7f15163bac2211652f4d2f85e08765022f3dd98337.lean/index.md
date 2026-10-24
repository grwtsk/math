# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d540c20ffe00269ef829e75ebff32055c05140e3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d540c20ffe00269ef829e75ebff32055c05140e3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Presentable.IsCardinalFiltered` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.HasCardinalLT` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCardinalAccessible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/iscardinalaccessible--6f4e7ee442f7348eaf99a8cc.md) | 56 | `declaration-track:6f4e7ee442f7348eaf99a8cc6b88a6b73bfe5aadd8eb1c6bbd54721e9ba5790e` |
| 2 | `lemma` | [preservesColimitsOfShape_of_isCardinalAccessible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/preservescolimitsofshape-of-iscardinalaccessible--004cf3e16f572b124c55515a.md) | 60 | `result-track:004cf3e16f572b124c55515abfa84f35df8abae587d71eb2acca2931ce971820` |
| 3 | `lemma` | [preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/preservescolimitsofshape-of-iscardinalaccessible-of-essentiallysmall--607af3b4d25a12dcb10626b7.md) | 65 | `result-track:607af3b4d25a12dcb10626b7e0bda50e6a14e6173d20ee7314986d56f1ad1f7c` |
| 4 | `lemma` | [isCardinalAccessible_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/iscardinalaccessible-of-le--6fc0d56abcc795ed2c4869c6.md) | 74 | `result-track:6fc0d56abcc795ed2c4869c6147049bbcbf45fc5329241cd7719cf0f586a4e4b` |
| 5 | `lemma` | [isCardinalAccessible_of_natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/iscardinalaccessible-of-natiso--6f62c53953828bf9547a5926.md) | 83 | `result-track:6f62c53953828bf9547a59261215e05fe9879a89219cbbc20370b3da4a4cde31` |
| 6 | `abbrev` | [IsCardinalPresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/iscardinalpresentable--6f29c7d7929ed53d46450360.md) | 97 | `declaration-track:6f29c7d7929ed53d464503602e0c5ece9a7f7beacdf3e962e725d3fce6f8ff51` |
| 7 | `lemma` | [preservesColimitsOfShape_of_isCardinalPresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/preservescolimitsofshape-of-iscardinalpresentable--8f0914eb653eda5a88578728.md) | 99 | `result-track:8f0914eb653eda5a88578728fabae9736a78b2e5a673a20c5160adca4a1e9d31` |
| 8 | `lemma` | [preservesColimitsOfShape_of_isCardinalPresentable_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/preservescolimitsofshape-of-iscardinalpresentable-of-essentiallysmall--e35e8cb07e796c7c8d5b17c0.md) | 104 | `result-track:e35e8cb07e796c7c8d5b17c004bf9cd36fb009d824bba17ad4ef7a24b59204f5` |
| 9 | `lemma` | [isCardinalPresentable_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/iscardinalpresentable-of-le--57d1a27b33468d16c5d92100.md) | 111 | `result-track:57d1a27b33468d16c5d9210025d6526e3811007135729a76d43e7abf50fa4405` |
| 10 | `lemma` | [isCardinalPresentable_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/iscardinalpresentable-of-iso--23b7e7f33943062f770ee823.md) | 118 | `result-track:23b7e7f33943062f770ee823121f288dbca942d1f2414e7cba0e811a533468c1` |
| 11 | `lemma` | [isCardinalPresentable_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/iscardinalpresentable-of-equivalence--84af439cbcd727a7313820ef.md) | 123 | `result-track:84af439cbcd727a7313820ef6d0b071c6932fb89a408fc0bc7a7bfd1ec640575` |
| 12 | `instance` | [isCardinalPresentable_of_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/iscardinalpresentable-of-isequivalence--79f6680c8a5ceb3b0583812c.md) | 141 | `declaration-track:79f6680c8a5ceb3b0583812c9833cd6953530324a9ac09eda3c6d9afae900b17` |
| 13 | `lemma` | [isCardinalPresentable_iff_of_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/iscardinalpresentable-iff-of-isequivalence--cc8ccc1f79ec2d8957ae967d.md) | 148 | `result-track:cc8ccc1f79ec2d8957ae967df698d4070d88b08b9636c90ff33b07018b6fa25c` |
| 14 | `class` | [HasCardinalFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/hascardinalfilteredcolimits--5610ae9f2bfe9a5c5d8001c4.md) | 167 | `declaration-track:5610ae9f2bfe9a5c5d8001c41343187d003c0b855ede68b6f7fbfda83007d374` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/declarations/instance--4e9105f9a44309579aeb3c8b.md) | 173 | `declaration-track:4e9105f9a44309579aeb3c8b682c5c9280d8fd95222a5484a05be840ec0480a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
