# Verification target: GRWTSK.Analysis.HodgeGaugeBounds.Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df9bf344e0f64b24e435c0e492145cf50f2c663a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/index.md) · [Full source](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df9bf344e0f64b24e435c0e492145cf50f2c663a`.

Source path: `GRWTSK/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [C0](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/c0--586d2b1f61946727319c0b9b.md) | 25 | `declaration-track:586d2b1f61946727319c0b9b29db8c50fa4700d4b9a88bd612e9d9a98bd1dbc3` |
| 2 | `abbrev` | [C1](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/c1--be7f1d048e912d54113c670d.md) | 26 | `declaration-track:be7f1d048e912d54113c670dd9da529a380d6fd106b380fa79a8c27faaa60bb9` |
| 3 | `def` | [differential](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/differential--3ee51c9570fecd0f556c85af.md) | 29 | `declaration-track:3ee51c9570fecd0f556c85af3b4d34270c022291726d6951e33d5f28552e653e` |
| 4 | `def` | [adjoint](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/adjoint--dd19125b57ceadbee1a4eceb.md) | 32 | `declaration-track:dd19125b57ceadbee1a4ecebcbf38ff27c5fb8e1da231e5cd59dbf3d394b1018` |
| 5 | `theorem` | [adjoint_identity](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/adjoint-identity--6ea383b2c2c06a49ebea1919.md) | 34 | `result-track:6ea383b2c2c06a49ebea1919d5a9e9f19298befd40e61740d86cd5d958570f07` |
| 6 | `theorem` | [differential_kernel](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/differential-kernel--3f40d22e972695b8857b954d.md) | 40 | `result-track:3f40d22e972695b8857b954d0552c2675ea37183d3f289fcf2403a43f3ce7c52` |
| 7 | `theorem` | [adjoint_kernel](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/adjoint-kernel--39766adcf091ad3306c13af2.md) | 50 | `result-track:39766adcf091ad3306c13af28f92aabadefc7c2f6bd01edc604e98b0c86bf322` |
| 8 | `def` | [gauge](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/gauge--6b5de56d719124a23c06198c.md) | 60 | `declaration-track:6b5de56d719124a23c06198c3355ff145a0046dbfd35a934a9860457b64b2220` |
| 9 | `def` | [harmonicPart](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/harmonicpart--3fe7e1e5f16fda97a0ebe7fe.md) | 62 | `declaration-track:3fe7e1e5f16fda97a0ebe7fe59f28816712088456f5fecca373d7d7e86d20f66` |
| 10 | `theorem` | [hodge_decomposition](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/hodge-decomposition--f8610ea4073a80e897599bbf.md) | 65 | `result-track:f8610ea4073a80e897599bbfcfb8aa89ab9fdaa82d280dfb0000b2adf32ced37` |
| 11 | `theorem` | [harmonicPart_in_kernel](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/harmonicpart-in-kernel--3a95f8db749f487f1558ba0f.md) | 69 | `result-track:3a95f8db749f487f1558ba0fc04b3f410e70ea7120e3a363005d38238d3d35e0` |
| 12 | `theorem` | [gauge_kernel_complement](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/gauge-kernel-complement--cc5b2be8b5c6eb7bac5b2374.md) | 74 | `result-track:cc5b2be8b5c6eb7bac5b237425a94de6c57d6ed0c120faebb350ad24d7e66588` |
| 13 | `theorem` | [exact_iff_component_agreement](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/exact-iff-component-agreement--08022f912bbeb59687204cfc.md) | 79 | `result-track:08022f912bbeb59687204cfc3f80b8b7965c32ac49f48e6bb54efc9ae85b0b38` |
| 14 | `theorem` | [exact_iff_harmonic_zero](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/exact-iff-harmonic-zero--077d4a1a7757c5de94748151.md) | 90 | `result-track:077d4a1a7757c5de947481519ab52457ac05cc30c90e095839671d8386951b1e` |
| 15 | `theorem` | [unequal_component_obstruction](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/unequal-component-obstruction--d7c674f4bc4ea5e871f3c8fb.md) | 103 | `result-track:d7c674f4bc4ea5e871f3c8fbecc453a7926adb1bedc6677d195e8b01c89e8c13` |
| 16 | `theorem` | [two_component_gap](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/two-component-gap--5ab6a450fad135406061d213.md) | 109 | `result-track:5ab6a450fad135406061d2130b3a7b3f53e6e04955d18a4e499e17eeac272664` |
| 17 | `theorem` | [gauge_norm_le](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/gauge-norm-le--21b6970d6e59a3acb9cf544b.md) | 116 | `result-track:21b6970d6e59a3acb9cf544b878b07bb3970f38f037fe5fe12cda0632e2bea67` |
| 18 | `theorem` | [exact_two_component_gauge_bound](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/exact-two-component-gauge-bound--41b64671538f1b168747295f.md) | 128 | `result-track:41b64671538f1b168747295f17894fc6fb2e35ca90efab237f16af70a9770611` |
| 19 | `theorem` | [positive_overlap_endpoint_gauge](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/positive-overlap-endpoint-gauge--c9115f80a26bce816c5aac05.md) | 139 | `result-track:c9115f80a26bce816c5aac0544b6914ef16ae9a50544319d38f9081f20ecf7df` |
| 20 | `theorem` | [weighted_evaluation](../../../../mathematics/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/declarations/weighted-evaluation--3bc78cb84fe1563a16bcd8b9.md) | 143 | `result-track:3bc78cb84fe1563a16bcd8b93c4140217b44a57aacd3a6b209162e51e1e90723` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
