# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Finite.Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8408c7dc352e6b5daa7bcdccb51396fb0172c9c0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8408c7dc352e6b5daa7bcdccb51396fb0172c9c0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Deprecated.Cardinal.PartENat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card--405b7be9fa8fd0481ab5d429.md) | 26 | `declaration-track:405b7be9fa8fd0481ab5d429cb5186d16cae159370b8ef85af48319df9d52b43` |
| 2 | `theorem` | [card_eq_coe_fintype_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-eq-coe-fintype-card--1e59cc3c4b5ce713f6ab5c1b.md) | 33 | `result-track:1e59cc3c4b5ce713f6ab5c1b01d66ac844ac2f22693b1e8acfd5996cfad9dcc8` |
| 3 | `theorem` | [card_eq_top_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-eq-top-of-infinite--2fea96ee552c889076004366.md) | 37 | `result-track:2fea96ee552c8890760043668e91dd3e3c0e28ef993618eb32c11693f57483b0` |
| 4 | `theorem` | [card_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-sum--90c84a1e2783a10efe6b7566.md) | 41 | `result-track:90c84a1e2783a10efe6b756647e357c73227a18865793f1479a8d4964d0b5b30` |
| 5 | `theorem` | [card_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-congr--741a90da639864acea8fa646.md) | 45 | `result-track:741a90da639864acea8fa6469d9fd3f72aaa2fe50f6a7efa69ecee4916b4a66b` |
| 6 | `lemma` | [card_ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-ulift--59469b668c1c15d6fa814607.md) | 48 | `result-track:59469b668c1c15d6fa814607822898acbbc215d096c2f3a7187497ab531f883d` |
| 7 | `lemma` | [card_plift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-plift--5d820b9f2e6aa66541f3b31d.md) | 50 | `result-track:5d820b9f2e6aa66541f3b31df8b954d0719c33b21304acc521ef9e8bcdb4509d` |
| 8 | `theorem` | [card_image_of_injOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-image-of-injon--2083e30b414e37cfd0636655.md) | 52 | `result-track:2083e30b414e37cfd063665522d0030165bd49031ee20637521bd34d87ce8cb9` |
| 9 | `theorem` | [card_image_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-image-of-injective--1d02f9d32a7bb4809fb4ecdb.md) | 56 | `result-track:1d02f9d32a7bb4809fb4ecdbd9bd81e2267239ad4cc274b0f780046578c5e765` |
| 10 | `theorem` | [_root_.Cardinal.natCast_le_toPartENat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/root-cardinal-natcast-le-topartenat-iff--7f68e5094a4ef6690e6c7620.md) | 62 | `result-track:7f68e5094a4ef6690e6c7620a94c14a5a9dfc9aaf0a45d6d341488df80b45739` |
| 11 | `theorem` | [_root_.Cardinal.toPartENat_le_natCast_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/root-cardinal-topartenat-le-natcast-iff--cdb27054afecf8db987b0f31.md) | 67 | `result-track:cdb27054afecf8db987b0f318a5a0f16e1b31e25b3c0803431fdd8eb195d7726` |
| 12 | `theorem` | [_root_.Cardinal.natCast_eq_toPartENat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/root-cardinal-natcast-eq-topartenat-iff--5f852264aad73ff5ce675504.md) | 72 | `result-track:5f852264aad73ff5ce675504fa0f3c81b9ecb01ed7ce15e63399d8ea2423ffd2` |
| 13 | `theorem` | [_root_.Cardinal.toPartENat_eq_natCast_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/root-cardinal-topartenat-eq-natcast-iff--6690a7e19a5ed620dfc32277.md) | 78 | `result-track:6690a7e19a5ed620dfc32277838ae9ff92c78d21e3e9fc28a42ca6a44d6aae47` |
| 14 | `theorem` | [_root_.Cardinal.natCast_lt_toPartENat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/root-cardinal-natcast-lt-topartenat-iff--67d6ac2a0fd530ea549cbddd.md) | 83 | `result-track:67d6ac2a0fd530ea549cbddddb263d44f29252373a44f6aac874ea35016003ad` |
| 15 | `theorem` | [_root_.Cardinal.toPartENat_lt_natCast_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/root-cardinal-topartenat-lt-natcast-iff--5bf24b8a6257b65444b85060.md) | 88 | `result-track:5bf24b8a6257b65444b850601c120c18485170b0e8e69d6b43fc39431e7b5287` |
| 16 | `theorem` | [card_eq_zero_iff_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-eq-zero-iff-empty--68ce7d70ffa12342f42786b6.md) | 92 | `result-track:68ce7d70ffa12342f42786b6ca1bfe24d6baa34a3477b138255cbb68781a9247` |
| 17 | `theorem` | [card_le_one_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-le-one-iff-subsingleton--07a4ecaedd1f712a68035996.md) | 98 | `result-track:07a4ecaedd1f712a6803599628d0d13aafcd6147eb141befc67938e3b3339930` |
| 18 | `theorem` | [one_lt_card_iff_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/one-lt-card-iff-nontrivial--d8efc430eef9e1d18dacd6ee.md) | 104 | `result-track:d8efc430eef9e1d18dacd6ee9be44cd1d665185b7b1d99189264999cf700f5d1` |
| 19 | `theorem` | [card_eq_coe_natCard](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.lean/declarations/card-eq-coe-natcard--71bee3e358f6e5dcd36206cc.md) | 112 | `result-track:71bee3e358f6e5dcd36206cc0936c3ae636637e648eb0e7ee61cf82f501dfa4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
