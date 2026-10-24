# Verification target: GRWTSK.Topology.GeneralTopology.EventuallyConst.Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5532aa4f7c61084d71fb4ab184df1e1e0bb60289",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5532aa4f7c61084d71fb4ab184df1e1e0bb60289`.

Source path: `GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Subsingleton` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EventuallyConst](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst--a0d2df413c7b6ed3a1d8a6d2.md) | 31 | `declaration-track:a0d2df413c7b6ed3a1d8a6d28a2af3eaa9013d188b9ee4968fb1fca0086fe34f` |
| 2 | `theorem` | [HasBasis.eventuallyConst_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/hasbasis-eventuallyconst-iff--8a5713c29cdea9c02d526243.md) | 33 | `result-track:8a5713c29cdea9c02d52624379ff6c55ac60c390979336f9982ee9126bd92c2b` |
| 3 | `theorem` | [HasBasis.eventuallyConst_iff'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/hasbasis-eventuallyconst-iff--bbcc50861188ac0db4e56962.md) | 37 | `result-track:bbcc50861188ac0db4e56962015ccc8346cbb53390af617dad2ade5433e4365e` |
| 4 | `lemma` | [eventuallyConst_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-iff-tendsto--c6f2f432a7fda3adbf61d6a4.md) | 43 | `result-track:c6f2f432a7fda3adbf61d6a41b80155237b8c652858ed5968c023b6fb4f76b56` |
| 5 | `theorem` | [EventuallyConst.of_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-of-tendsto--094bc99f599ff051813a48f2.md) | 49 | `result-track:094bc99f599ff051813a48f22fafdd58f05ce7ff9c87c3f8edf5fbae978bd045` |
| 6 | `theorem` | [eventuallyConst_iff_exists_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-iff-exists-eventuallyeq--6cf25207230111d98a1ff45a.md) | 52 | `result-track:6cf25207230111d98a1ff45a3c2e962c6a560de25c422aa0e2b32775b064e9ac` |
| 7 | `theorem` | [eventuallyConst_pred'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-pred--a372b347110e7f0d2b5ec7a7.md) | 58 | `result-track:a372b347110e7f0d2b5ec7a70cba6b63a6d32ae555feb776c7f5821835bf72ff` |
| 8 | `theorem` | [eventuallyConst_pred](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-pred--4f338b428a7005c402ea57f5.md) | 62 | `result-track:4f338b428a7005c402ea57f5d2f5ae37d9c0d3f26a615e7475cca1c0ef301d9b` |
| 9 | `theorem` | [eventuallyConst_set'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-set--1b1752bb88c8a304f1b54984.md) | 66 | `result-track:1b1752bb88c8a304f1b549846fd62ef7c0bb3f0b97dbb52490f2a1acd36fb460` |
| 10 | `theorem` | [eventuallyConst_set](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-set--75d4d598591557993f4bcf02.md) | 70 | `result-track:75d4d598591557993f4bcf025044e26b704af97433c83f096a26f08367aff513` |
| 11 | `theorem` | [eventuallyConst_preimage](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-preimage--52879c39fe85a9157bd6a9af.md) | 74 | `result-track:52879c39fe85a9157bd6a9af79193495c1c1fb69abaf18a2cfe30b209af0b466` |
| 12 | `theorem` | [EventuallyEq.eventuallyConst_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyeq-eventuallyconst-iff--eceb4508962e4a24ab1911fd.md) | 78 | `result-track:eceb4508962e4a24ab1911fd0ed2b918cca53bf01e5dd6b85ad938f2d9208b80` |
| 13 | `theorem` | [eventuallyConst_id](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-id--911863346c6c918fb4d191a2.md) | 82 | `result-track:911863346c6c918fb4d191a247a83b6cd895911153e208ea688bcef1589dae1b` |
| 14 | `lemma` | [bot](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/bot--81b0b260f225c5d7e6fb2a50.md) | 86 | `result-track:81b0b260f225c5d7e6fb2a50bed2f2c446186d16ea27042a204682518b02e0a7` |
| 15 | `lemma` | [const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/const--368216f57101a14bdd93f4e9.md) | 89 | `result-track:368216f57101a14bdd93f4e99f451b2ee505efded8407d134f9541698a5cd296` |
| 16 | `lemma` | [congr](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/congr--8952fb455e52be0f166bfdb4.md) | 92 | `result-track:8952fb455e52be0f166bfdb4a5f422d457cd1a04d17a9bc347c8b86b94103761` |
| 17 | `lemma` | [of_subsingleton_right](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/of-subsingleton-right--ead53004cc89b5aa43a73d18.md) | 96 | `result-track:ead53004cc89b5aa43a73d189ddd7b10e1bc4ad650611357e1420d98ef5b1f73` |
| 18 | `lemma` | [anti](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/anti--869980738f19cc810c2f5dcf.md) | 98 | `result-track:869980738f19cc810c2f5dcf9e6f47598ba9e7404cf89246edcd2e8ad1f5453d` |
| 19 | `lemma` | [of_subsingleton_left](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/of-subsingleton-left--cafc98678ff8e896efba2398.md) | 102 | `result-track:cafc98678ff8e896efba2398343f456086bdff7a1b66d20d632425b8c611aa7e` |
| 20 | `lemma` | [comp](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/comp--33914d6973e5d31d5967dc63.md) | 105 | `result-track:33914d6973e5d31d5967dc63847f590e7b7124c6aa675ff9fb7a91851934b31b` |
| 21 | `lemma` | [inv](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/inv--d4766f3d294199b2ba08c5fa.md) | 108 | `result-track:d4766f3d294199b2ba08c5fae2ef96f60d6b6086bfbd2315ca212e1ae4b36000` |
| 22 | `lemma` | [comp_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/comp-tendsto--1d3853b4b1000847f1a299cc.md) | 110 | `result-track:1d3853b4b1000847f1a299cc730303099387d4cb04555161e5ae50411b666b2c` |
| 23 | `lemma` | [apply](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/apply--24e64b799de0151f7b5bac5b.md) | 114 | `result-track:24e64b799de0151f7b5bac5b50954c58414768248da505d2f791af7ab7c8478b` |
| 24 | `lemma` | [comp₂](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/comp--7f85170576dd964681f88430.md) | 118 | `result-track:7f85170576dd964681f88430dc0b5725335cbe9bc0d8a5072d329712c20aa3c9` |
| 25 | `lemma` | [prodMk](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/prodmk--09acfd83a7231fc04f628a2a.md) | 123 | `result-track:09acfd83a7231fc04f628a2aa0bb41bb201dfb24e077fb431afb682d4beff292` |
| 26 | `lemma` | [mul](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/mul--d5b379358ebdf6960acbb3d2.md) | 131 | `result-track:d5b379358ebdf6960acbb3d2ad5b8a6702dbf62b122863a2c66269202b03440c` |
| 27 | `lemma` | [of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/of-mulindicator-const--541ac70313728648b080010c.md) | 138 | `result-track:541ac70313728648b080010c62a79169705148b163d518f3a3d15a5de9ad9e77` |
| 28 | `theorem` | [mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/mulindicator-const--d6c2f07c14b0f0282af6d62a.md) | 143 | `result-track:d6c2f07c14b0f0282af6d62abb1d054a94dbf2bcae005eba2ef16b4fd0c7e823` |
| 29 | `theorem` | [mulIndicator_const_iff_of_ne](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/mulindicator-const-iff-of-ne--600f03be6ed8154781753f6c.md) | 148 | `result-track:600f03be6ed8154781753f6cbcba4a5dbdac486e310220a29e084e0f853bac6d` |
| 30 | `theorem` | [mulIndicator_const_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/mulindicator-const-iff--230f6afe05c23dcf6b378134.md) | 153 | `result-track:230f6afe05c23dcf6b378134a8a99a40b52aa740137a05447034f201ba224107` |
| 31 | `lemma` | [eventuallyConst_atTop](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-attop--4e047ad1ae936c85878d10de.md) | 159 | `result-track:4e047ad1ae936c85878d10de2561fce41899a9b311ce05acf82cb1f3e07b7640` |
| 32 | `lemma` | [eventuallyConst_atTop_nat](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/declarations/eventuallyconst-attop-nat--71723f5f15f8cc17b0c9cdcb.md) | 164 | `result-track:71723f5f15f8cc17b0c9cdcb952a6150507311ddf4e4836a92b6cef7cc96bde6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
