# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65352cac3faa38ee11795b11c11cc2f39d6d1286",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65352cac3faa38ee11795b11c11cc2f39d6d1286`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RHThrough](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/declarations/rhthrough--8f020f4a3fafe74856a558fb.md) | 19 | `declaration-track:8f020f4a3fafe74856a558fb232f61c363eb35f92272d6e89d0472b07bb18090` |
| 2 | `theorem` | [riemannHypothesis_iff_all_heights](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/declarations/riemannhypothesis-iff-all-heights--8d08bbebf40ee742f74c9384.md) | 22 | `result-track:8d08bbebf40ee742f74c93841baa711cfc413cb6fa6b821a1f0045bb64a7eab4` |
| 3 | `theorem` | [RHThrough.mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/declarations/rhthrough-mono--902d8b1f9207051af43b9fec.md) | 31 | `result-track:902d8b1f9207051af43b9fec1468b0ccb389b35596a2e3140e4093a23c06b303` |
| 4 | `structure` | [HeightScheme](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/declarations/heightscheme--f0937dd9eb3324f6952d07e0.md) | 36 | `declaration-track:f0937dd9eb3324f6952d07e036445e4df82f66d434dfd61df662ca4030829315` |
| 5 | `def` | [HeightScheme.state](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/declarations/heightscheme-state--321815343228e87e2f675722.md) | 43 | `declaration-track:321815343228e87e2f6757226f72f9e8a7c8ae0c809bc7a38169894fb0a922c9` |
| 6 | `theorem` | [HeightScheme.riemannHypothesis](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/declarations/heightscheme-riemannhypothesis--f0efca7b4e755eab24c04d58.md) | 46 | `result-track:f0efca7b4e755eab24c04d582311d4f8f10136acd93c2fe0ba6dbb199f205664` |
| 7 | `def` | [OffLineRectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/declarations/offlinerectangle--985f0871b5f13ce22b35842d.md) | 51 | `declaration-track:985f0871b5f13ce22b35842da89fdf463a26d7707b3b7b2c024ff069c5d3e40f` |
| 8 | `theorem` | [riemannHypothesis_iff_rectangle_exclusion](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/declarations/riemannhypothesis-iff-rectangle-exclusion--50165ad114c6bacf45e3be07.md) | 55 | `result-track:50165ad114c6bacf45e3be07b0af27994122176c023d09d8ce2899cdeaedb3ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
