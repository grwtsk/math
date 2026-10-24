# Verification target: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt01.Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40c03aee4c2c904b7cb88aee1de389aac72acf63",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40c03aee4c2c904b7cb88aee1de389aac72acf63`.

Source path: `GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mangoldtLogPrefix_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean/declarations/mangoldtlogprefix-measurable--71b78e62bf8a167139e102b1.md) | 17 | `result-track:71b78e62bf8a167139e102b1ada201b291a784f8d4904c80f706e0cd950c6d66` |
| 2 | `theorem` | [mangoldtLogError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean/declarations/mangoldtlogerror-measurable--9cacfd0a76fbdfdda7e0235f.md) | 21 | `result-track:9cacfd0a76fbdfdda7e0235fdf4154a4085789e5f9ae931f834ff31930bf3412` |
| 3 | `theorem` | [centeredMangoldtError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean/declarations/centeredmangoldterror-measurable--e6bf9497eac9b829605c20d2.md) | 25 | `result-track:e6bf9497eac9b829605c20d2df49f84bada54a38348c41396bced95d936338b2` |
| 4 | `theorem` | [centeredMangoldtError_bound](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean/declarations/centeredmangoldterror-bound--15133fb1a1b53b727ba0f68b.md) | 30 | `result-track:15133fb1a1b53b727ba0f68ba003eeff24cc72f4391bcd71b9906e478789d48e` |
| 5 | `theorem` | [centeredMangoldtError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean/declarations/centeredmangoldterror-laplace-integrable--967c2c87a8b5575933842ce5.md) | 36 | `result-track:967c2c87a8b5575933842ce5c9052b4706bd69e64d7f79efd0403eac3a75b290` |
| 6 | `theorem` | [mangoldtLogError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean/declarations/mangoldtlogerror-laplace-integrable--cd6cc6e7545de2ba24d51945.md) | 58 | `result-track:cd6cc6e7545de2ba24d519456c224dd277bd2b67d1d575cf1884ab7787a9fca0` |
| 7 | `theorem` | [centeredMangoldtError_below_first_atom](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variante08b5eac019c8581a10e1e319cc9e9d8fc231bc2d99f4b6679e20b20bed1df6a.lean/declarations/centeredmangoldterror-below-first-atom--7e06fc05655b21cf049ae1f0.md) | 69 | `result-track:7e06fc05655b21cf049ae1f03f6e098cefaced692f14498a6d9dc4a81b4e5dc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
