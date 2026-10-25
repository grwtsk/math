# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContractTypology.Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f08166022f4594c9c8f2e40985d78fb5f507ad8c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f08166022f4594c9c8f2e40985d78fb5f507ad8c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ClaimStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean/declarations/claimstatus--31c9fba5b7ace664b10bd2b8.md) | 18 | `declaration-track:31c9fba5b7ace664b10bd2b89ce307058bd0b510aba0d28512811094e73e0153` |
| 2 | `structure` | [TypedClaim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean/declarations/typedclaim--b931d242b976107ca23df6e0.md) | 28 | `declaration-track:b931d242b976107ca23df6e069766aef6c660185ae07b039b0a830d64bbc4ad2` |
| 3 | `def` | [IsInternalProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean/declarations/isinternalproof--6a1e632a4101ec3d4414d59b.md) | 34 | `declaration-track:6a1e632a4101ec3d4414d59b9971a0482b1fac9bf1d01b35b38f0dc720928b82` |
| 4 | `def` | [IsContractBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean/declarations/iscontractboundary--9acb6bc2f5909dcdce992fac.md) | 37 | `declaration-track:9acb6bc2f5909dcdce992fac7fcbea81543976dabba5fe9796e1c30bd0692951` |
| 5 | `theorem` | [proved_ne_contract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean/declarations/proved-ne-contract--6c08110375e11e33681961af.md) | 42 | `result-track:6c08110375e11e33681961af998fa38d98e97d9abe5368c0c5bc268e7d459208` |
| 6 | `theorem` | [shaderMirror_ne_proved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean/declarations/shadermirror-ne-proved--cb9c94348383afe493825589.md) | 46 | `result-track:cb9c94348383afe49382558947265593b808986d2e79873e03c1dbff38ec474b` |
| 7 | `theorem` | [runtimeChecker_ne_proved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53.lean/declarations/runtimechecker-ne-proved--b0f9e94dba70d93ffd14c0ab.md) | 50 | `result-track:b0f9e94dba70d93ffd14c0ab923b4fe7367f0123a687ce9c67eb46e2367ffb60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
