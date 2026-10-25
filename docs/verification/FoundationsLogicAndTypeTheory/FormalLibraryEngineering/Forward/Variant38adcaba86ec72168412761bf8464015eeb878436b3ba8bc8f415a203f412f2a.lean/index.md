# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Forward.Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d85e515ada23bfb7e8f1cd059d8f4774f504acd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d85e515ada23bfb7e8f1cd059d8f4774f504acd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.UnusedNames` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.CollectFVars` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Apply` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ForwardM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/forwardm-context--17b60ac3ba6ffcdfb5ceb503.md) | 30 | `declaration-track:17b60ac3ba6ffcdfb5ceb503e2c7ec88d25499defd67c756961e69724eaf35d4` |
| 2 | `structure` | [ForwardM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/forwardm-state--004ef4dac5e23a6a82ee04e5.md) | 35 | `declaration-track:004ef4dac5e23a6a82ee04e56f0c5ed0a4aa0eec3edabd798c99209b9b674da9` |
| 3 | `abbrev` | [ForwardM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/forwardm--65e65066d1433a20b52700ba.md) | 40 | `declaration-track:65e65066d1433a20b52700ba79dcb3e3ff01fb7cd0cf277c4416109da71e4644` |
| 4 | `def` | [makeForwardHypProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/makeforwardhypproofs--8a8f17b9d5df6d0539caf3d8.md) | 42 | `declaration-track:8a8f17b9d5df6d0539caf3d8af4ae81cc0a29d5a098b16bc177f96a2ed2f914a` |
| 5 | `def` | [makeForwardHypProofs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/makeforwardhypproofs--b6796aaf04f6828409d87a6e.md) | 124 | `declaration-track:b6796aaf04f6828409d87a6e5c35bb4746fc1372a5cf2d2f3e4d4387c852cccf` |
| 6 | `def` | [assertForwardHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/assertforwardhyp--92dd2120a8f84074ee77cba6.md) | 133 | `declaration-track:92dd2120a8f84074ee77cba6e4a5f2d2ccb3e19c40c7a961a3857cef8cfb749e` |
| 7 | `def` | [applyForwardRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/applyforwardrule--ba138a54aeb35cb2a97bf1ba.md) | 154 | `declaration-track:ba138a54aeb35cb2a97bf1baaaf6f1a90c2c7ff7a923e4a8a1467befff8ca9a2` |
| 8 | `def` | [forwardExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/forwardexpr--0f4160aa4790579fe812561a.md) | 191 | `declaration-track:0f4160aa4790579fe812561a5d8dee41c1c31e872ad7dc896ce8253660a413f3` |
| 9 | `def` | [forwardConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/forwardconst--7992a485498e6c04093a64aa.md) | 200 | `declaration-track:7992a485498e6c04093a64aa777f9e9bd1c3992a9257abbd0b8ab8be941663ed` |
| 10 | `def` | [forwardTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/forwardterm--475306d730d2c6ad4d586b51.md) | 205 | `declaration-track:475306d730d2c6ad4d586b5193e1d3587c20eb60e96357ced08c55dd5b0aa70e` |
| 11 | `def` | [forward](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/forward--b83001df757892f70c4d6a65.md) | 211 | `declaration-track:b83001df757892f70c4d6a65dd6258a0c34a9b4f9fae40b8d246999ddeeb760f` |
| 12 | `def` | [forwardMatches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/forwardmatches--e33ba5025227d544de1d7c2b.md) | 217 | `declaration-track:e33ba5025227d544de1d7c2b09475bf8d0a430a04e526f8cd55dd59943367447` |
| 13 | `def` | [forwardMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/declarations/forwardmatch--553c72bb87f39363a3ace87f.md) | 243 | `declaration-track:553c72bb87f39363a3ace87f98a5f2b6c0a3123e555ad0c3b6b195db0d9c4303` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
