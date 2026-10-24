# Verification target: GRWTSK.NumberTheory.Moebius.CoreBoundaryTerminalNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e052eba4172554145d40aa7f8a22ba430dba1a5a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e052eba4172554145d40aa7f8a22ba430dba1a5a`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreBoundaryMertensSquareEnergy`](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [boundaryTerminalDrop_eq](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/declarations/boundaryterminaldrop-eq--ee378d04a73f9b555450ff81.md) | 20 | `result-track:ee378d04a73f9b555450ff815d262bed4b11b3f3e7971fd02e852f679f0a67b3` |
| 2 | `theorem` | [boundaryTerminalDrop_eq_leftScale](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/declarations/boundaryterminaldrop-eq-leftscale--4943f892885892d1b9079a67.md) | 31 | `result-track:4943f892885892d1b9079a679fd146b40a5a18e7464e84255412274ee466dd9c` |
| 3 | `theorem` | [two_mul_boundaryTerminalDrop_le_inv_sq](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/declarations/two-mul-boundaryterminaldrop-le-inv-sq--3fc898bbcfc0e0d286f66b13.md) | 40 | `result-track:3fc898bbcfc0e0d286f66b13768cfa59bfc8602ee1e9fb74141585346dbe3bda` |
| 4 | `theorem` | [two_mul_boundaryTerminalDrop_sq_le_inv_fourth](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/declarations/two-mul-boundaryterminaldrop-sq-le-inv-fourth--6955ff1af0b19324d89cd681.md) | 85 | `result-track:6955ff1af0b19324d89cd681094fcefe6b31a8d5c82df9b1e85554cd41a99c7a` |
| 5 | `theorem` | [boundaryCoreDepths_eq_empty_of_lt_two](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/declarations/boundarycoredepths-eq-empty-of-lt-two--5a52b2b53867166e88e89690.md) | 102 | `result-track:5a52b2b53867166e88e89690d420b420c9d1433312a5f38d380a474a5387fac0` |
| 6 | `theorem` | [boundaryTailSquareEnergy_eq_zero_of_lt_two](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/declarations/boundarytailsquareenergy-eq-zero-of-lt-two--a579a1fe9f84555df189516d.md) | 115 | `result-track:a579a1fe9f84555df189516d138e3c39712830843c1d02662df9f7fb43a2ac92` |
| 7 | `theorem` | [subpolynomialBoundaryQuadraticEnergyProduct_of_localized](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/declarations/subpolynomialboundaryquadraticenergyproduct-of-localized--7a9abdd44a3bddb8509f0f3f.md) | 125 | `result-track:7a9abdd44a3bddb8509f0f3ff34e851a66a022bed91803c3b78c7f6b3856feba` |
| 8 | `def` | [boundaryLocalizedEnergyNormalizationAdapter](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/declarations/boundarylocalizedenergynormalizationadapter--91a991b1c55ae85f1dc89229.md) | 206 | `declaration-track:91a991b1c55ae85f1dc89229402c5023e0223683c3ed1edd728eec7dc2a86bea` |
| 9 | `theorem` | [subpolynomialCoreBoundarySignedPacket_of_localizedMertensEnergy](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/declarations/subpolynomialcoreboundarysignedpacket-of-localizedmertensenergy--d1e813be37a7a8237f9c1a3d.md) | 215 | `result-track:d1e813be37a7a8237f9c1a3dd13100d669c01a637f6c8f22583fe60fc449c011` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
