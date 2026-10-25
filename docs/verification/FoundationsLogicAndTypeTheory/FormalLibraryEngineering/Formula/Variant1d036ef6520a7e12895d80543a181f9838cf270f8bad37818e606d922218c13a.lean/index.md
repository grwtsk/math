# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Formula.Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "087427c5550df4ee32ca136ca75f42b89a0a08a0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `087427c5550df4ee32ca136ca75f42b89a0a08a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [join](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/join--05938db126f16d3f4c5874da.md) | 17 | `declaration-track:05938db126f16d3f4c5874da5f15ef30df3a92ea53e5a337852df2f797f8c7c4` |
| 2 | `abbrev` | [meet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/meet--3c7f6e6f0f2f50233436ed2b.md) | 20 | `declaration-track:3c7f6e6f0f2f50233436ed2b4c077690763ac0fa41eeb7262f4ea0b972be7040` |
| 3 | `abbrev` | [compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/compl--aa15ebf672683cb4dfef8987.md) | 23 | `declaration-track:aa15ebf672683cb4dfef8987a7531af89aa13d4ccc468927c163a7f1136f3614` |
| 4 | `abbrev` | [bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/bot--66207120c25194b923e9f4c7.md) | 26 | `declaration-track:66207120c25194b923e9f4c7f9a86bde54988f5449b9208302c9296c1a1493fd` |
| 5 | `abbrev` | [top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/top--41ca19cdef2e7c42743cba74.md) | 29 | `declaration-track:41ca19cdef2e7c42743cba7485d8230bc2894185ef281b830a2a883448ebf3ef` |
| 6 | `theorem` | [semantic_join_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-join-bot--ba4fa56a9365a0b43746d8ca.md) | 32 | `result-track:ba4fa56a9365a0b43746d8ca11df78df9d3f3b5c63c1af32799dc40eaa1074e1` |
| 7 | `theorem` | [semantic_meet_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-meet-top--34f83269d048e23dd03c6ccd.md) | 37 | `result-track:34f83269d048e23dd03c6ccd585809e5c82f3a93147a9c75b1ff33b7c07153a9` |
| 8 | `theorem` | [semantic_join_idem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-join-idem--10cf61790aee9203bdbcd26e.md) | 42 | `result-track:10cf61790aee9203bdbcd26e9b30312c63fcbcbbebd7753faab35326c3616d91` |
| 9 | `theorem` | [semantic_meet_idem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-meet-idem--2f83ce1d2e8bf42d9fea79f1.md) | 47 | `result-track:2f83ce1d2e8bf42d9fea79f1ad0d35e0e3ce7ee4cfbc3b9fa7d23e69f971f1ae` |
| 10 | `theorem` | [semantic_join_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-join-top--3faafa79fc5479241d77b481.md) | 52 | `result-track:3faafa79fc5479241d77b4819a5a30fd58d0728a1386018dc0c80f550f9ffaaa` |
| 11 | `theorem` | [semantic_meet_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-meet-bot--9c8130d29c441c157b8b7e8b.md) | 57 | `result-track:9c8130d29c441c157b8b7e8bfe25abdd5aa57c2b8c636c6d0eb75726eff031d9` |
| 12 | `theorem` | [semantic_join_absorb](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-join-absorb--6e9d92311432be0bd60a8a7f.md) | 62 | `result-track:6e9d92311432be0bd60a8a7f3cc9c8beb3e143a3adaab4f0a2a57af78a089790` |
| 13 | `theorem` | [semantic_meet_absorb](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-meet-absorb--ea05a6a10919566c456a7873.md) | 67 | `result-track:ea05a6a10919566c456a7873ef79f41e5d7718da7a828df24e90c62abe909efb` |
| 14 | `theorem` | [semantic_join_meet_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-join-meet-distrib--3770504d542aa6f0c8007af5.md) | 72 | `result-track:3770504d542aa6f0c8007af5afaf04afee87413d8df6bb8bf32138dc3e5bfff9` |
| 15 | `theorem` | [semantic_meet_join_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-meet-join-distrib--fe61ff5a7baedf2ec2e080ff.md) | 79 | `result-track:fe61ff5a7baedf2ec2e080ff4e986ddec8a28887d14845e9a355dc88d2153f68` |
| 16 | `theorem` | [semantic_join_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-join-compl--1129a0a76da8c24b86f1ac26.md) | 86 | `result-track:1129a0a76da8c24b86f1ac2614702ec335b2405e9813602b73c6e0513086370e` |
| 17 | `theorem` | [semantic_meet_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-meet-compl--befb98bc307ab5f369d94db5.md) | 91 | `result-track:befb98bc307ab5f369d94db571e32dccf1d6a1a1b1f52b9c06b5b6971d2fb2d2` |
| 18 | `theorem` | [semantic_compl_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-compl-unique--f581f3feedde8f60e94ba5c1.md) | 96 | `result-track:f581f3feedde8f60e94ba5c1d9039bffbcc4cc42290adc60500ba10035bc7bef` |
| 19 | `theorem` | [semantic_bot_ne_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant1d036ef6520a7e12895d80543a181f9838cf270f8bad37818e606d922218c13a.lean/declarations/semantic-bot-ne-top--7de46871b16ca9f797444ca6.md) | 106 | `result-track:7de46871b16ca9f797444ca653d69836399a83a7d90e19d5199689843755a27d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
