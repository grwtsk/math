# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalLogarithmicResidues

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62929bd650a69d4f930d0b8d90577c3af75734dc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62929bd650a69d4f930d0b8d90577c3af75734dc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart`](../../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicPrincipalPart.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [canonical_zero_principal_part](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/declarations/canonical-zero-principal-part--3e43d2c603029145b8b997bf.md) | 32 | `result-track:3e43d2c603029145b8b997bf52218be5ca1df93259c22e42cde02d3c7c7515a8` |
| 2 | `theorem` | [canonical_zero_scaled_limit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/declarations/canonical-zero-scaled-limit--c924801f53966296712647b1.md) | 46 | `result-track:c924801f53966296712647b1e0deaff0af99b8b6fce1ef2435162ca09f6edf0c` |
| 3 | `theorem` | [canonical_zero_weighted_limit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/declarations/canonical-zero-weighted-limit--50510c491d96b4913c6a0060.md) | 54 | `result-track:50510c491d96b4913c6a006003c85a68faa7fca9890e3c6f3b37755745b5be50` |
| 4 | `theorem` | [zeta_pole_principal_part](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/declarations/zeta-pole-principal-part--e2b75bf795117aa012673685.md) | 63 | `result-track:e2b75bf795117aa012673685a4686efdb973dbd417f17698ae39fa103c82f9fb` |
| 5 | `theorem` | [zeta_pole_scaled_limit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/declarations/zeta-pole-scaled-limit--ac8f1d56bc3fd8c11871949e.md) | 73 | `result-track:ac8f1d56bc3fd8c11871949eaa50a4421c13b8c6e0b2274b2d40bf5228ce5bf3` |
| 6 | `theorem` | [zeta_pole_weighted_limit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/declarations/zeta-pole-weighted-limit--bf032ab87c08aeeb63a9a125.md) | 81 | `result-track:bf032ab87c08aeeb63a9a125e3a2920e17c17a10bb410b54cddee0d402bf04c8` |
| 7 | `theorem` | [logDeriv_at_zero_totalized](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/declarations/logderiv-at-zero-totalized--8e0d6da64d068b6d099aba04.md) | 89 | `result-track:8e0d6da64d068b6d099aba04da76b9dd3db4203262ee5440b790838ad4b746b4` |
| 8 | `theorem` | [scaled_logDeriv_not_continuous_at_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/declarations/scaled-logderiv-not-continuous-at-zero--6b79e5d8cba1300629b48455.md) | 93 | `result-track:6b79e5d8cba1300629b48455e8e7d518826d1b8594c62bc16c7f7689ee72de33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
