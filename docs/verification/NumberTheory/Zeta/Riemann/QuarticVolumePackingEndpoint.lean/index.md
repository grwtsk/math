# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuarticVolumePackingEndpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3c26a64f9a3b524f8dd70d032a9dc8dc2dfcf33",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3c26a64f9a3b524f8dd70d032a9dc8dc2dfcf33`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticFactorization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuarticVolumePackingCertificateAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/declarations/quarticvolumepackingcertificateatzero--d57a52ac17c09452d3102ab9.md) | 54 | `declaration-track:d57a52ac17c09452d3102ab9a139a9cc02a9a73eb2fe7a04169f77c118e09a64` |
| 2 | `theorem` | [QuarticVolumePackingCertificateAtZero.scaledOccupied_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/declarations/quarticvolumepackingcertificateatzero-scaledoccupied-tendsto--7bb60a7c77a8541eeff9d234.md) | 76 | `result-track:7bb60a7c77a8541eeff9d234b9b33316f1a39aafd6d79a572f742800fa8ac948` |
| 3 | `theorem` | [QuarticVolumePackingCertificateAtZero.scaledOccupied_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/declarations/quarticvolumepackingcertificateatzero-scaledoccupied-tendsto-zero--b204b88d6a713c5a7c2ca92d.md) | 114 | `result-track:b204b88d6a713c5a7c2ca92d8c7e62733e6e9fd9d1573cb58c52f10790a9f725` |
| 4 | `theorem` | [QuarticVolumePackingCertificateAtZero.forces_critical_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/declarations/quarticvolumepackingcertificateatzero-forces-critical-line--cdee74f32a081e660d773c53.md) | 133 | `result-track:cdee74f32a081e660d773c53724672b89c05b2c7b3bb129a83a9f7e26de4e812` |
| 5 | `def` | [QuarticVolumePackingClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/declarations/quarticvolumepackingclaim--e6d42edcfe60f67b15942657.md) | 161 | `declaration-track:e6d42edcfe60f67b15942657e683e597df9560b29c1b59be90622598f9de819f` |
| 6 | `theorem` | [riemannHypothesis_of_quarticVolumePacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/declarations/riemannhypothesis-of-quarticvolumepacking--fc5a2c80476d0ff2a7cc261f.md) | 166 | `result-track:fc5a2c80476d0ff2a7cc261fa1b8842793fae5b9a65816fb85ac4e02b008ac8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
