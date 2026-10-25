# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mutex.Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e209810feb9faad79ac1d5c0d16428e1c8f6d610",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e209810feb9faad79ac1d5c0d16428e1c8f6d610`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean.json)

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
| 1 | `opaque` | [BaseMutexImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/basemuteximpl--1de5f0838a2a2823ac762347.md) | 24 | `declaration-track:1de5f0838a2a2823ac7623478811e426ba06b65014dba25d243e19f6a46c338e` |
| 2 | `def` | [BaseMutex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/basemutex--e6b51a41e697e939a687252f.md) | 31 | `declaration-track:e6b51a41e697e939a687252f3a3cd4fa8c40dc44320f2e85578d8ae8b6f3e048` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/instance--45ca822fa172159141d89889.md) | 33 | `declaration-track:45ca822fa172159141d89889de0598149336e574ccc6b22fd543b51dcbcabb88` |
| 4 | `opaque` | [BaseMutex.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/basemutex-new--a0f74cd2332b1310512bd7a0.md) | 37 | `declaration-track:a0f74cd2332b1310512bd7a0e9a4985680bad8a69ef553ec0324c840e8666e3c` |
| 5 | `opaque` | [BaseMutex.lock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/basemutex-lock--1754481ade36c940d67ccc97.md) | 47 | `declaration-track:1754481ade36c940d67ccc97e3f91c66c9c527e9ec6a53007e866b917ffbb127` |
| 6 | `opaque` | [BaseMutex.tryLock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/basemutex-trylock--9d0c63506035bba0ab74a7c7.md) | 60 | `declaration-track:9d0c63506035bba0ab74a7c73ba2d5d201df1264977be219aa93f9c22e3e1c6f` |
| 7 | `opaque` | [BaseMutex.unlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/basemutex-unlock--2569d05bab0634cad01fb038.md) | 70 | `declaration-track:2569d05bab0634cad01fb0389e371395745706bda5666235ad9a088f2ca8318b` |
| 8 | `opaque` | [CondvarImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/condvarimpl--5e86150146c1c80548382529.md) | 72 | `declaration-track:5e86150146c1c805483825296bd267b3225797a4b4e9b6a66921590e7c549347` |
| 9 | `def` | [Condvar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/condvar--a3155b120fe4d860208647c8.md) | 95 | `declaration-track:a3155b120fe4d860208647c8a6ce34fa52e0a80c770fadd11abd7ec101cf9cb9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/instance--7b82e96e8482a0e953309d95.md) | 97 | `declaration-track:7b82e96e8482a0e953309d95f2eb4035e237827d870fd6de28ccda340ba240d7` |
| 11 | `opaque` | [Condvar.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/condvar-new--8e9f58de0c327a6973fb7e5f.md) | 101 | `declaration-track:8e9f58de0c327a6973fb7e5f0bdfc58dfafc8c77155f488399d79f16891169a9` |
| 12 | `opaque` | [Condvar.wait](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/condvar-wait--ee9d3f0e882d3f164f19e1be.md) | 105 | `declaration-track:ee9d3f0e882d3f164f19e1beb8f70c6a10c16b3f2dc1baf01f6d5e865876f1ba` |
| 13 | `opaque` | [Condvar.notifyOne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/condvar-notifyone--467b424f824dee8d561474d8.md) | 109 | `declaration-track:467b424f824dee8d561474d874bb8a4273cf122edd6a36be904a5e4fdcad095e` |
| 14 | `opaque` | [Condvar.notifyAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/condvar-notifyall--92775a8c85484cbe292ee053.md) | 113 | `declaration-track:92775a8c85484cbe292ee0536ed0802302851e35ec62892edb85a98c108eac30` |
| 15 | `def` | [Condvar.waitUntil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/condvar-waituntil--eb012e78477c7d58f4872837.md) | 116 | `declaration-track:eb012e78477c7d58f48728372ef7b54d11f59d303c48d0de5b1ed538929a8f28` |
| 16 | `structure` | [Mutex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/mutex--f189e33b08105bec99b33b1a.md) | 127 | `declaration-track:f189e33b08105bec99b33b1aaf8c88b7e00e61a9ff53a6fcc7f4f10d2d33b0d2` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/instance--41756b4cdaa9f4a1ca060a5b.md) | 132 | `declaration-track:41756b4cdaa9f4a1ca060a5bf67e238702f7598d520dd73af544b3606da3c0d3` |
| 18 | `def` | [Mutex.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/mutex-new--36dc92b478d79da0be443f49.md) | 135 | `declaration-track:36dc92b478d79da0be443f49e06c6a61b2a6362457f4aa4c6dd75dc63207f075` |
| 19 | `def` | [Mutex.atomically](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/mutex-atomically--a595088b7e74872eb828eb36.md) | 144 | `declaration-track:a595088b7e74872eb828eb369a653072c2fe82c4bc168cb513df6ba64fcf5d35` |
| 20 | `def` | [Mutex.tryAtomically](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/mutex-tryatomically--9748d8e103350f4530473765.md) | 160 | `declaration-track:9748d8e103350f453047376529b078c87aba284fe644da383d3a8f93698f1a6b` |
| 21 | `def` | [Mutex.atomicallyOnce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean/declarations/mutex-atomicallyonce--c3359d663c3e75fe22a63b86.md) | 177 | `declaration-track:c3359d663c3e75fe22a63b86231203397fdb3ce793f300e4d1008e9834a57092` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
