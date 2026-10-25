# Verification target: GRWTSK.Logic.SimultaneousProofArchitecture

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e10da1269d04b918e3cb7940037e97d20958605",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/SimultaneousProofArchitecture.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e10da1269d04b918e3cb7940037e97d20958605`.

Source path: `GRWTSK/Logic/SimultaneousProofArchitecture.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/SimultaneousProofArchitecture.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TargetDisposition](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/targetdisposition--cb7db2a1fbcb675868a4d6f0.md) | 10 | `declaration-track:cb7db2a1fbcb675868a4d6f0f33695cd673adfbe0621e294e7acbb0c55b00f24` |
| 2 | `def` | [proof?](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/proof--23fbc5f22c99d592c2a53be9.md) | 22 | `declaration-track:23fbc5f22c99d592c2a53be969a13367aca6cc3e78077f79c8fad38b44aa6074` |
| 3 | `def` | [refutation?](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/refutation--3bb76732c9eb6c303ec49410.md) | 29 | `declaration-track:3bb76732c9eb6c303ec4941050bf0f61c3c8405b50a540233075a1b45024fb17` |
| 4 | `theorem` | [unresolved_proof?](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/unresolved-proof--af298fb5e9bab4006189d549.md) | 37 | `result-track:af298fb5e9bab4006189d549c76a4c40dca5a4d742b3db77a916c4d371f8528a` |
| 5 | `theorem` | [unresolved_refutation?](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/unresolved-refutation--f34bf02688cd78540d0807ab.md) | 42 | `result-track:f34bf02688cd78540d0807abd811759d8ce8312f20ba16689bb92e03b4183ae2` |
| 6 | `theorem` | [conditional_apply](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/conditional-apply--aa387cc39ddfaf7a9ee87315.md) | 46 | `result-track:aa387cc39ddfaf7a9ee873159792a2cde98e873e818a9b871b9f56f4042c38f8` |
| 7 | `structure` | [SimultaneousProofBundle](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/simultaneousproofbundle--7327b844dc0a0e64cd421576.md) | 54 | `declaration-track:7327b844dc0a0e64cd421576b0eb87ff9aa502c3c344b0d76bb0d5ab605f39cf` |
| 8 | `theorem` | [local](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/local--6a8ef32f25f054039278f1b7.md) | 64 | `result-track:6a8ef32f25f054039278f1b71a4ccec63d3e7c871d433e7ae9af9a1a49b6dcd5` |
| 9 | `def` | [retarget](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/retarget--6ac345dfdce3d22679849385.md) | 69 | `declaration-track:6ac345dfdce3d226798493857d3f4db76a9ba756d14e8bc143bd93122dcebbf0` |
| 10 | `theorem` | [retarget_local](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/retarget-local--2d2d0d9dfef7bc97a31b782f.md) | 76 | `result-track:2d2d0d9dfef7bc97a31b782faf92ab62a9198daabae5cb953cac85a69f4015c7` |
| 11 | `inductive` | [LocalIndex](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/localindex--111d77cbee8d91ca11a2dd0b.md) | 86 | `declaration-track:111d77cbee8d91ca11a2dd0bf6d00d863519433aeafac8ffa7d218fa645fe135` |
| 12 | `def` | [localClaim](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/localclaim--f1b39ef1e943459b8e896e88.md) | 92 | `declaration-track:f1b39ef1e943459b8e896e883fc90e0c3b751780b4c07d99b0efad2d96213224` |
| 13 | `def` | [refutedTargetBundle](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/refutedtargetbundle--d4ea38ec6933f32da227ba94.md) | 95 | `declaration-track:d4ea38ec6933f32da227ba94d87e9549fcbdc6d2ba45aee4e4e5db7ca5a490af` |
| 14 | `theorem` | [local_survives_refuted_target](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/local-survives-refuted-target--f9520ad3d60d254d512d1d73.md) | 100 | `result-track:f9520ad3d60d254d512d1d739e042a70ecf62e7b13db1e6f42a8777188c1061f` |
| 15 | `def` | [unresolvedTargetBundle](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/unresolvedtargetbundle--1e4fbf572019b0dda8916df4.md) | 104 | `declaration-track:1e4fbf572019b0dda8916df4b65df143c9bc4ca670cc1a0e0425df930fb54027` |
| 16 | `theorem` | [local_survives_unresolved_target](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/declarations/local-survives-unresolved-target--64c247c38afb2eacfbf60817.md) | 109 | `result-track:64c247c38afb2eacfbf60817ec2b2cd43627e453c9a9ddf59d1010cb0f8535cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
