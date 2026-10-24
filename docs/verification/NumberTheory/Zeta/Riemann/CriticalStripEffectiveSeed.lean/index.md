# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEffectiveSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09b537df0518dd3a70d50cafa8d9959127ce1382",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09b537df0518dd3a70d50cafa8d9959127ce1382`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisBase`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fractionalMellin_ofReal_im_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/declarations/fractionalmellin-ofreal-im-zero--a4bc9710c2cb894a087551ee.md) | 27 | `result-track:a4bc9710c2cb894a087551ee42224f1c5d2a2ba0567e59f9db87be262edaf307` |
| 2 | `theorem` | [fractionalMellin_deriv_norm_le_sixteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/declarations/fractionalmellin-deriv-norm-le-sixteen--55fa99089b7d6552f2f0e599.md) | 43 | `result-track:55fa99089b7d6552f2f0e599b09cf5fad98c415e8f002da3bcfd80f8f10bb9a1` |
| 3 | `theorem` | [fractionalMellin_vertical_variation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/declarations/fractionalmellin-vertical-variation--37793c18014b27fd1040c37a.md) | 51 | `result-track:37793c18014b27fd1040c37a190944c85c3840deba983692afba45b7d93f5211` |
| 4 | `theorem` | [poleNormalized_nonzero_on_effective_right_seed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/declarations/polenormalized-nonzero-on-effective-right-seed--3acf08d5e85d1d2a5a8f1c30.md) | 72 | `result-track:3acf08d5e85d1d2a5a8f1c3036c8f34356c8e8c79cf4e16e34838e35960eeeae` |
| 5 | `theorem` | [nontrivialZetaZero_height_gt_one_sixteenth](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/declarations/nontrivialzetazero-height-gt-one-sixteenth--01c06993262abd6febca9bb0.md) | 122 | `result-track:01c06993262abd6febca9bb02ae53afdbaa2dc4fd1ee9c942396df878112cf81` |
| 6 | `theorem` | [noTargetZero_effective_seed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/declarations/notargetzero-effective-seed--d987d0f05bc7ca2a6afe736c.md) | 143 | `result-track:d987d0f05bc7ca2a6afe736cf2878e23d78be5ca9d571fc6fc903c16e948b04e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
