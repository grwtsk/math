# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UniformTailEquivalence.Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dfaf326362298291b14e2dcd917643fa5189d8f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dfaf326362298291b14e2dcd917643fa5189d8f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.IsBounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniformTailUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/uniformtailupperbound--2ed503da318377b35eaf54c9.md) | 38 | `declaration-track:2ed503da318377b35eaf54c9efe9cf26a0887c0deaf9e7c6b3a9c5b07e786b0d` |
| 2 | `theorem` | [uniform_tail_upper_bound_iff_is_bounded_under](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/uniform-tail-upper-bound-iff-is-bounded-under--0c974a7581acafad94a509e8.md) | 42 | `result-track:0c974a7581acafad94a509e845ac2e58767336cd011dc514f3076a188d8b8743` |
| 3 | `structure` | [AffineTailAdapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/affinetailadapter--276ed5163e12d2dbabcad5ec.md) | 55 | `declaration-track:276ed5163e12d2dbabcad5ec40cb9b56546fec432d924de99bb9b0473fb896dc` |
| 4 | `def` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/refl--2a17d23ce5c5d411f6136276.md) | 70 | `declaration-track:2a17d23ce5c5d411f61362764a28e2a1adeee5aca918f662a2f5f694fb8173d2` |
| 5 | `def` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/symm--8e5e1f572d59e27ec90f752a.md) | 80 | `declaration-track:8e5e1f572d59e27ec90f752ae38da3d0ad36a1846c422dde0e8d1b6090f61636` |
| 6 | `def` | [trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/trans--7655b90bb624d74fef81e82d.md) | 96 | `declaration-track:7655b90bb624d74fef81e82d51899641e7d5be17aca93b702c037083d9b21756` |
| 7 | `theorem` | [transfer_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/transfer-bound--a746785c358159af55434689.md) | 119 | `result-track:a746785c358159af55434689cd34aa2f7f7eb1e8fc4cb2ccaa11d2709bd517d9` |
| 8 | `theorem` | [transfer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/transfer--61c95cc519f80561e2b0a552.md) | 129 | `result-track:61c95cc519f80561e2b0a552e3d936436f3427edd1b2e00d5e7d3c41dc5e027a` |
| 9 | `theorem` | [uniform_tail_upper_bound_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/uniform-tail-upper-bound-iff--d8756f540b4c585c5d203ed5.md) | 137 | `result-track:d8756f540b4c585c5d203ed501268b0813f0d3ef8cff883809c9e1c939e2ea47` |
| 10 | `def` | [ofTailScaledEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/oftailscaledeq--730bd683988da24d689457a5.md) | 142 | `declaration-track:730bd683988da24d689457a5c016a426f1b66d767dc89a47c512c0d94bb0e06e` |
| 11 | `def` | [ofScaledEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/ofscaledeq--68867f1c7af66e8de60b8e28.md) | 153 | `declaration-track:68867f1c7af66e8de60b8e286e0daca39db57527b168b64c1eb6f4c83eae922e` |
| 12 | `def` | [ofEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/ofeq--4256aff78f4ed3051e52a64a.md) | 158 | `declaration-track:4256aff78f4ed3051e52a64a3b4808b698c253cb8a8a4d60df541b914cf3dffd` |
| 13 | `def` | [ofBoundedCorrection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/ofboundedcorrection--a83c18348043597ad898d3e7.md) | 162 | `declaration-track:a83c18348043597ad898d3e716e280b41c89e49564afbfffd0bbe1d5010d38df` |
| 14 | `def` | [QuantitativeTailEquivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/quantitativetailequivalence--75a8608a7c316e1dee49e251.md) | 183 | `declaration-track:75a8608a7c316e1dee49e2513206fa0b716c24d8b690ae1748eb46862e11785e` |
| 15 | `theorem` | [quantitative_tail_equivalence_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/quantitative-tail-equivalence-refl--1e965729770fa5ec01ef05c7.md) | 185 | `result-track:1e965729770fa5ec01ef05c7a16010d057fd50130a2a359660baafd7841737f0` |
| 16 | `theorem` | [quantitative_tail_equivalence_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/quantitative-tail-equivalence-symm--10a7013dceb1beebc5db2b2d.md) | 188 | `result-track:10a7013dceb1beebc5db2b2d02ca5795138108edec0ab195e8af5176c2d8314d` |
| 17 | `theorem` | [quantitative_tail_equivalence_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/quantitative-tail-equivalence-trans--e3bede198b6f6516792e0de6.md) | 193 | `result-track:e3bede198b6f6516792e0de6309713e864203fc8f62f708c6c402acbe47461c7` |
| 18 | `theorem` | [uniform_tail_upper_bound_iff_of_quantitative_equivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/uniform-tail-upper-bound-iff-of-quantitative-equivalence--39ee54058ff124d5a210c1e0.md) | 201 | `result-track:39ee54058ff124d5a210c1e0f7af77fe03d41db136e085d43503ad177002230c` |
| 19 | `theorem` | [uniform_tail_upper_bound_iff_of_variable_normalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/declarations/uniform-tail-upper-bound-iff-of-variable-normalization--20780fe4db05a790d2274b04.md) | 209 | `result-track:20780fe4db05a790d2274b04595776431a1e801b0b3c972789d91333f16f837d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
