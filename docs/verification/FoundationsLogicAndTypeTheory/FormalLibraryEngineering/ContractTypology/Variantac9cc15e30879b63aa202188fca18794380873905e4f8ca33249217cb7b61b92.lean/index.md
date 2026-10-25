# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContractTypology.Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f794af4cfe474e56ffbc4ec15611dac39c243384",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f794af4cfe474e56ffbc4ec15611dac39c243384`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ClaimStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean/declarations/claimstatus--5fe05be93d05efbd999e2c90.md) | 26 | `declaration-track:5fe05be93d05efbd999e2c90d5cdf1ddac4039a4a2e133f4b9835941d7df2abd` |
| 2 | `structure` | [TypedClaim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean/declarations/typedclaim--c7db50c531600292019dfa2c.md) | 36 | `declaration-track:c7db50c531600292019dfa2c1fdeb16afbe2e2883790a7dc190a8fc93ef3baae` |
| 3 | `def` | [IsInternalProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean/declarations/isinternalproof--04a5c05990e6df429e7e7881.md) | 42 | `declaration-track:04a5c05990e6df429e7e7881d18337bf1192f764bdc55ac4dcd35982e620c4d2` |
| 4 | `def` | [IsContractBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean/declarations/iscontractboundary--ed3ee990265cb1988f06783d.md) | 45 | `declaration-track:ed3ee990265cb1988f06783d37a7c01895b643c868e1d4ce0db2735873f27843` |
| 5 | `theorem` | [proved_ne_contract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean/declarations/proved-ne-contract--67997e394216d7fb61a75c5f.md) | 50 | `result-track:67997e394216d7fb61a75c5f1a3a3f3b3f8579e77e2fec41d940a1a62556b1bb` |
| 6 | `theorem` | [shaderMirror_ne_proved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean/declarations/shadermirror-ne-proved--049d6459edb5818a28b51e6a.md) | 54 | `result-track:049d6459edb5818a28b51e6a9c46481341e60be672aea06803fc68cc131bfaf3` |
| 7 | `theorem` | [runtimeChecker_ne_proved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContractTypology/Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92.lean/declarations/runtimechecker-ne-proved--8fd415b376f110d5f33a3090.md) | 58 | `result-track:8fd415b376f110d5f33a309004e43b32a8d1998f54ffb103cef49674680c66ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
