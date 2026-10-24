# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.EndpointBernoulliResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84097121ab51680e49244ce224b05dc44aaaefaa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84097121ab51680e49244ce224b05dc44aaaefaa`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.BernoulliMellinRecurrence`](../../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.EndpointCorrectedJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fract_eq_nat_fraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/declarations/fract-eq-nat-fraction--a48e13b83396dd7d9b920f60.md) | 30 | `result-track:a48e13b83396dd7d9b920f60e8191d2b7ff821d3ec3766f9e845a002cab1c744` |
| 2 | `theorem` | [fractional_tail_split](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/declarations/fractional-tail-split--1dee4c1abf52159adcd83ddd.md) | 38 | `result-track:1dee4c1abf52159adcd83dddd3c172559742c8589f7a3ae90f3f064f88f5551f` |
| 3 | `theorem` | [half_endpoint_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/declarations/half-endpoint-source--0bc73fa715eef7ab6255dbbb.md) | 69 | `result-track:0bc73fa715eef7ab6255dbbbd29c6bcc1068aae4726b24b55727ff083fc713ee` |
| 4 | `theorem` | [scaled_step](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/declarations/scaled-step--f4b88fa6ede87603e1db1c45.md) | 88 | `result-track:f4b88fa6ede87603e1db1c45abd1466a83ec0568a0ba8c852c9ea0f18dc435d8` |
| 5 | `theorem` | [correction_step](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/declarations/correction-step--fbb90a899232a649d586a9c4.md) | 108 | `result-track:fbb90a899232a649d586a9c4de324da58ab3b83315806e53d633b0ac494370a1` |
| 6 | `theorem` | [even_to_odd](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/declarations/even-to-odd--b9fb4a6143931845bc80a73f.md) | 119 | `result-track:b9fb4a6143931845bc80a73fbfe59779ef310daed0601163fb8282d55ee5ff36` |
| 7 | `theorem` | [source_residual_succ](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/declarations/source-residual-succ--282dda01bce0ca1dccb2eebf.md) | 128 | `result-track:282dda01bce0ca1dccb2eebf8ddf827117da53078a2e2d1f1967d8b57d2e7cda` |
| 8 | `theorem` | [remainder_sixteen_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/declarations/remainder-sixteen-bound--45edfb38b7ca32fe779b1540.md) | 151 | `result-track:45edfb38b7ca32fe779b1540aa19eee0136defd780b4cbc87677f98cfa5fd397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
