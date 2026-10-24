# Verification target: GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc9223e70ae6b375dea489bc92763cbb390bcf20",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcExpansion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc9223e70ae6b375dea489bc92763cbb390bcf20`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachRationalArcExpansion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachRationalArcExpansion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion`](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation`](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachClippedRationalArc](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/declarations/goldbachclippedrationalarc--3b4dfb9100782e19c13be8c0.md) | 43 | `declaration-track:3b4dfb9100782e19c13be8c0b8c06aa8d56d4f4a2baf5e31539498037565b268` |
| 2 | `theorem` | [measurable_goldbachClippedRationalArc](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/declarations/measurable-goldbachclippedrationalarc--3f2c76cef85f0505c6cae9bc.md) | 49 | `result-track:3f2c76cef85f0505c6cae9bc1f0ec36d6f7d24eb21407ae97eb42242c065b46d` |
| 3 | `theorem` | [goldbachRationalMajorArcSet_eq_biUnion_clipped](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/declarations/goldbachrationalmajorarcset-eq-biunion-clipped--83cc2a418fc6f2b0c093f981.md) | 58 | `result-track:83cc2a418fc6f2b0c093f98193d97fc0877fa8196e83b8895164a8673cb1be3f` |
| 4 | `theorem` | [goldbachClippedRationalArcs_pairwiseDisjoint](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/declarations/goldbachclippedrationalarcs-pairwisedisjoint--e51883d6fa9761bbd97a7a2d.md) | 72 | `result-track:e51883d6fa9761bbd97a7a2d9b2997a9b1c193319ed8f078ec124c5d701373f6` |
| 5 | `theorem` | [integrableOn_goldbachCircleIntegrand_clipped](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/declarations/integrableon-goldbachcircleintegrand-clipped--83e2a24e0779160e9d3d050d.md) | 85 | `result-track:83e2a24e0779160e9d3d050da5d5d6eaea9453ed3ee6233af5bb38157dd903dd` |
| 6 | `def` | [goldbachSingleRationalArcContribution](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/declarations/goldbachsinglerationalarccontribution--2e22f7fa985889e4ab399eb5.md) | 93 | `declaration-track:2e22f7fa985889e4ab399eb5a8b78ef2af40bd173cd8759307a355407acaf6e1` |
| 7 | `theorem` | [goldbachRationalMajorContribution_eq_sum](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/declarations/goldbachrationalmajorcontribution-eq-sum--e008bf62652db299f1ceeed1.md) | 100 | `result-track:e008bf62652db299f1ceeed1951fe16038c60e9d7ebdd91927b75a486fa56a0a` |
| 8 | `theorem` | [goldbachRationalArcSum_add_minor_eq_logMass](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/declarations/goldbachrationalarcsum-add-minor-eq-logmass--2b542c5019d23ed68de3a703.md) | 122 | `result-track:2b542c5019d23ed68de3a7033384e9e35d33ca69cd4e4e76a587c081462fb19a` |
| 9 | `theorem` | [goldbachCount_pos_of_rational_arc_sum_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/declarations/goldbachcount-pos-of-rational-arc-sum-bounds--f76abf79f43369a9ce70aefe.md) | 133 | `result-track:f76abf79f43369a9ce70aefe80b6aa2db11e8ad4306a9039f071cfaaf4f0a8b4` |
| 10 | `theorem` | [goldbachCount_pos_of_rational_arc_sum_truncated_certificate](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/declarations/goldbachcount-pos-of-rational-arc-sum-truncated-certificate--0d34911b22a96c48f3cc3900.md) | 154 | `result-track:0d34911b22a96c48f3cc3900a94ee1478fea6917e816dbbf8dfa6168f15db719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
