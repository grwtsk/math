# Verification target: GRWTSK.Analysis.MeasureTheory.ProperPowerRemainderLaplaceStatements.Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82f5743d937e37c3e37a14b7c12de71ed127f145",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82f5743d937e37c3e37a14b7c12de71ed127f145`.

Source path: `GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceParameterMeasurability` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [properPrimePowerContribution_measurable](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/properprimepowercontribution-measurable--ad952bb733514cb8dcd790a8.md) | 23 | `result-track:ad952bb733514cb8dcd790a845cce3eb5ebd57596be2d1d76ba5928cd16087cb` |
| 2 | `theorem` | [sourcePowerRemainder_eq_finite_source](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/sourcepowerremainder-eq-finite-source--5bc3ec3896be5555ae0e07d7.md) | 53 | `result-track:5bc3ec3896be5555ae0e07d7017370dcb7d353da457e82640bcf0beb1c0085a6` |
| 3 | `theorem` | [sourcePowerRemainder_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/sourcepowerremainder-aestronglymeasurable--041b2ac72fafbe2880cc318c.md) | 60 | `result-track:041b2ac72fafbe2880cc318c454e0da66d9a18df9d01bc1e6e8e1fec6fafa595` |
| 4 | `theorem` | [weighted_sourcePowerRemainder_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/weighted-sourcepowerremainder-aestronglymeasurable--1b575621caca3b7025bea7d8.md) | 71 | `result-track:1b575621caca3b7025bea7d89505f0df5ae3c227fd2352911bc2c07ed43d03bb` |
| 5 | `theorem` | [weighted_sourcePowerRemainder_bound](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/weighted-sourcepowerremainder-bound--f5503b6788e4f9ecd7722c01.md) | 83 | `result-track:f5503b6788e4f9ecd7722c018f2d7123d1eaa74dc6ea18cac7fd394950f0c46a` |
| 6 | `theorem` | [sourcePowerRemainder_all_positive_rates](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/sourcepowerremainder-all-positive-rates--ea50c4b9e4d47afdb549cf5d.md) | 96 | `result-track:ea50c4b9e4d47afdb549cf5dc9c8f78b862ed193612fa2fd61d2783ffd1cf678` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/example--541b830ca8359ab363d35094.md) | 123 | `declaration-track:541b830ca8359ab363d35094790b2cffdb5c2d01d02434abdcaea377bf6bbfeb` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/example--18d8503f13aeadea97e740df.md) | 126 | `declaration-track:18d8503f13aeadea97e740df50e2daf7a0ee9f7645ea550ec7bae1b1468c98bc` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/example--1aa162b4376e82a17fcc3fbd.md) | 131 | `declaration-track:1aa162b4376e82a17fcc3fbdae12dd5257365872118d839acb2f6544af4b5417` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/example--5e753405534b283c8b462b29.md) | 135 | `declaration-track:5e753405534b283c8b462b2932a4c05ed102bdbfeb0ea787bd29fb2e684e1cc3` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/example--765ea47d3b93d53456fb2e0d.md) | 140 | `declaration-track:765ea47d3b93d53456fb2e0d0c7be888ecb6b850735cba37072cddf8039c6cdd` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplaceStatements/Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0.lean/declarations/example--056046b4615ef2f0a92b214e.md) | 145 | `declaration-track:056046b4615ef2f0a92b214e3ce8c5739ae9d0b2a39edbc436e5ccd275a280d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
