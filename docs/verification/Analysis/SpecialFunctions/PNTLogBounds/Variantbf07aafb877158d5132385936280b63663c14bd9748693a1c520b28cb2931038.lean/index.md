# Verification target: GRWTSK.Analysis.SpecialFunctions.PNTLogBounds.Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e31288865f1982eca7052420a942462b9bdd375e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e31288865f1982eca7052420a942462b9bdd375e`.

Source path: `GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_lower_taylor](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/declarations/log-lower-taylor--011acdaba265075de291e9b0.md) | 42 | `result-track:011acdaba265075de291e9b08c7fcbb8ed93be028892d703a4f5c3fff18b7211` |
| 2 | `theorem` | [log_ge](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/declarations/log-ge--b5dac04c664696f48a309dc8.md) | 78 | `result-track:b5dac04c664696f48a309dc8ede9ec465128b10a5861b1487b4d889e09197021` |
| 3 | `theorem` | [log_ge'](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/declarations/log-ge--ed85dc456b9e68cd53fd2169.md) | 115 | `result-track:ed85dc456b9e68cd53fd216921711db36a56ba3b2691ff94964bd4c326512f74` |
| 4 | `def` | [symmetricLogComb](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/declarations/symmetriclogcomb--eaf68422d90293778bd2c6e8.md) | 153 | `declaration-track:eaf68422d90293778bd2c6e80ef72bb2319b427a91eb33cd65b51bdf330721c6` |
| 5 | `theorem` | [symmetricLogComb_pos](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/declarations/symmetriclogcomb-pos--ac244e5450f4d35ae19de97a.md) | 156 | `result-track:ac244e5450f4d35ae19de97a1cc2cb74c074e120f6ad4619d32cd67709cdf2cd` |
| 6 | `theorem` | [symmetricLogComb_le_two](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/declarations/symmetriclogcomb-le-two--fb40b2d56155527c9b726238.md) | 190 | `result-track:fb40b2d56155527c9b72623872d8b4b875dcf6b196e22179364ceaf03846ff54` |
| 7 | `theorem` | [symmetricLogComb_abs_le_two](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/declarations/symmetriclogcomb-abs-le-two--840a1af9a990a7df839e24b0.md) | 242 | `result-track:840a1af9a990a7df839e24b07127c1e210310ff32e0f8107fb9f1c162c96e2f7` |
| 8 | `theorem` | [symm_inv_log](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/declarations/symm-inv-log--f29cefbfca0f068dd0cf6086.md) | 253 | `result-track:f29cefbfca0f068dd0cf6086281e2ca457a6d67757e36a331e12d8339eb0c850` |
| 9 | `theorem` | [symm_inv_log_weak](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/declarations/symm-inv-log-weak--91461c5ea199298393fcbaf5.md) | 259 | `result-track:91461c5ea199298393fcbaf5d1eac9f20aba1b7a59a95a7387fd83319615be3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
