# Verification target: GRWTSK.Analysis.ErrorBounds.IntegerDyadicSquare

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b4f9536bd2baf7305cb5a92b383bcff55fa973a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/IntegerDyadicSquare.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b4f9536bd2baf7305cb5a92b383bcff55fa973a`.

Source path: `GRWTSK/Analysis/ErrorBounds/IntegerDyadicSquare.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/IntegerDyadicSquare.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalExpStateFold`](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scale](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/scale--9717dccc00b3dc173d6b2ad9.md) | 24 | `declaration-track:9717dccc00b3dc173d6b2ad9be83281c5181f23a9b4e6a18a6cca3190434ad1c` |
| 2 | `theorem` | [scale_pos](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/scale-pos--08c15d150f8631691f0cc104.md) | 26 | `result-track:08c15d150f8631691f0cc10400357f759ec3aaea40722d3a0aed5bd9cc27ab96` |
| 3 | `theorem` | [scale_cast](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/scale-cast--7664ccf3784f0e9d6abc9aec.md) | 28 | `result-track:7664ccf3784f0e9d6abc9aec7189218a7fb6c791673ae9433ce4232b54cc9363` |
| 4 | `def` | [ceilDiv](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/ceildiv--3220026a1fa558395997011d.md) | 32 | `declaration-track:3220026a1fa558395997011d389e3b2e8e843d2205086afa64be2258f1fb734b` |
| 5 | `theorem` | [floor_ratio](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/floor-ratio--c9af0bcce49422aa9d574af4.md) | 34 | `result-track:c9af0bcce49422aa9d574af43689ce3af6bf751bac28a9d20d03d10a6d6a9bc0` |
| 6 | `theorem` | [ceil_ratio](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/ceil-ratio--bd1eaac363bf65e07473aab6.md) | 38 | `result-track:bd1eaac363bf65e07473aab673e6fd1f01657d30d20bfaaedbf3852bbfca0579` |
| 7 | `theorem` | [down_square_ratio](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/down-square-ratio--5805ea914d4fff7baec1a586.md) | 46 | `result-track:5805ea914d4fff7baec1a5862c56fb49a3d4a73f21f3a489d9cb8d757d5b734b` |
| 8 | `theorem` | [up_square_ratio](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/up-square-ratio--f0dd30c9e10fd6a4500538e4.md) | 57 | `result-track:f0dd30c9e10fd6a4500538e45ab89766272df32be0668be05c3965fffe74bec9` |
| 9 | `structure` | [State](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/state--afbdecfbf21aede51efb0076.md) | 68 | `declaration-track:afbdecfbf21aede51efb0076f94144ff9991eeef4d0bb62dc3936930a318d9e9` |
| 10 | `def` | [decode](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/decode--de9d0ca41aa537fbac61dd62.md) | 74 | `declaration-track:de9d0ca41aa537fbac61dd625f270f1aee847e90ec0c38b4b39e001903a9b107` |
| 11 | `def` | [realNumerator](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/realnumerator--1212a64d8638dd0fddda76e6.md) | 78 | `declaration-track:1212a64d8638dd0fddda76e6975a081f01edbcc0f6e6c5816644e6a30fc5e7e2` |
| 12 | `def` | [imagNumerator](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/imagnumerator--04f9fd32ff6d582f762abcd4.md) | 80 | `declaration-track:04f9fd32ff6d582f762abcd4648ee902743f627fbd335d86a047f5ffa72fb93f` |
| 13 | `def` | [residual](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/residual--812e629c1e1bd739f636cdb4.md) | 83 | `declaration-track:812e629c1e1bd739f636cdb4a8dd86fa9523000e422ac0848232b45d0925ac07` |
| 14 | `def` | [step](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/step--8b5d9da3b8eb95cf067d2e7b.md) | 88 | `declaration-track:8b5d9da3b8eb95cf067d2e7b97bbb38a0e7dd26081bf9140aaffb27f27c3e463` |
| 15 | `def` | [raw](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/raw--1dd905b398ced05dd2fb4413.md) | 92 | `declaration-track:1dd905b398ced05dd2fb4413f1613b685c47174eff28327ed45881e09f2ca11e` |
| 16 | `theorem` | [raw_eq](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/raw-eq--ac88eb4b1d1b537a409645a6.md) | 96 | `result-track:ac88eb4b1d1b537a409645a6f409dab33ac3108b9349e11fa2701094c4bc8d43` |
| 17 | `theorem` | [midpoint_eq](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/midpoint-eq--4de2fa92301fa42218e2b9e4.md) | 104 | `result-track:4de2fa92301fa42218e2b9e43c570848801c5afc13f796d480c86b0e574d03bd` |
| 18 | `theorem` | [residual_eq](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/residual-eq--81803e8443207dc5b8a29bed.md) | 110 | `result-track:81803e8443207dc5b8a29bed67e57b410fb8fd65189b4caa6bdfbaa33fff2fff` |
| 19 | `theorem` | [radius_input_eq](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/radius-input-eq--b1cfc3f0dd669aad54869cef.md) | 124 | `result-track:b1cfc3f0dd669aad54869cef2ef57485afa0e49cccd05558057618eb14aa1ecf` |
| 20 | `theorem` | [step_refines](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/declarations/step-refines--ba46f0fa76c21a9ce7321d93.md) | 137 | `result-track:ba46f0fa76c21a9ce7321d93263bb430c76ca822e307bec55675c72d2ee9c8aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
