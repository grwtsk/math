# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Says.Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05060644501555b77b929902bb68fb80ec643d60",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05060644501555b77b929902bb68fb80ec643d60`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.String.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.GuardMsgs` — import line 12; external provider; requires a separately pinned dependency.
- `Qq.Match` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [says.verify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/declarations/says-verify--48257f66c2a17a22fd86955d.md) | 37 | `declaration-track:48257f66c2a17a22fd86955d95dab64477fc22c9e1de97454bb9c6de51462874` |
| 2 | `register_option` | [says.no_verify_in_CI](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/declarations/says-no-verify-in-ci--b366a4f8c17d9a73a3b63e52.md) | 43 | `declaration-track:b366a4f8c17d9a73a3b63e5248038d0e2955730c4ee704a4c41b9b2569980b74` |
| 3 | `def` | [parseAsTacticSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/declarations/parseastacticseq--688dc88b624d3f802bcd4e9e.md) | 51 | `declaration-track:688dc88b624d3f802bcd4e9e2be9fd3301531cf771f2503789e90d415580c52f` |
| 4 | `def` | [evalTacticCapturingMessages](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/declarations/evaltacticcapturingmessages--56e47ba65a7ef0769f0c29a7.md) | 68 | `declaration-track:56e47ba65a7ef0769f0c29a74631a4533f32596a1bbf5b96769003f1d4019712` |
| 5 | `def` | [evalTacticCapturingInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/declarations/evaltacticcapturinginfo--dd88cdb4f39da09fa519da6f.md) | 85 | `declaration-track:dd88cdb4f39da09fa519da6f996dc83848df3204d7963f56e309ac420f61588d` |
| 6 | `def` | [evalTacticCapturingTryThis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/declarations/evaltacticcapturingtrythis--2fb4f4454004eebc1694d764.md) | 91 | `declaration-track:2fb4f4454004eebc1694d7642bab9c5d5158246bc9763ce134e3bbeff78290c9` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/declarations/syntax--228f66ef2160e340e1cd71fd.md) | 103 | `declaration-track:228f66ef2160e340e1cd71fd4032ffb6d4b5067a7bb1e415398ac26069553302` |
| 8 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/declarations/elab-rules--dae72e090625670fcd71fafe.md) | 105 | `declaration-track:dae72e090625670fcd71fafea2b0716d8428f6a244961eacee6933baae8d6478` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3.lean/declarations/initialize--bef4cc903c3030d24f6bca28.md) | 124 | `declaration-track:bef4cc903c3030d24f6bca281c1fba60873c30f14f922fa9b63e80ca1548dfcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
