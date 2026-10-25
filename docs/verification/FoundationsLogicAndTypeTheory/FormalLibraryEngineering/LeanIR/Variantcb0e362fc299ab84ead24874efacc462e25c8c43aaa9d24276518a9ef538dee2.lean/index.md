# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanIR.Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a95112b90e8b54756112e01a10e865971d6ac986",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a95112b90e8b54756112e01a10e865971d6ac986`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.CoreM` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Util.ForEachExpr` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Compiler.Options` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.IR.CompilerM` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.EmitC` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Language.Lean` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Main` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkIRSigData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/declarations/mkirsigdata--19e1b201af0711176cd05820.md) | 26 | `declaration-track:19e1b201af0711176cd05820272aebf587d266e6d1dc93ca391b03299465093f` |
| 2 | `def` | [mkIRData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/declarations/mkirdata--a15be778729fa2448cda1c90.md) | 32 | `declaration-track:a15be778729fa2448cda1c9060cacece76bbddd3c35d49d05f07d1c91f5c7604` |
| 3 | `constants` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/declarations/constants--426b5fef6a0f6eb542204d86.md) | 43 | `declaration-track:426b5fef6a0f6eb542204d8688122e4952bc80454ee07ca4025b576817fd0815` |
| 4 | `def` | [setConfigOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/declarations/setconfigoption--75da9d6cec46e83d8210c697.md) | 50 | `declaration-track:75da9d6cec46e83d8210c69786f05426533e78e918140021a23702c50e2bf210` |
| 5 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/declarations/main--a32c08c7aa1d7fe8c3f0a0b9.md) | 64 | `declaration-track:a32c08c7aa1d7fe8c3f0a0b9b152382e03e5bbd70c171e9b263e3a1c9f0aef18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
