# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HalfThreshold.Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d7334f3bc59f957624c4c8f6c995b47d6214a69",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d7334f3bc59f957624c4c8f6c995b47d6214a69`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.AbsoluteRegion` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Terrain.BinaryCharge` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [roundHalfUp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/roundhalfup--ac530cc81032cef5f24d9fe3.md) | 20 | `declaration-track:ac530cc81032cef5f24d9fe3e2a7a76516d39300951d19c0bc59caee869fa82d` |
| 2 | `theorem` | [roundHalfUp_eq_true_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/roundhalfup-eq-true-iff--abb7fbba91e5c556cad38ab5.md) | 24 | `result-track:abb7fbba91e5c556cad38ab50c0e5e3b9dbfca73b7f75c9a289af9a44847e736` |
| 3 | `theorem` | [roundHalfUp_eq_false_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/roundhalfup-eq-false-iff--78482b42d467229bbade94b5.md) | 29 | `result-track:78482b42d467229bbade94b5a447c3ff05f7d38ba5c4fc1bebc2fadb9b45d77a` |
| 4 | `theorem` | [roundHalfUp_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/roundhalfup-half--0a42d68a49cc7f8b34bc67f6.md) | 34 | `result-track:0a42d68a49cc7f8b34bc67f62ef0bc803f5804baf5f6afec7a5acc3dfa3e240a` |
| 5 | `def` | [thresholdState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/thresholdstate--2108db35e478d250a4b88ce2.md) | 38 | `declaration-track:2108db35e478d250a4b88ce2a502dc819c51f1e844cdaa47f3e2115283bb2795` |
| 6 | `def` | [ThresholdEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/thresholdequivalent--7af950270aac1a592b6bb0aa.md) | 42 | `declaration-track:7af950270aac1a592b6bb0aa6d1175da51e46c90b65145583e244c6c899e11dd` |
| 7 | `theorem` | [thresholdEquivalent_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/thresholdequivalent-refl--2b5a446766d3906c9b746104.md) | 45 | `result-track:2b5a446766d3906c9b74610404e16daa00e41e38b30c6bf4f32dc96c51aa18d2` |
| 8 | `theorem` | [thresholdEquivalent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/thresholdequivalent-symm--0a93d94504e63f45e511c612.md) | 49 | `result-track:0a93d94504e63f45e511c612416c080405fdd41963b69fa5a1268f9ae6d6854c` |
| 9 | `theorem` | [thresholdEquivalent_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/thresholdequivalent-trans--f8171f3e894a0e8eee002c17.md) | 53 | `result-track:f8171f3e894a0e8eee002c17e8a6e8b5b61ff6ed4af4a5e163a2c33379155b48` |
| 10 | `def` | [thresholdSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/thresholdsetoid--26b24c568c3ecbede2aab70f.md) | 59 | `declaration-track:26b24c568c3ecbede2aab70f38c85bf424a24ae33b233478368d6a533b5b1148` |
| 11 | `theorem` | [thresholdState_restrictSignal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/thresholdstate-restrictsignal--a275e26d9b249c835be8c9e7.md) | 65 | `result-track:a275e26d9b249c835be8c9e7f776724a7b8867b7a686ab3afe6802ccb248770f` |
| 12 | `theorem` | [roundHalfUp_boolToReal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/roundhalfup-booltoreal--17e306789d1fd33966c38b2a.md) | 73 | `result-track:17e306789d1fd33966c38b2a6653f1cb141452c01fa4659817645415904d16f7` |
| 13 | `theorem` | [thresholdState_boolToReal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/thresholdstate-booltoreal--89e458ca6f5938afe0a3ae59.md) | 79 | `result-track:89e458ca6f5938afe0a3ae5908d2951cbd24e04dacaa52e8b3bcc4a76eb40152` |
| 14 | `theorem` | [thresholdState_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/thresholdstate-idempotent--96b5387461aea43fc82151e1.md) | 86 | `result-track:96b5387461aea43fc82151e192b651f1cb47e73a898db15ad53155dd1302c9c8` |
| 15 | `def` | [HasThresholdMargin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/hasthresholdmargin--e48e5200f03b355e15cec165.md) | 92 | `declaration-track:e48e5200f03b355e15cec165ed6ca6a0429dabfc2ac024b07c7f7375bf285946` |
| 16 | `theorem` | [roundHalfUp_eq_of_margin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/roundhalfup-eq-of-margin--dd2d80da5908a29bebd8d0c5.md) | 96 | `result-track:dd2d80da5908a29bebd8d0c53514f5c4dd78b10546b979d490cff1fc0ad21551` |
| 17 | `theorem` | [thresholdState_eq_of_margin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/declarations/thresholdstate-eq-of-margin--901065268c3a504835510044.md) | 128 | `result-track:901065268c3a504835510044f58fc7aa9e03ceb7749b96cf5bee3bf96f7847b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
