# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84a7ec40cf14332d312aaf07433948c8422b1f3f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84a7ec40cf14332d312aaf07433948c8422b1f3f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/declarations/coefficients--19c6c9de694b2025beeb9e4b.md) | 20 | `declaration-track:19c6c9de694b2025beeb9e4bad426e5833fa4b283697e61e7702351504c51e1b` |
| 2 | `def` | [basis](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/declarations/basis--c46c58ef65995744dbc0fa29.md) | 23 | `declaration-track:c46c58ef65995744dbc0fa292bf11d9125e2d33e976afbe288323b2235141e98` |
| 3 | `def` | [value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/declarations/value--8b2034f25337f19416b753ef.md) | 24 | `declaration-track:8b2034f25337f19416b753ef42733a395875efe8f474f9a0afc5a5ee04be5e82` |
| 4 | `lemma` | [value_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/declarations/value-nonneg--ae7735badb531449325c7f05.md) | 27 | `result-track:ae7735badb531449325c7f051b3ea80f666afe9a926c042862685da8e2d47427` |
| 5 | `theorem` | [tensor_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/declarations/tensor-identity--a4adade0522c24e45fc1fa43.md) | 39 | `result-track:a4adade0522c24e45fc1fa43e55f572d60b2479559ba9737eec8b9650691df85` |
| 6 | `theorem` | [polynomial_projection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/declarations/polynomial-projection--6a761fb2c642880fa34528fd.md) | 46 | `result-track:6a761fb2c642880fa34528fdc28a6beef22423aac136db6ed6977c70af603782` |
| 7 | `theorem` | [projection_failure_below_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/declarations/projection-failure-below-band--14943d5c03ac9ece686dbd4e.md) | 57 | `result-track:14943d5c03ac9ece686dbd4e9e8c3852b8b5a5cf917e8a906c45c84bd0bda8eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
