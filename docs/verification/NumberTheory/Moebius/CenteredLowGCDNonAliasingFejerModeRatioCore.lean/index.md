# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerModeRatioCore

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ca8c3c4873edd2b31654f4ed2644f139fb87b77",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ca8c3c4873edd2b31654f4ed2644f139fb87b77`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerNonnegative`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNonnegative.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Algebra.Field.GeomSum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.ZMod` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [periodFourXModeRatio](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean/declarations/periodfourxmoderatio--3be6a4b87291c3f7ef9d996f.md) | 14 | `declaration-track:3be6a4b87291c3f7ef9d996f92dbca9c10eb93cc2220711b4d67ba55a273610d` |
| 2 | `theorem` | [periodFourXModeRatio_pow_period](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean/declarations/periodfourxmoderatio-pow-period--3824ea7aac2a5dbd207c1219.md) | 20 | `result-track:3824ea7aac2a5dbd207c12191072a61510bcd9c38e2fcf89feac28b0cf4586ba` |
| 3 | `theorem` | [periodFourXModeRatio_ne_one](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean/declarations/periodfourxmoderatio-ne-one--2448e229569c5103c3d338ed.md) | 37 | `result-track:2448e229569c5103c3d338edda27390c60cc1e9aceb13e4d7ac1468193857a46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
