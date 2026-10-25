# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cost.Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "015a4ced4d365f6af138d201be7de7e837f2ed7b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `015a4ced4d365f6af138d201be7de7e837f2ed7b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Tally` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExactCostVector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/exactcostvector--3e5fe36953f237506d84754d.md) | 12 | `declaration-track:3e5fe36953f237506d84754d80118e887c016a6f2d03efb6aa9ae092021ce39e` |
| 2 | `def` | [ExactCostVector.zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/exactcostvector-zero--e19cf4810614120e3e4e6c38.md) | 28 | `declaration-track:e19cf4810614120e3e4e6c3854f8f5bedb95c655013afa34078d181e2e5ebf17` |
| 3 | `def` | [ExactCostVector.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/exactcostvector-add--39a3b67f67f705f65cfbeda9.md) | 43 | `declaration-track:39a3b67f67f705f65cfbeda98f7e96bae97534467ca9e751be3f46d42bced439` |
| 4 | `structure` | [ReuseCost](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/reusecost--727aec7ce17312c41c521917.md) | 63 | `declaration-track:727aec7ce17312c41c521917232736bca653da436d4abb95013fa1a9ac9e0ef6` |
| 5 | `def` | [ReuseCost.fresh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/reusecost-fresh--4c995cb28e8c1b7b04295ff2.md) | 74 | `declaration-track:4c995cb28e8c1b7b04295ff2c0d4702b9b52684e511fdb6982c0d046e78ed1aa` |
| 6 | `def` | [ReuseCost.reused](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/reusecost-reused--cf712069ff9a289551d06d10.md) | 77 | `declaration-track:cf712069ff9a289551d06d10419cdefdc471ec237c55c4b08df494c1ceaf8d62` |
| 7 | `def` | [PositiveReuse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/positivereuse--c4315de983e75a31b58bd7f0.md) | 86 | `declaration-track:c4315de983e75a31b58bd7f0dd2263f3816344a06595ca9cd090f5c60255c8ed` |
| 8 | `structure` | [UnitTransparentEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/unittransparentencoding--f4f691890eb54fda8fcb5238.md) | 89 | `declaration-track:f4f691890eb54fda8fcb5238a4baf774175b17506fe0f126d103b448f87664b5` |
| 9 | `def` | [tallyEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/tallyencoding--1e8681434d7d325a348155a4.md) | 94 | `declaration-track:1e8681434d7d325a348155a491f06d3f7abb8ebff023e0e2e175674c5c5c0d95` |
| 10 | `theorem` | [tally_length_optimal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/tally-length-optimal--4e18506fbdf8c6521d6f1f19.md) | 98 | `result-track:4e18506fbdf8c6521d6f1f1997646abd4903525f8bb63814ad2519d32916a806` |
| 11 | `structure` | [BinaryTransparencyAccounting](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/declarations/binarytransparencyaccounting--93b62672592796cb2dcbb707.md) | 105 | `declaration-track:93b62672592796cb2dcbb707eacd3b7efd013b771182823c6d755d7a73c077c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
