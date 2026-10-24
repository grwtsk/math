# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalSpectralNormalizationControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f55bbdb6991357e44e8da592d4da49e76cc3cab",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f55bbdb6991357e44e8da592d4da49e76cc3cab`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stage_zero_normalized_nonnegative](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean/declarations/stage-zero-normalized-nonnegative--0e3ee32ea23d0ce218cb252c.md) | 18 | `result-track:0e3ee32ea23d0ce218cb252c62ed6e7897003a71feeff83ecf35a83935ba4360` |
| 2 | `theorem` | [stage_zero_radius_positive](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean/declarations/stage-zero-radius-positive--20e85a3a9aa6abfe76f6cb61.md) | 23 | `result-track:20e85a3a9aa6abfe76f6cb616a886c2818543134fb88d5220a4b2615304d7faa` |
| 3 | `theorem` | [no_normalized_comparison_at_unit_displacement](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean/declarations/no-normalized-comparison-at-unit-displacement--a8794cc3807e0eebb0a8a431.md) | 29 | `result-track:a8794cc3807e0eebb0a8a4313a57d123abfd2c3292af26ef8f3bdf17f803844c` |
| 4 | `theorem` | [raw_comparison_forces_finite_limit](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean/declarations/raw-comparison-forces-finite-limit--b859eee95701fa1d2e0dbc6f.md) | 36 | `result-track:b859eee95701fa1d2e0dbc6f02bffaa9bb83e2761494e8373c5b534767403aad` |
| 5 | `theorem` | [normalized_stage_source_fixed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean/declarations/normalized-stage-source-fixed--c884259e7928da0d4231d881.md) | 45 | `result-track:c884259e7928da0d4231d8817ed30c2c4340605bd0b38034197f5f65422f0dc5` |
| 6 | `theorem` | [triangle_remains_three](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralNormalizationControls.lean/declarations/triangle-remains-three--b9ba545957485874aa66c675.md) | 51 | `result-track:b9ba545957485874aa66c67555d827416959ab83b00586da17afc03a5796eb28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
