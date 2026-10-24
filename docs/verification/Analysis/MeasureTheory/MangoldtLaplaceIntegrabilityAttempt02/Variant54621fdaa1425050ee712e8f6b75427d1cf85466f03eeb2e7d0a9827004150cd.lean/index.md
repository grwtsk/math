# Verification target: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt02.Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5174f662f8bdcdd806151d0935e3785dcc29e888",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5174f662f8bdcdd806151d0935e3785dcc29e888`.

Source path: `GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean.json)

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
| 1 | `theorem` | [mangoldtLogPrefix_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/declarations/mangoldtlogprefix-measurable--d817a9d2c5c4e74c69223806.md) | 17 | `result-track:d817a9d2c5c4e74c69223806b8a199bedba1692692e528d70c4b507a8fb71e0f` |
| 2 | `theorem` | [mangoldtLogError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/declarations/mangoldtlogerror-measurable--8223a3edd97cb24edd72568c.md) | 21 | `result-track:8223a3edd97cb24edd72568c4b753d741e678f7304a9e4db606257ebb39dd880` |
| 3 | `theorem` | [centeredMangoldtError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/declarations/centeredmangoldterror-measurable--0a6bddb1118adc490e21f375.md) | 25 | `result-track:0a6bddb1118adc490e21f3754d3bb86cedb2563c4ba18c061e3cebdd62fbafbd` |
| 4 | `theorem` | [centeredMangoldtError_bound](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/declarations/centeredmangoldterror-bound--109d71ea531936eae5365daf.md) | 30 | `result-track:109d71ea531936eae5365dafdcbfdb1d0d6b952334bfb2e1ef30fdda12d6ce7e` |
| 5 | `theorem` | [centeredMangoldtError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/declarations/centeredmangoldterror-laplace-integrable--fcf63faad00ec111f47bb401.md) | 36 | `result-track:fcf63faad00ec111f47bb40123b3493555aa7bc85ba58f71dacbf7910af5b703` |
| 6 | `theorem` | [mangoldtLogError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/declarations/mangoldtlogerror-laplace-integrable--dd3b04e1d0bba998fffb6bf8.md) | 58 | `result-track:dd3b04e1d0bba998fffb6bf84442f21e799cdc91b1ba11df9631be137655d7f7` |
| 7 | `theorem` | [centeredMangoldtError_below_first_atom](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/declarations/centeredmangoldterror-below-first-atom--6dd110faa8535af71511434e.md) | 69 | `result-track:6dd110faa8535af71511434edb6084c884bdb82b33a5054fa4183c40798df6e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
