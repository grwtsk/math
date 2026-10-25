# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrM.Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2ff62fb683154647e7bfc58d4511d644c67ae42",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2ff62fb683154647e7bfc58d4511d644c67ae42`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean.json)

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
| 1 | `inductive` | [CtorInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/ctorinfo--c135628dd47661f28a0c1d93.md) | 25 | `declaration-track:c135628dd47661f28a0c1d93ce2dd6bc6dad0ba4363881ad4f19a21616ccb3e9` |
| 2 | `def` | [CtorInfo.getName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/ctorinfo-getname--140065d7c466c648553a4c97.md) | 30 | `declaration-track:140065d7c466c648553a4c97bb0e8cdfa1d1f8cb2c08ff964fd8af3da87ec64a` |
| 3 | `def` | [CtorInfo.getNumParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/ctorinfo-getnumparams--9bd464228126ced9d0bfbee8.md) | 35 | `declaration-track:9bd464228126ced9d0bfbee8de218d8749aedb940f1cc76f7e3f908368961853` |
| 4 | `def` | [CtorInfo.getNumFields](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/ctorinfo-getnumfields--734fcf63b24211b77ce0c0be.md) | 39 | `declaration-track:734fcf63b24211b77ce0c0bedaf3ae3a4a518bf5764ed9ff566aded1010de1a0` |
| 5 | `structure` | [DiscrM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/discrm-context--d7db97341975e9188b5903da.md) | 44 | `declaration-track:d7db97341975e9188b5903da2ee4792f4d6f9776fcaa39830d762d179cac03c9` |
| 6 | `abbrev` | [DiscrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/discrm--f5704ae15634494c245ec90b.md) | 58 | `declaration-track:f5704ae15634494c245ec90b9d223ccf293c1a3cf8eb3daf90b48c6fce690ce3` |
| 7 | `def` | [findCtor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/findctor--fe26a51968d0b7ea48ccee2c.md) | 65 | `declaration-track:fe26a51968d0b7ea48ccee2c1d03ad34e604e176e37eeae9973787cf3bca4b5e` |
| 8 | `def` | [findCtorName?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/findctorname--333dcec6079629b9c5cca27c.md) | 74 | `declaration-track:333dcec6079629b9c5cca27cb59859d035ad23832be96c7866eb3892ea3c1080` |
| 9 | `def` | [getIndInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/getindinfo--d85d22c73dc6e6906b296d2b.md) | 81 | `declaration-track:d85d22c73dc6e6906b296d2b0dae01b27d7cc5e6fb92489f37d0aa4264422eb9` |
| 10 | `def` | [withDiscrCtorImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/withdiscrctorimp--fbac181c86adffc97661a7ab.md) | 96 | `declaration-track:fbac181c86adffc97661a7ab7fe199ba487d14b0d857e27172f363869fe1d4f0` |
| 11 | `def` | [withDiscrCtor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/withdiscrctor--d6171122f68c281307dd2c8e.md) | 116 | `declaration-track:d6171122f68c281307dd2c8e14c1c947ab6a679df8ae5b4ee85950134fc18014` |
| 12 | `def` | [simpCtorDiscrCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/declarations/simpctordiscrcore--ac4b26b06c00516361852c75.md) | 120 | `declaration-track:ac4b26b06c00516361852c75248c4e8a6e79e447d1537d1ecfb8a781711fc11b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
