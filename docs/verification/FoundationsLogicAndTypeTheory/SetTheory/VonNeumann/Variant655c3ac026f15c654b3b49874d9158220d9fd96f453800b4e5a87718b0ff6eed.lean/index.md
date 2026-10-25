# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.VonNeumann.Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b81921dc116b5f06783c204013566a0652bf0f5b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b81921dc116b5f06783c204013566a0652bf0f5b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vonNeumann](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann--bbb2b4b13df55a3f25549d38.md) | 38 | `declaration-track:bbb2b4b13df55a3f25549d38d141e94a5098a3e9d2cca94b01e06563b924793c` |
| 2 | `lemma` | [mem_vonNeumann'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/mem-vonneumann--2935f74f91f6655b05774d65.md) | 48 | `result-track:2935f74f91f6655b05774d651797d9b0a9ccbc48bb8caed2a94420c50eae5913` |
| 3 | `theorem` | [isTransitive_vonNeumann](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/istransitive-vonneumann--aa81d42b6fb132411abadc08.md) | 50 | `result-track:aa81d42b6fb132411abadc082993ed929ffed4678b4d11f10562797888e66841` |
| 4 | `theorem` | [vonNeumann_mem_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-mem-of-lt--ae3ea7fa700bc8f83e999b8f.md) | 55 | `result-track:ae3ea7fa700bc8f83e999b8fbc7e9d625236c9cd94428ca2c8c2772098335d1f` |
| 5 | `theorem` | [vonNeumann_subset_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-subset-of-le--0a25c4acee1c83a27a7896ff.md) | 58 | `result-track:0a25c4acee1c83a27a7896ffa11c0318ac6ab67db350f0a583bd379ededf3cdd` |
| 6 | `theorem` | [subset_vonNeumann](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/subset-vonneumann--6681cb1292c6747f222e72e7.md) | 61 | `result-track:6681cb1292c6747f222e72e711b439d7aa900774798605721a6f7f89b6645049` |
| 7 | `theorem` | [subset_vonNeumann_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/subset-vonneumann-self--d710b18117a2e66b714be80e.md) | 73 | `result-track:d710b18117a2e66b714be80eeba9fd4b0930bfb290ff1d6819169566ecd508be` |
| 8 | `theorem` | [mem_vonNeumann](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/mem-vonneumann--8373735554c55238e0050612.md) | 76 | `result-track:8373735554c55238e00506125c1079aa848e86671b77c8a21ee96bd29e6796c5` |
| 9 | `theorem` | [mem_vonNeumann_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/mem-vonneumann-succ--ab93456fcc77f630bd22d3c0.md) | 80 | `result-track:ab93456fcc77f630bd22d3c0248518646e54668ed7399e36e82f247a37d9e4cc` |
| 10 | `theorem` | [exists_mem_vonNeumann](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/exists-mem-vonneumann--c56f23e279d0ecc77c7b58e8.md) | 84 | `result-track:c56f23e279d0ecc77c7b58e8a71fc027784d8acc29b3c3814e9de1ad812a3dac` |
| 11 | `theorem` | [rank_vonNeumann](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/rank-vonneumann--0cc3c6f7de753f73d3c6deb7.md) | 88 | `result-track:0cc3c6f7de753f73d3c6deb7c38ae36fec9320badecc2026f1812b373ae3bc84` |
| 12 | `theorem` | [vonNeumann_mem_vonNeumann_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-mem-vonneumann-iff--118d00e249120f26b588d913.md) | 94 | `result-track:118d00e249120f26b588d913676312fb445fdcccaadc08293384a00424fa3295` |
| 13 | `theorem` | [vonNeumann_subset_vonNeumann_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-subset-vonneumann-iff--3880344442a5147ce68002b6.md) | 98 | `result-track:3880344442a5147ce68002b6f124b8bd666b27a258f708d8ff48e542c6cf6e54` |
| 14 | `theorem` | [mem_vonNeumann_of_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/mem-vonneumann-of-subset--6a4bc5e00a4b4712c38ef1e7.md) | 101 | `result-track:6a4bc5e00a4b4712c38ef1e76bca83dbdd1a1fac0750868ce10696303d75e0df` |
| 15 | `theorem` | [vonNeumann_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-strictmono--b1f3587f3d447d10ce2c45de.md) | 105 | `result-track:b1f3587f3d447d10ce2c45de880b84f41af4fc0929e4ff136ffe83a785761658` |
| 16 | `theorem` | [vonNeumann_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-injective--6443ed125363ffd63f7319d0.md) | 108 | `result-track:6443ed125363ffd63f7319d07af826bfc1509d63767558070b1413fa2b11349c` |
| 17 | `theorem` | [vonNeumann_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-inj--0080704ec789b97311e39f44.md) | 112 | `result-track:0080704ec789b97311e39f4408414b0479f0ec58d849da068435cf9899579c9a` |
| 18 | `theorem` | [vonNeumann_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-zero--59f50af7cb469feec5636731.md) | 116 | `result-track:59f50af7cb469feec5636731e4fe54781b4f1c11b18ee2a009894b858e9aef98` |
| 19 | `theorem` | [vonNeumann_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-add-one--7b29117298ed4737bfaee5d1.md) | 120 | `result-track:7b29117298ed4737bfaee5d1b0e35d62d0c076be6cbb989646c5a315f3c5020b` |
| 20 | `theorem` | [vonNeumann_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-succ--ccb46dcc8e4fca2918aae90c.md) | 124 | `result-track:ccb46dcc8e4fca2918aae90c8256865abeeebc503b6a26782b803a4251380dcc` |
| 21 | `theorem` | [vonNeumann_of_isSuccPrelimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/vonneumann-of-issuccprelimit--3d8cb6d978360d5347f4f653.md) | 127 | `result-track:3d8cb6d978360d5347f4f6535c1f06bc91b59e9787569837a8f689cca502b6bc` |
| 22 | `theorem` | [iUnion_vonNeumann](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/iunion-vonneumann--6db4d11b45393af366e065a5.md) | 131 | `result-track:6db4d11b45393af366e065a591d6bc409bb12fae294e0f35d90e681ee66d3f74` |
| 23 | `theorem` | [_root_.Ordinal.toZFSet_subset_vonNeumann](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/root-ordinal-tozfset-subset-vonneumann--7ae253e928285eb9d1bdf116.md) | 134 | `result-track:7ae253e928285eb9d1bdf1168d7bcc2ed7210a6fe8847d49552a2dcad1bd7578` |
| 24 | `lemma` | [_root_.Ordinal.card_le_card_vonNeumann](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/root-ordinal-card-le-card-vonneumann--2a4404b2bd72ce033ae32f13.md) | 137 | `result-track:2a4404b2bd72ce033ae32f1342db0f77735e6bee70528a834f6c7210841dbe41` |
| 25 | `theorem` | [card_vonNeumann](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/declarations/card-vonneumann--d8cb9450c2927040c37d2e77.md) | 141 | `result-track:d8cb9450c2927040c37d2e77fb8a8bbd2d10afac4dc46e3ff24a2fc786fb1e54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
