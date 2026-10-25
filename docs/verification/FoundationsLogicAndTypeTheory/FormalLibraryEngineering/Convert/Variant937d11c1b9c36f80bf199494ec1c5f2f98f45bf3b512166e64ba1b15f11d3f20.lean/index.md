# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Convert.Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67e7ecde04c6ca6ff2d948a48bcf8bb84159043a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67e7ecde04c6ca6ff2d948a48bcf8bb84159043a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CongrExclamation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.MVarId.convert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/declarations/lean-mvarid-convert--4a5e20bc1ca1df2ee5d79d0b.md) | 31 | `declaration-track:4a5e20bc1ca1df2ee5d79d0b4ed84f3fbbc9ef70747f01d7f15f3d10d881c4fc` |
| 2 | `def` | [Lean.MVarId.convertLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/declarations/lean-mvarid-convertlocaldecl--c4fd19fd36f3cbfd03941f08.md) | 52 | `declaration-track:c4fd19fd36f3cbfd03941f08c01213602e664ea4027cce3891d302bf71f7aa03` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/declarations/syntax--0183f5b3caf3136721d9aa56.md) | 128 | `declaration-track:0183f5b3caf3136721d9aa5600edd8b2bb6d133f24ce97fec350a5a7eb6cce7d` |
| 4 | `def` | [elabTermForConvert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/declarations/elabtermforconvert--2bd59fa53b6eb93bd770a0d8.md) | 135 | `declaration-track:2bd59fa53b6eb93bd770a0d888aba992006bf89e2d77b487923172f3fb8a9c32` |
| 5 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/declarations/elab-rules--fda344ea52fc3a74abf9ffd6.md) | 147 | `declaration-track:fda344ea52fc3a74abf9ffd614859c1cff82efe9282bb23024bae16e10bd242c` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/declarations/syntax--22ddbbf0d1aa6925c9459a30.md) | 185 | `declaration-track:22ddbbf0d1aa6925c9459a30a0ca22164dc77c8f8ae425097b8a9f0a1afeb5ec` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/declarations/elab-rules--16c6c56c8e8003f6e524b0dc.md) | 188 | `declaration-track:16c6c56c8e8003f6e524b0dcf49f4be71d15a9a1ba287f2a49d6f5963a050bfe` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/declarations/syntax--2cb8d22ffe9f07a0f2eaa0fa.md) | 216 | `declaration-track:2cb8d22ffe9f07a0f2eaa0fa07948d0fb987b44c81d77b26af46fe090acc3a58` |
| 9 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/declarations/macro-rules--484b82aa1df8b865f72922d2.md) | 218 | `declaration-track:484b82aa1df8b865f72922d248247f3aec51020f5f770ffcca161f421f35e5d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
