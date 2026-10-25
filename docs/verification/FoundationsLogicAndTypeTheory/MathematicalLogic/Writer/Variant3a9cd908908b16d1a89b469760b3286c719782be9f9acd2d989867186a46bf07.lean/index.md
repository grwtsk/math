# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Writer.Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb7f27a00e44efb2b0592374d9b7e073e5972141",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb7f27a00e44efb2b0592374d9b7e073e5972141`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WriterT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/writert--8308c0959f89ffd7aa41b48f.md) | 32 | `declaration-track:8308c0959f89ffd7aa41b48ff4b4f9337f3309a76012ef46a2349f4189662c30` |
| 2 | `abbrev` | [Writer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/writer--064ea108d1c17601df0b55ca.md) | 35 | `declaration-track:064ea108d1c17601df0b55ca2d79374122549b5dcb261121ed11b36ce715692f` |
| 3 | `class` | [MonadWriter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/monadwriter--6797805ae9a1931d33032bcd.md) | 37 | `declaration-track:6797805ae9a1931d33032bcd428b537a7217429f23f8e853357a421042c368b8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--23f1577a8066c8cfe2380590.md) | 46 | `declaration-track:23f1577a8066c8cfe23805905493abc8a21bf943fb868e240e3308620e255449` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--2f9b4737907784ad139e5a26.md) | 51 | `declaration-track:2f9b4737907784ad139e5a26b8d0dd23fae29c1e41b3bb161af872304c54bd2e` |
| 6 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/mk--b7f50fa3251034eb5275554d.md) | 59 | `declaration-track:b7f50fa3251034eb5275554d577829af16df0554720da6abc3cdf43b08cd6bf2` |
| 7 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/run--7b4e13fee297b5a5046432ae.md) | 61 | `declaration-track:7b4e13fee297b5a5046432aec72123f6b9444381bfcd2a8384a4c174dbc798b8` |
| 8 | `def` | [runThe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/runthe--54275ba42da929b1e96c6fb0.md) | 63 | `declaration-track:54275ba42da929b1e96c6fb06d2d0fffa921113dc88a4bc3a9100e7cfb9774ca` |
| 9 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/ext--0d9f20bcf846b472a5efbd2f.md) | 66 | `result-track:0d9f20bcf846b472a5efbd2f3b71b52dc6fcae0f80db457ed22411c91a952e1a` |
| 10 | `def` | [monad](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/monad--3c22bb014140334c235f6f0c.md) | 79 | `declaration-track:3c22bb014140334c235f6f0cf8d3b343f286c7a591798a8ef08756ec6a9a2d75` |
| 11 | `def` | [liftTell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/lifttell--3262f27d7e1feea372eef8a4.md) | 88 | `declaration-track:3262f27d7e1feea372eef8a4f5186158646f8ee098e2fa84a72761c48721d8d0` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--b921bcd9a52d73a00a1720c9.md) | 91 | `declaration-track:b921bcd9a52d73a00a1720c95a77a939726f75d5e88e66c29bbc5b507a149a2f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--441e491b6698d3627f3ad362.md) | 92 | `declaration-track:441e491b6698d3627f3ad362fb3f4d7f925fb99462fc63e88ed0b7738a708ee9` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--83ff518a7eb73e6243bbfd3a.md) | 93 | `declaration-track:83ff518a7eb73e6243bbfd3a70a0cddb104ec8263edd9916159185c54c6526d1` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--15472caf411d8a57b5d0f94b.md) | 94 | `declaration-track:15472caf411d8a57b5d0f94b8635c43c4c030023c26eef1ffb6b706a6eadc6ee` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--5457841842be04124a8f8cff.md) | 96 | `declaration-track:5457841842be04124a8f8cff61b02591e14d2b6c9ca6d76103c19ed70160302d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--5460483e25c6f964c4dc978f.md) | 103 | `declaration-track:5460483e25c6f964c4dc978f5a562c3ef5bd3dd29e4e76143bd81eb656e0a2d2` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--a84ccef70072122ea74012d5.md) | 108 | `declaration-track:a84ccef70072122ea74012d5de59c6da646eb919281faea70786659c1ec98e93` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--1f522c5bdcb13c1b50c54b77.md) | 112 | `declaration-track:1f522c5bdcb13c1b50c54b772a0a2b6391e70ac90160950e9ea1f0e2f3315a83` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--d5ea0628569a04eccb0b8c4c.md) | 117 | `declaration-track:d5ea0628569a04eccb0b8c4c71600fda87fcdb19b4b55c62e6b15174849ac042` |
| 21 | `def` | [adapt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/adapt--f80a9ba5278044c5d081cd7f.md) | 120 | `declaration-track:f80a9ba5278044c5d081cd7f06082c4a48d5195d55b115755f6efdefab9a96a7` |
| 22 | `class` | [MonadWriterAdapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/monadwriteradapter--1489ccc6e6bca66bfe986146.md) | 132 | `declaration-track:1489ccc6e6bca66bfe9861462a3358c30f826b4cc146b48afc7bea812c272055` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--b851832da7c9175ea2b9e38a.md) | 141 | `declaration-track:b851832da7c9175ea2b9e38a6b24392c747ce48b8b9f2f7458a56fabc720d8d8` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/instance--9fc730445317c03aae1dd440.md) | 145 | `declaration-track:9fc730445317c03aae1dd4401874f6d7b637fa15d5dad1f319c7496c35647636` |
| 25 | `def` | [WriterT.equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant3a9cd908908b16d1a89b469760b3286c719782be9f9acd2d989867186a46bf07.lean/declarations/writert-equiv--1de0111bf8931bdf66a64a8e.md) | 151 | `declaration-track:1de0111bf8931bdf66a64a8e630356665dca9403e0569d3cbebcfd7d13fdf544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
