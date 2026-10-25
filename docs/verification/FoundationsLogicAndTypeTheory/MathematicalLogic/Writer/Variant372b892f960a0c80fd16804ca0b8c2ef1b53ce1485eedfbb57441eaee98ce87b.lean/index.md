# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Writer.Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "622bee67fc87b1c0e317b56861161c0ce81f045e",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `622bee67fc87b1c0e317b56861161c0ce81f045e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean.json)

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
| 1 | `def` | [WriterT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/writert--57c6bcd34f67946fdb1bc52a.md) | 33 | `declaration-track:57c6bcd34f67946fdb1bc52acb92cfab6f21808d5c3806a628996d503aad7476` |
| 2 | `abbrev` | [Writer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/writer--fcca6de6ae725bdbd20f461c.md) | 36 | `declaration-track:fcca6de6ae725bdbd20f461c28e28af2c5ee4684953988f8a9ce59817d73845c` |
| 3 | `class` | [MonadWriter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/monadwriter--d8e78bcb135d238251871965.md) | 38 | `declaration-track:d8e78bcb135d238251871965e627fb6f455e62ec256106b8c3c8fec9019849f5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--4ffd88c05424162c6257e1df.md) | 50 | `declaration-track:4ffd88c05424162c6257e1dfa92d910b4a2324723a3ce2a4652806b56e604c73` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--0cc5c2dacc9b89a333d419aa.md) | 55 | `declaration-track:0cc5c2dacc9b89a333d419aaef310fbc4bca757f1ee65cc1723f48b259646b35` |
| 6 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/mk--2835ebadc00950c26b8c74c5.md) | 63 | `declaration-track:2835ebadc00950c26b8c74c57dfcb950cab8eb1bec42183fa10eb36781022965` |
| 7 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run--d9255b4f6995877341bfa064.md) | 65 | `declaration-track:d9255b4f6995877341bfa064eed0f588a593ce812afca3144ce14feddde54b62` |
| 8 | `abbrev` | [runThe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/runthe--30ea6060476e91c1a2a78fb9.md) | 67 | `declaration-track:30ea6060476e91c1a2a78fb95009e82b4e4bd7ff537b7501e1ba5a70ab04c180` |
| 9 | `theorem` | [run_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run-mk--592699fb6d7274a2e1e3febd.md) | 69 | `result-track:592699fb6d7274a2e1e3febd3ea9c5cc32d28d0fcb5b1586573484f855754ebd` |
| 10 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/ext--35d62d6eb28f006578000d2e.md) | 72 | `result-track:35d62d6eb28f006578000d2e4e6190a0f884d1cb1411dfbaf1c50f4a1a6a3c7d` |
| 11 | `def` | [monad](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/monad--ccc576c181a5477caf6b8b2d.md) | 85 | `declaration-track:ccc576c181a5477caf6b8b2d0f52e3f8d0994cd43a4992323033323b1d7932fe` |
| 12 | `theorem` | [run_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run-pure--5faaf124cb029793bc4a7340.md) | 93 | `result-track:5faaf124cb029793bc4a73406ff822b0fda37adb3cb8a5c965b6ac0fdf768b81` |
| 13 | `theorem` | [run_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run-map--157cf57ef56a3a65ae442f16.md) | 99 | `result-track:157cf57ef56a3a65ae442f164128ab033bfbf3f0c83034acd36f224e963274e9` |
| 14 | `theorem` | [run_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run-bind--a892d4b6e7feffb7e37e28f5.md) | 105 | `result-track:a892d4b6e7feffb7e37e28f5f1ef1d63775d7daa43adebd956297e20bc77eac9` |
| 15 | `def` | [liftTell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/lifttell--c89b66d2565ac5d255a49c77.md) | 114 | `declaration-track:c89b66d2565ac5d255a49c772775ab38453c463864fbb0d9841c0be847b4a26f` |
| 16 | `theorem` | [run_liftM](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run-liftm--9e895b07e10209363e0ea2a8.md) | 118 | `result-track:9e895b07e10209363e0ea2a8b52a0ad4786c3eb3115cf3edc7209a0fd6230d1f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--5553a00bac0d90a48cd9a600.md) | 123 | `declaration-track:5553a00bac0d90a48cd9a60099004dae324df160553a63f120242d0cf7bcb938` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--ac620381c074c5129de7bfd7.md) | 124 | `declaration-track:ac620381c074c5129de7bfd7f0dcb7a3a8663c9312a1e9c9cae4c6044fc90abb` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--50aca1818fb50a3283e22f1a.md) | 125 | `declaration-track:50aca1818fb50a3283e22f1a35c142af0056ae5ccdada5f8b370830bb7dccd28` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--1c1ea521442a23cf8f69e983.md) | 126 | `declaration-track:1c1ea521442a23cf8f69e9834cd0e3b0bcf4bcf0116dd55e71fef8f6c59f7211` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--611a4553ca4ad2a966bc5b3c.md) | 128 | `declaration-track:611a4553ca4ad2a966bc5b3cc88ef88809e7be1af469f994c8777edfa0837d11` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--7d994e046805f5c620f5d165.md) | 134 | `declaration-track:7d994e046805f5c620f5d165e1a586a79d73973e8eb412cadf369e0c1f05c8cc` |
| 23 | `theorem` | [run_tell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run-tell--be6a7367880dc694ca8eb120.md) | 140 | `result-track:be6a7367880dc694ca8eb1207e70676be0b152845d5bdba611297d784f913484` |
| 24 | `theorem` | [run_listen](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run-listen--57d4c2151755f9f57fc51bd6.md) | 144 | `result-track:57d4c2151755f9f57fc51bd65b21abd907b1aa3e4c44d1ff3eb14920dea9ce64` |
| 25 | `theorem` | [run_pass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run-pass--32e35263bd4ce14289a23198.md) | 149 | `result-track:32e35263bd4ce14289a23198e1ef44853f56a9409b207652b92ef73dbd246190` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--d5bddcb91e0d34d60194ef12.md) | 153 | `declaration-track:d5bddcb91e0d34d60194ef1298526d871eeb3c085e7bd876e9f174f403fe8fc5` |
| 27 | `theorem` | [run_throw](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run-throw--fd4e37cf05fe7591d9b5f889.md) | 158 | `result-track:fd4e37cf05fe7591d9b5f8893efe7407e2536dfc78f9166c45166f4ff0ebe5df` |
| 28 | `theorem` | [run_tryCatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/run-trycatch--b5823fc9c6edfca4f6facd3e.md) | 163 | `result-track:b5823fc9c6edfca4f6facd3ead7e70aac9c361491ac04a9b08ebeae3bc47ba12` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--5c463efe9c11ac49cb4c8a8f.md) | 168 | `declaration-track:5c463efe9c11ac49cb4c8a8f27161ec86a21cff5e1d90964d2a15c95be392f5e` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--129ad269059af6d6cccef005.md) | 173 | `declaration-track:129ad269059af6d6cccef0054e9464f9f13012bb5abff721c04b84ccd3723eb7` |
| 31 | `def` | [adapt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/adapt--98439d5ccc237e41af00b5b7.md) | 176 | `declaration-track:98439d5ccc237e41af00b5b759aad18962d6e0dd0111d55f265d75157bca93a7` |
| 32 | `class` | [MonadWriterAdapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/monadwriteradapter--bdb567d1ccdd480434c51d07.md) | 188 | `declaration-track:bdb567d1ccdd480434c51d076439dd06b07eba70770f93919b6ff31c1f12fe24` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--1227dd1e5fe7428600e6efc3.md) | 197 | `declaration-track:1227dd1e5fe7428600e6efc38b2f7e8e484e3cb2cb8f8222476ba3ecff747d6c` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/instance--6216ea395bacf172e66eb83a.md) | 201 | `declaration-track:6216ea395bacf172e66eb83a9452c33740dd486f1fef6329829635b719b2153b` |
| 35 | `def` | [WriterT.equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean/declarations/writert-equiv--761b7e2e2edb45fcb463d455.md) | 207 | `declaration-track:761b7e2e2edb45fcb463d455cb4793c8bd1cadc5e8d04fc34d990ac7c1b19d4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
