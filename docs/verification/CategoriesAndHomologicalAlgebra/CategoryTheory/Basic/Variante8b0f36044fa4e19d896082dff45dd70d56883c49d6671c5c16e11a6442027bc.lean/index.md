# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9d4eba6ead9a614aab7dae7887dca21aca77a19",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9d4eba6ead9a614aab7dae7887dca21aca77a19`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Presentable.IsCardinalFiltered` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.HasCardinalLT` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCardinalAccessible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/iscardinalaccessible--ca43796fe695ae4d8afb8fa1.md) | 48 | `declaration-track:ca43796fe695ae4d8afb8fa153eadc57ef23eb5995debe3b0a2603d9d844287c` |
| 2 | `lemma` | [preservesColimitsOfShape_of_isCardinalAccessible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/preservescolimitsofshape-of-iscardinalaccessible--d9607287e87f1287ae154eb5.md) | 52 | `result-track:d9607287e87f1287ae154eb54166a37360ff1b45fc388f4add3773467c2753f8` |
| 3 | `lemma` | [preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/preservescolimitsofshape-of-iscardinalaccessible-of-essentiallysmall--a1a0fcb85acf8aaf53868aad.md) | 57 | `result-track:a1a0fcb85acf8aaf53868aada940acf8dce925eebd7d045f3bdff634d56c7985` |
| 4 | `lemma` | [isCardinalAccessible_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/iscardinalaccessible-of-le--4002908703f1eba83f1caef0.md) | 66 | `result-track:4002908703f1eba83f1caef01a1e7c0592702a121f5b46ba5011aa1e06eb3b75` |
| 5 | `lemma` | [isCardinalAccessible_of_natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/iscardinalaccessible-of-natiso--22b162e1027fd1ea18af2bc2.md) | 75 | `result-track:22b162e1027fd1ea18af2bc243427fd5e9a9613f9cf644c0e711b72c3421f230` |
| 6 | `abbrev` | [IsCardinalPresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/iscardinalpresentable--2805221c2c271f30ef2ef9b4.md) | 89 | `declaration-track:2805221c2c271f30ef2ef9b41cce4618822b5b7e5a12f81b031f2ea41c3ad6cf` |
| 7 | `lemma` | [preservesColimitsOfShape_of_isCardinalPresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/preservescolimitsofshape-of-iscardinalpresentable--7bee37195ff2f906d0af355c.md) | 91 | `result-track:7bee37195ff2f906d0af355cb605e69704444d1f59472c81b030ae801838eed6` |
| 8 | `lemma` | [preservesColimitsOfShape_of_isCardinalPresentable_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/preservescolimitsofshape-of-iscardinalpresentable-of-essentiallysmall--b5bf8a5cc829fa37e5fb9188.md) | 96 | `result-track:b5bf8a5cc829fa37e5fb9188d9475854c71a0ec30ae1bcef83f01f8a76fb40fa` |
| 9 | `lemma` | [isCardinalPresentable_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/iscardinalpresentable-of-le--4cb73e050dd690aa71780772.md) | 103 | `result-track:4cb73e050dd690aa71780772e934888bd1ed9e03c1d3657fc1506f0f6beb0024` |
| 10 | `lemma` | [isCardinalPresentable_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/iscardinalpresentable-of-iso--766b2c80989842c323c68b97.md) | 110 | `result-track:766b2c80989842c323c68b9792e96fde0afe7ba8f9704aff6f6fef50b9da58f6` |
| 11 | `lemma` | [isCardinalPresentable_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/iscardinalpresentable-of-equivalence--80afb057767e4d25019f894e.md) | 115 | `result-track:80afb057767e4d25019f894e40509f7bf677535f6f91dfe7f987c7e19999d6e5` |
| 12 | `instance` | [isCardinalPresentable_of_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/iscardinalpresentable-of-isequivalence--3cdda4fcd00a0723726c5846.md) | 133 | `declaration-track:3cdda4fcd00a0723726c5846404b29292cfe21c50120d38842bf94a616851121` |
| 13 | `lemma` | [isCardinalPresentable_iff_of_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/iscardinalpresentable-iff-of-isequivalence--414bf6b16d426b4de1a2b78e.md) | 140 | `result-track:414bf6b16d426b4de1a2b78e3dc86175ad1b1b909fd90f7bb7df5f8495cd8920` |
| 14 | `class` | [HasCardinalFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/hascardinalfilteredcolimits--6b5e715964af25c74be92249.md) | 159 | `declaration-track:6b5e715964af25c74be92249537ff61fff5ee300fe8fd9c70fc85210196a15d3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/declarations/instance--f63b10ead6dea2203e4de9fe.md) | 165 | `declaration-track:f63b10ead6dea2203e4de9fec661a74f94605db52f70210a2998fdf1fc0b6b20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
