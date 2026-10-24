# Verification target: GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95ddb9b1b87d88bbf47cee2e1216b5b2e1dc716d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/VerticalLineMonotonicity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95ddb9b1b87d88bbf47cee2e1216b5b2e1dc716d`.

Source path: `GRWTSK/NumberTheory/Moebius/VerticalLineMonotonicity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/VerticalLineMonotonicity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.VerticalLineCriterion`](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [verticalLineMass_antitone](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/declarations/verticallinemass-antitone--56cd5dfbc85be2a896b5f22b.md) | 27 | `result-track:56cd5dfbc85be2a896b5f22b7029bb428f269405350e8459b6134c13d3aa4f12` |
| 2 | `def` | [CriticalReciprocalVerticalLineUniform](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/declarations/criticalreciprocalverticallineuniform--20b48ce098dcad4e1f280614.md) | 47 | `declaration-track:20b48ce098dcad4e1f280614a4405c8383fd402955a9c27cf72492041e7ad4af` |
| 3 | `theorem` | [criticalReciprocal_of_completedVerticalLineUniform](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/declarations/criticalreciprocal-of-completedverticallineuniform--55a86b8adee257bde97e1f1b.md) | 52 | `result-track:55a86b8adee257bde97e1f1b9f71ef0e277f280f291b042f9f4c8930d7f0c396` |
| 4 | `theorem` | [completedVerticalLineUniform_of_criticalReciprocal](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/declarations/completedverticallineuniform-of-criticalreciprocal--e26fbdbd3d2969aec47b37f8.md) | 57 | `result-track:e26fbdbd3d2969aec47b37f887f267167a2097c95c0c08b2750096855981a8b0` |
| 5 | `theorem` | [criticalReciprocal_iff_completedVerticalLineUniform](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/declarations/criticalreciprocal-iff-completedverticallineuniform--99fe5417876fb811083fca21.md) | 78 | `result-track:99fe5417876fb811083fca21afdaf509b9da14e46ec067d0eff998863237de34` |
| 6 | `theorem` | [criticalReciprocal_iff_weightedEnergyAll](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/declarations/criticalreciprocal-iff-weightedenergyall--7d3a16f2c1347ccdcdfb5036.md) | 83 | `result-track:7d3a16f2c1347ccdcdfb50362e971f7d06b7b61488162c2dedc84b45b3a856b4` |
| 7 | `theorem` | [criticalReciprocal_iff_energyAbscissa_zero](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/declarations/criticalreciprocal-iff-energyabscissa-zero--0dd6ec30713b38243d914396.md) | 88 | `result-track:0dd6ec30713b38243d914396184472caf94d2169fdc4a57623cd01b3ded9bb0f` |
| 8 | `theorem` | [riemannHypothesis_of_criticalReciprocal](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/declarations/riemannhypothesis-of-criticalreciprocal--f5e5600a023e190de71115ca.md) | 93 | `result-track:f5e5600a023e190de71115ca64e5939f0447b8981e818e6d35130394b5321c37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
