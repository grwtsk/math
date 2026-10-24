# Verification target: GRWTSK.Analysis.SumIntegralComparison.ExponentialResponseSquareSum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md) · [Full source](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45271ed192e91def64dcc93b949dc48f39bb9570`.

Source path: `GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [profile](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/profile--1b5c8e709a812d2f68d92b0d.md) | 20 | `declaration-track:1b5c8e709a812d2f68d92b0d210c7b12fef0379f2044ef1660d86aa29c52aca5` |
| 2 | `def` | [profilePrimitive](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/profileprimitive--8543a1bb8d9ab214851b3a31.md) | 23 | `declaration-track:8543a1bb8d9ab214851b3a311fefe9568fffe6bce908d0dc5929d78eac97c5ba` |
| 3 | `theorem` | [sqrt_exp_half](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/sqrt-exp-half--ee823c586db16b2df9575ab8.md) | 27 | `result-track:ee823c586db16b2df9575ab844df646ed2a477a21aeebb5b9f689fe077ff4356` |
| 4 | `theorem` | [profile_continuousOn](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/profile-continuouson--42a68205aedfabe6e50e58ed.md) | 34 | `result-track:42a68205aedfabe6e50e58ed3bee0490d979471c4a4914357a7707194569c014` |
| 5 | `theorem` | [profile_antitone](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/profile-antitone--9aed13441f52cc84e7171366.md) | 39 | `result-track:9aed13441f52cc84e717136630cb197ba3f9b8cc0b70750ee719a97a95fd5da2` |
| 6 | `theorem` | [profile_primitive_derivative](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/profile-primitive-derivative--a0878fd94681388d48dc6e8b.md) | 58 | `result-track:a0878fd94681388d48dc6e8b12088dbe7a71caa1cb0f2e3c052536efe2ecafc9` |
| 7 | `theorem` | [profile_integral](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/profile-integral--f31b4f8bebe888597d0fb5c7.md) | 74 | `result-track:f31b4f8bebe888597d0fb5c71ba9c323d176a2682cfccc0cc4427babb778497a` |
| 8 | `theorem` | [profile_endpoint_integral_bound](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/profile-endpoint-integral-bound--ff9fa195020ec3c6810c9d52.md) | 84 | `result-track:ff9fa195020ec3c6810c9d528fabec5aead2853583d263ea1ce7058cbf4e93d2` |
| 9 | `theorem` | [antitone_sum_first_integral](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/antitone-sum-first-integral--c26edc32896d01b4a4ba6811.md) | 107 | `result-track:c26edc32896d01b4a4ba68118297e69b05f7ac126ae64b7256bced1bec2aef6a` |
| 10 | `theorem` | [profile_integer_sum_bound](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/profile-integer-sum-bound--803272dfefc435109875aa1c.md) | 121 | `result-track:803272dfefc435109875aa1c047e66e766b80a773b5405fdca0dd96cddc8de35` |
| 11 | `theorem` | [atom_inventory_square_bound](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/atom-inventory-square-bound--52d93249ad91d394e115c2ee.md) | 145 | `result-track:52d93249ad91d394e115c2ee56890a1e2c4b42b7b23576b5be5bed3285d60f73` |
| 12 | `theorem` | [diagonal_integrand_bound](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/diagonal-integrand-bound--a76ad1bd95e8f744604cfe7b.md) | 175 | `result-track:a76ad1bd95e8f744604cfe7bc7a9ae54d8206c2dc672658f994261e17e295831` |
| 13 | `theorem` | [diagonal_le_two_mul_sq](../../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/declarations/diagonal-le-two-mul-sq--328b846ba276517c44623eb6.md) | 182 | `result-track:328b846ba276517c44623eb6914c11d7cd0f6384b2ef3018cbdd70d7390ac3c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
