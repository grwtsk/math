# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UniformTailEquivalence.Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b120d83fb01a14d412ecdd8062f0e93f68c29855",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b120d83fb01a14d412ecdd8062f0e93f68c29855`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.IsBounded` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniformTailUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/uniformtailupperbound--411ff553b3c5daa5b4fc91cf.md) | 30 | `declaration-track:411ff553b3c5daa5b4fc91cf6dc15982f1279e7969b2da486a4bf53f95330fdf` |
| 2 | `theorem` | [uniform_tail_upper_bound_iff_is_bounded_under](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/uniform-tail-upper-bound-iff-is-bounded-under--d247c9ca12508afc3bbc159d.md) | 34 | `result-track:d247c9ca12508afc3bbc159db9727e6cd6f75b16f630f88253adfb2489284998` |
| 3 | `structure` | [AffineTailAdapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/affinetailadapter--6eba5507d98f49737691e253.md) | 47 | `declaration-track:6eba5507d98f49737691e2535bfdec62625920c6bf19845a60b23d905e192f82` |
| 4 | `def` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/refl--2f283cea36ee59592ff2fd67.md) | 62 | `declaration-track:2f283cea36ee59592ff2fd678388cc0436258e1a1bff90f77a200453987e714d` |
| 5 | `def` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/symm--a50b61f56595ed82b4f06f4d.md) | 72 | `declaration-track:a50b61f56595ed82b4f06f4dea427b192c28fa70c3c006d8bcaf24cee20d9047` |
| 6 | `def` | [trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/trans--5319aca043898fd27238de27.md) | 88 | `declaration-track:5319aca043898fd27238de2713599386278bdb2b92ea99f719db33ba789097ea` |
| 7 | `theorem` | [transfer_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/transfer-bound--b0fd74a2ec0fc178a1e20774.md) | 111 | `result-track:b0fd74a2ec0fc178a1e207749e0bb8940f6447cff0ece401e65bc6d5598eccf6` |
| 8 | `theorem` | [transfer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/transfer--82b4797cdc31fe93f5de1562.md) | 121 | `result-track:82b4797cdc31fe93f5de15622d0e8241adc98a2f9493d7c5b8ea1121c9154972` |
| 9 | `theorem` | [uniform_tail_upper_bound_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/uniform-tail-upper-bound-iff--9b5f0c91b9735b31284e540a.md) | 129 | `result-track:9b5f0c91b9735b31284e540acbbc3306a6b6cef1bcc990ef362d907a38c9c7ee` |
| 10 | `def` | [ofTailScaledEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/oftailscaledeq--51b7a8e5de5ea46306cc830e.md) | 134 | `declaration-track:51b7a8e5de5ea46306cc830e0e7165285bcb2fa4050e78e29fd2dbe22227ef9a` |
| 11 | `def` | [ofScaledEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/ofscaledeq--b482013cf5b6fbf14fc7e24c.md) | 145 | `declaration-track:b482013cf5b6fbf14fc7e24c94e0290157e2f3142b8469b2d9e8abc57ddda1b7` |
| 12 | `def` | [ofEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/ofeq--8421da192da64ac7777972cf.md) | 150 | `declaration-track:8421da192da64ac7777972cf9519efbb3e175db830ca4cbf10f090f01fa334dc` |
| 13 | `def` | [ofBoundedCorrection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/ofboundedcorrection--3a18093fc347a761636c56b6.md) | 154 | `declaration-track:3a18093fc347a761636c56b6fb1744efdeae84b76bf2630e9398b19a73f615c6` |
| 14 | `def` | [QuantitativeTailEquivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/quantitativetailequivalence--82481642ba72d185e08e5024.md) | 175 | `declaration-track:82481642ba72d185e08e5024418e7c3f2c7377467f5557443e7a27190b1e594d` |
| 15 | `theorem` | [quantitative_tail_equivalence_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/quantitative-tail-equivalence-refl--54868d5b9df556f897340fbb.md) | 177 | `result-track:54868d5b9df556f897340fbbd15dec1c0834c16a23a6d84731d8666a44e1dcee` |
| 16 | `theorem` | [quantitative_tail_equivalence_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/quantitative-tail-equivalence-symm--79b44b29b110a47480f35d9d.md) | 180 | `result-track:79b44b29b110a47480f35d9df8d37def9d8e79237fff48b2ca74b25b4857a890` |
| 17 | `theorem` | [quantitative_tail_equivalence_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/quantitative-tail-equivalence-trans--1439fc341a8004c28df5bb48.md) | 185 | `result-track:1439fc341a8004c28df5bb484c9832ef21dde5d50c939b79513b0c15c88fc5a1` |
| 18 | `theorem` | [uniform_tail_upper_bound_iff_of_quantitative_equivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/uniform-tail-upper-bound-iff-of-quantitative-equivalence--5f67d012882e82739626939e.md) | 193 | `result-track:5f67d012882e82739626939edbd694917f862843a1514628ac5a4694826d3967` |
| 19 | `theorem` | [uniform_tail_upper_bound_iff_of_variable_normalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/declarations/uniform-tail-upper-bound-iff-of-variable-normalization--ed1aeb115b67528136c04735.md) | 201 | `result-track:ed1aeb115b67528136c04735eee8f87e664806dd4baa78e367dd632cedde47fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
