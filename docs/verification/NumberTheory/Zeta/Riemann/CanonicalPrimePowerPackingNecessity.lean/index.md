# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPackingNecessity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1882140b03f56fe2815c964887123d5d3dbdba68",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPackingNecessity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPackingNecessity.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPackingNecessity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1882140b03f56fe2815c964887123d5d3dbdba68`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPackingNecessity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPackingNecessity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CanonicalPrimePowerPackingComparisonAtZero.forces_critical_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPackingNecessity.lean/declarations/canonicalprimepowerpackingcomparisonatzero-forces-critical-line--527c51d4f81410f85b8e8692.md) | 31 | `result-track:527c51d4f81410f85b8e8692bf592e88b3c9354618fac3aa97d7a16618fac4d6` |
| 2 | `theorem` | [CanonicalPrimePowerPackingComparisonAtZero.witnessTrace_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPackingNecessity.lean/declarations/canonicalprimepowerpackingcomparisonatzero-witnesstrace-eq-zero--527ce80563d26aee1f11c0b4.md) | 41 | `result-track:527ce80563d26aee1f11c0b42be775889c99ce3cbdc36317ce86431865078ba5` |
| 3 | `theorem` | [CanonicalPrimePowerPackingComparisonAtZero.packing_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPackingNecessity.lean/declarations/canonicalprimepowerpackingcomparisonatzero-packing-tendsto-zero--81845465141365a7fc1ad81c.md) | 51 | `result-track:81845465141365a7fc1ad81ccdde3453c7650c77eef84171a8011155162da257` |
| 4 | `theorem` | [no_canonical_comparison_of_not_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPackingNecessity.lean/declarations/no-canonical-comparison-of-not-tendsto-zero--c030d25f721472c4f87967dc.md) | 67 | `result-track:c030d25f721472c4f87967dcc08c0d1361e76ad3c6cd337d0e5fd710fd3b71ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
