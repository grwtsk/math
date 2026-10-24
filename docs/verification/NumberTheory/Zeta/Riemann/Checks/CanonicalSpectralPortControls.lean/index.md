# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalSpectralPortControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba8eef6f97bc4f80126c317d5c7b066d67f83bbd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralPortControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralPortControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralPortControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba8eef6f97bc4f80126c317d5c7b066d67f83bbd`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralPortControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralPortControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralPort.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [square_two_exact_spectral_gram](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralPortControls.lean/declarations/square-two-exact-spectral-gram--c963690190aa35e4ceccb64c.md) | 18 | `result-track:c963690190aa35e4ceccb64c9caa5fab99ae8d055908e29bd0683296a300f309` |
| 2 | `theorem` | [square_two_spectral_nonnegative](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralPortControls.lean/declarations/square-two-spectral-nonnegative--2a562bdd8136e34850b0ac67.md) | 24 | `result-track:2a562bdd8136e34850b0ac67e9c6490315086f09264ad5ac869e71c3937e7149` |
| 3 | `theorem` | [no_canonical_comparison_at_unit_displacement](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralPortControls.lean/declarations/no-canonical-comparison-at-unit-displacement--aba60b7be0df32198cf9755e.md) | 30 | `result-track:aba60b7be0df32198cf9755e513804810f6d0bd245f2e5aa57bee6f576aad740` |
| 4 | `theorem` | [canonical_stage_is_source_fixed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralPortControls.lean/declarations/canonical-stage-is-source-fixed--c28ae099157603ea954c6409.md) | 37 | `result-track:c28ae099157603ea954c6409a9cae5f5f19f7a1e5149e164d71440c2a297a6d3` |
| 5 | `theorem` | [triangle_remains_three](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalSpectralPortControls.lean/declarations/triangle-remains-three--30ed6904dab14872ae755ff8.md) | 42 | `result-track:30ed6904dab14872ae755ff8d213008f15092fb629132969863729d89b1979f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
