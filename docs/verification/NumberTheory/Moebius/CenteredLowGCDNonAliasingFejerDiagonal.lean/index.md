# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerDiagonal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "894bc86e8dd5ed7660693023f21a5d5e5423a734",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `894bc86e8dd5ed7660693023f21a5d5e5423a734`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDDiagonalEstimate`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerBridge`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerBridge.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_nonAliasingFejer_diagonal_le_target](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/declarations/abs-nonaliasingfejer-diagonal-le-target--59a0f42b5c2e7653299a4cbc.md) | 29 | `result-track:59a0f42b5c2e7653299a4cbc29cc990a1580959c19d447634331c4e3d50bf088` |
| 2 | `theorem` | [two_mul_nonAliasingFejer_positiveShift_eq_bilinear_sub_diagonal](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/declarations/two-mul-nonaliasingfejer-positiveshift-eq-bilinear-sub-diagonal--7edd47ceb92764c95b3ff643.md) | 44 | `result-track:7edd47ceb92764c95b3ff643bae77104cc5ec665d8cb90e20ab0482798311836` |
| 3 | `theorem` | [abs_nonAliasingFejer_positiveShift_le_of_bilinear](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/declarations/abs-nonaliasingfejer-positiveshift-le-of-bilinear--343e27a2852e677378683ad1.md) | 62 | `result-track:343e27a2852e677378683ad1a4e4e475a7c85dab90a800ec3b3d6be60d9518b7` |
| 4 | `def` | [nonAliasingFejerSignedLowGCDBilinear](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/declarations/nonaliasingfejersignedlowgcdbilinear--e780b23b94408772ba69928c.md) | 99 | `declaration-track:e780b23b94408772ba69928cf0125cb5ee31c0c0196de7f4f3aec37ae57480a5` |
| 5 | `theorem` | [abs_nonAliasingFejer_positiveShift_sqrt_le_of_signedBilinear](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/declarations/abs-nonaliasingfejer-positiveshift-sqrt-le-of-signedbilinear--3bd9a165427e60544800edc0.md) | 105 | `result-track:3bd9a165427e60544800edc0d0823a443622f475c059be179625cf992862230f` |
| 6 | `theorem` | [nonAliasingFejerSignedLowGCDBilinear_eq_coprime_add_nonCoprime](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/declarations/nonaliasingfejersignedlowgcdbilinear-eq-coprime-add-noncoprime--7c0182e8653e391796f18443.md) | 128 | `result-track:7c0182e8653e391796f18443ee5ad9a4ddfb8d683db1a281c928384a0bec0796` |
| 7 | `theorem` | [nonAliasingFejerSignedLowGCDBilinear_eq_mobiusSquare_add_nonCoprime](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/declarations/nonaliasingfejersignedlowgcdbilinear-eq-mobiussquare-add-noncoprime--f2fb0409ebe42310108d0377.md) | 146 | `result-track:f2fb0409ebe42310108d0377e27633e41a4e0e21f198fffc3c0ad1f723ea4903` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
