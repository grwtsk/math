# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.ProofCoverage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2442265284f2c5e155ac68c63949e1cc5b467e27",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2442265284f2c5e155ac68c63949e1cc5b467e27`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [EvidenceGrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/evidencegrade--bbd1b3aea419fa70fefc78ce.md) | 23 | `declaration-track:bbd1b3aea419fa70fefc78cebac084245923183feee4edaa53fcc41fe00ff360` |
| 2 | `structure` | [ExploratoryCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/exploratorycap--4279913d0686b70df27f0403.md) | 32 | `declaration-track:4279913d0686b70df27f0403066b4fd40ec84f24a8165d85e1815873aaa0b07d` |
| 3 | `structure` | [FiniteCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/finitecap--e10daeacb11459ee57530d64.md) | 36 | `declaration-track:e10daeacb11459ee57530d64efca1ca4804a5759e102b089d01825b3977851c0` |
| 4 | `structure` | [NamedPremise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/namedpremise--42f9367873c7b7fb5097f40a.md) | 42 | `declaration-track:42f9367873c7b7fb5097f40a307c0781fff64d348225a7635ebd8a7820ebc274` |
| 5 | `def` | [PremisesHold](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/premiseshold--9c1f4219b396ac7e1efc2ae8.md) | 47 | `declaration-track:9c1f4219b396ac7e1efc2ae8fc8b994fe2692af75c9eec5d88dfc25745be1652` |
| 6 | `structure` | [ConditionalCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/conditionalcap--12633aec77f0ed6a8adc6fa5.md) | 51 | `declaration-track:12633aec77f0ed6a8adc6fa52fc991d6646220c6d008ea91d29fab224b2b346f` |
| 7 | `structure` | [UniformCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/uniformcap--a192bb2be48944af8ed72650.md) | 56 | `declaration-track:a192bb2be48944af8ed726509ff9b682b06781a09607f72c07fad29ec3d41ef7` |
| 8 | `structure` | [TerminalCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/terminalcap--5048d66f9e66f64ea4d20e8b.md) | 62 | `declaration-track:5048d66f9e66f64ea4d20e8b72756936348f32fbcdbd99dc9b44be7f333eeb15` |
| 9 | `theorem` | [finite_to_uniform](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/finite-to-uniform--85a3111ec4af545ca7f55334.md) | 66 | `result-track:85a3111ec4af545ca7f55334c9649003297e8940d4fd527699dc6352871470b0` |
| 10 | `theorem` | [conditional_to_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/conditional-to-terminal--813f1aa9af886bce92ff1b29.md) | 72 | `result-track:813f1aa9af886bce92ff1b29f1695525c0bf3fbbe0571ff3f36099d2737e8689` |
| 11 | `theorem` | [uniform_to_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/uniform-to-terminal--080024f4a091e16d5f6ead1a.md) | 78 | `result-track:080024f4a091e16d5f6ead1a6570c269b580bec8c4e7ad2ab372312eda8b53da` |
| 12 | `structure` | [OperationalPermit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/operationalpermit--3d28bb005085c777367ec3b5.md) | 84 | `declaration-track:3d28bb005085c777367ec3b5767e37dbb2bc7ec624fbb968635a9d2a1bd48414` |
| 13 | `structure` | [RightsPermit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/rightspermit--cc229326b9c1de0f7d8c3cdf.md) | 89 | `declaration-track:cc229326b9c1de0f7d8c3cdfc93def448a9b5034619c2c9058fd4875eb00ec46` |
| 14 | `structure` | [EffectPermit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/effectpermit--9397ee80e56d1bca330ff6b4.md) | 93 | `declaration-track:9397ee80e56d1bca330ff6b4b43ed02d660905e9f7859dc67f587c0c1c4e3ff8` |
| 15 | `theorem` | [effect_permit_authorized](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/effect-permit-authorized--e35f8d6292f5c83397f61c7d.md) | 98 | `result-track:e35f8d6292f5c83397f61c7dddefd59ff9b86f6496abff1f0b9f4b0e67517edf` |
| 16 | `theorem` | [effect_permit_rights](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/effect-permit-rights--11b3cbafd3bd42e65f369e0b.md) | 102 | `result-track:11b3cbafd3bd42e65f369e0bf6319dcdf9428a0b0dce40e6d96db9afc4d90211` |
| 17 | `theorem` | [no_false_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/no-false-terminal--6be744886fe3e14714b594df.md) | 107 | `result-track:6be744886fe3e14714b594df6633059448fabccb17301885a7d37c884b61616a` |
| 18 | `theorem` | [denied_effect_has_no_permit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence3f6a84c21547c5bf2cb68fcf.lean/declarations/denied-effect-has-no-permit--22ede9ac3a1be36c9635869a.md) | 113 | `result-track:22ede9ac3a1be36c9635869a3df3f4a3604c6f2677d08efcbf11ba900867b3fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
