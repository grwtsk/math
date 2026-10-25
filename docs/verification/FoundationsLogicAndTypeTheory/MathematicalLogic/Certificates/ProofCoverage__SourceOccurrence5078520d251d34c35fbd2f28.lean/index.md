# Verification target: GRWTSK.Logic.Certificates.ProofCoverage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2442265284f2c5e155ac68c63949e1cc5b467e27",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Certificates/ProofCoverage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2442265284f2c5e155ac68c63949e1cc5b467e27`.

Source path: `GRWTSK/Logic/Certificates/ProofCoverage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Certificates/ProofCoverage.lean.json)

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
| 1 | `inductive` | [EvidenceGrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/evidencegrade--30ee81cffb97bd00f3d87855.md) | 23 | `declaration-track:30ee81cffb97bd00f3d87855693393d04883dbd85dc4afff8979fc4ddc2849db` |
| 2 | `structure` | [ExploratoryCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/exploratorycap--c2bd545f23438b6d954ad3e3.md) | 32 | `declaration-track:c2bd545f23438b6d954ad3e3cd88427ae25cb4d1ab9ec39004041c48079a3ef2` |
| 3 | `structure` | [FiniteCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/finitecap--bb9daf67d14bf650c4783181.md) | 36 | `declaration-track:bb9daf67d14bf650c4783181e5e89d6928965611e2a3ce7a5ce98ffca000d523` |
| 4 | `structure` | [NamedPremise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/namedpremise--74616fa7d9c09993472e8af6.md) | 42 | `declaration-track:74616fa7d9c09993472e8af6ac5a3d748eacb08c597d3d7f09bc929487672a84` |
| 5 | `def` | [PremisesHold](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/premiseshold--472e8d5db7adde38a0d10cae.md) | 47 | `declaration-track:472e8d5db7adde38a0d10cae4e58888efafa6d3a74d1b9d31a876a64d46e7534` |
| 6 | `structure` | [ConditionalCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/conditionalcap--a879e7c250559f95a0ac3c53.md) | 51 | `declaration-track:a879e7c250559f95a0ac3c53a1cb21b9071d2b4828ff299047cdbcf2f3c9bc12` |
| 7 | `structure` | [UniformCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/uniformcap--e9cbb851b2febf71ee1c9a23.md) | 56 | `declaration-track:e9cbb851b2febf71ee1c9a232d8c2657f5c31fba27d0b90988a6b740e7b67f03` |
| 8 | `structure` | [TerminalCap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/terminalcap--01e58492646f36759cb1537e.md) | 62 | `declaration-track:01e58492646f36759cb1537e9ee9a175396dbcd5b6dffb8e8590f5daaeaf8d1d` |
| 9 | `theorem` | [finite_to_uniform](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/finite-to-uniform--0f8052995cbad85728fbba06.md) | 66 | `result-track:0f8052995cbad85728fbba0665169d96fce66718bd4b07a1ff97a5a4ccd1a12c` |
| 10 | `theorem` | [conditional_to_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/conditional-to-terminal--0f2c517c5d38466dad411074.md) | 72 | `result-track:0f2c517c5d38466dad411074eaf8e7bb682e6ddc88119ddc0b48aebb111e2144` |
| 11 | `theorem` | [uniform_to_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/uniform-to-terminal--25be25a1df9c7be9ede79a1b.md) | 78 | `result-track:25be25a1df9c7be9ede79a1bb0a55eca7064a47e97b1d59b27649b06c061ad24` |
| 12 | `structure` | [OperationalPermit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/operationalpermit--36ad150b709d23e6d193a6e7.md) | 84 | `declaration-track:36ad150b709d23e6d193a6e7e041f1c67165e2e39f3c2f8473fdfde082e45e99` |
| 13 | `structure` | [RightsPermit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/rightspermit--a709872acb59c6adbeb47a9d.md) | 89 | `declaration-track:a709872acb59c6adbeb47a9d0effe9309ce9eee86a50a54d8b27120761e4c4b3` |
| 14 | `structure` | [EffectPermit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/effectpermit--728588c0eb7f4473913f52bf.md) | 93 | `declaration-track:728588c0eb7f4473913f52bf57e3de8db1828a6e290ce13701bbaa2c810c3bd7` |
| 15 | `theorem` | [effect_permit_authorized](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/effect-permit-authorized--fb1df3cd5cfa743619bad585.md) | 98 | `result-track:fb1df3cd5cfa743619bad5850378dce141cb50551f59b5d3b5c6afb186c8cf6b` |
| 16 | `theorem` | [effect_permit_rights](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/effect-permit-rights--0e1950ea9f8e1ef3dea6dd6d.md) | 102 | `result-track:0e1950ea9f8e1ef3dea6dd6d998fa248dd6c2cbfbcb7b0d518f80ba832c65d50` |
| 17 | `theorem` | [no_false_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/no-false-terminal--d00831d15afa9f8de5faa01b.md) | 107 | `result-track:d00831d15afa9f8de5faa01b8bd73177d64ceb8b1b0d0e6a7a434228564f2310` |
| 18 | `theorem` | [denied_effect_has_no_permit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/declarations/denied-effect-has-no-permit--64dc0f622fc66bf802437350.md) | 113 | `result-track:64dc0f622fc66bf802437350cd66b1c52de343a9efc635cbb6e558471604372f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
