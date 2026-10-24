# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointCorrectedNewtonCandidate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cb57971481f88a9c600b9185d7ba7143bbc6f0a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cb57971481f88a9c600b9185d7ba7143bbc6f0a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CauchyNewtonWitness`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean/declarations/center--63317e967278d8ac807bdd2d.md) | 25 | `declaration-track:63317e967278d8ac807bdd2d061e8cc46926176e450fb65013af2136962ee84e` |
| 2 | `def` | [innerRadius](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean/declarations/innerradius--9a8e864d21c3c24d0cb40e1c.md) | 26 | `declaration-track:9a8e864d21c3c24d0cb40e1c842bedda426a7779f67ec4c5d209d3696d2f982b` |
| 3 | `def` | [outerRadius](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean/declarations/outerradius--a9626216274763dc11fdbf3d.md) | 27 | `declaration-track:a9626216274763dc11fdbf3d760ad8cac053121549f2fed81f30c8b217329723` |
| 4 | `def` | [centerData](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean/declarations/centerdata--7cb7f80d13c8d36b4d5947db.md) | 31 | `declaration-track:7cb7f80d13c8d36b4d5947db30ca1128bfd28b646c1fb391422a23b651b5e2f1` |
| 5 | `theorem` | [quantitative_guard](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean/declarations/quantitative-guard--0510d95220a29f744e5249c6.md) | 39 | `result-track:0510d95220a29f744e5249c6e7761d79c0fe8a6b047ed1fcc355f0357720e615` |
| 6 | `theorem` | [strict_scalar_margins](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean/declarations/strict-scalar-margins--954b1d2c367eb31894114570.md) | 43 | `result-track:954b1d2c367eb3189411457082af505750d439738f672116e7bb22b3c45555ce` |
| 7 | `theorem` | [unique_point_of_centerEstimates](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean/declarations/unique-point-of-centerestimates--dd714d640f4cdceb5c8e0857.md) | 52 | `result-track:dd714d640f4cdceb5c8e0857d716e314574fa9e75cd537913ea7999f6a0c037f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
