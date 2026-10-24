# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredStructuredFourDistinctPerLag

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c69e3e0b98ea25d2e73c80a5220a51314822d01",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c69e3e0b98ea25d2e73c80a5220a51314822d01`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredStructuredFourDistinct`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [StructuredFourDistinctLagCost](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/declarations/structuredfourdistinctlagcost--0ddd35ea121f5288ad7895fc.md) | 18 | `declaration-track:0ddd35ea121f5288ad7895fcbb90fcf86176a7ea1a8cbf2bf85cfa40b3c9b430` |
| 2 | `def` | [RegularCenteredStructuredFourDistinctPerLagBound](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/declarations/regularcenteredstructuredfourdistinctperlagbound--97151cb34da863572e82f04f.md) | 23 | `declaration-track:97151cb34da863572e82f04f8d24b3263051d25b681c23efabf358d0633ff83c` |
| 3 | `def` | [regularCenteredStructuredFourDistinctLagCostAtModulus](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/declarations/regularcenteredstructuredfourdistinctlagcostatmodulus--7479783c03cc64cc3c2a7562.md) | 31 | `declaration-track:7479783c03cc64cc3c2a756201b38b0f241c9f00ab8db1667a3e198195d6b518` |
| 4 | `def` | [regularCenteredStructuredFourDistinctLagCostEndpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/declarations/regularcenteredstructuredfourdistinctlagcostendpoint--7510e2f4da4bdcd4c2b3af14.md) | 44 | `declaration-track:7510e2f4da4bdcd4c2b3af14c5c31b339aaa736a6916a1144cf0b57e229457ad` |
| 5 | `theorem` | [regularCenteredStructuredFourDistinctEnvelope_of_perLag](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/declarations/regularcenteredstructuredfourdistinctenvelope-of-perlag--11073cac40d22d7e2bb96317.md) | 52 | `result-track:11073cac40d22d7e2bb963173080eee2e42bd3f46c586d710990681c08c13b6c` |
| 6 | `structure` | [RegularCenteredStructuredFourDistinctPerLagSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/declarations/regularcenteredstructuredfourdistinctperlagsourcedata--42d59b8adc73f67315a977dc.md) | 101 | `declaration-track:42d59b8adc73f67315a977dc60a35f539c0adc7940666fd303c66cbabfc56923` |
| 7 | `def` | [RegularCenteredStructuredFourDistinctPerLagSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/declarations/regularcenteredstructuredfourdistinctperlagsource--c14283ed8cb81490ed997a94.md) | 112 | `declaration-track:c14283ed8cb81490ed997a94bf409b6dcaaa8e409c78aee39f3d7ed89370c659` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
