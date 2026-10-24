# Verification target: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrability.Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "283dad73586ec5997d31399bf59a6dec30d2dbf6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `283dad73586ec5997d31399bf59a6dec30d2dbf6`.

Source path: `GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mangoldtLogPrefix_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/declarations/mangoldtlogprefix-measurable--bae3b18f22d3871bf2297c13.md) | 18 | `result-track:bae3b18f22d3871bf2297c13ba430cbf4d2b0f14aebc78e0f22d9f277c6c8e37` |
| 2 | `theorem` | [mangoldtLogError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/declarations/mangoldtlogerror-measurable--06400124b0e6ad2e79e28468.md) | 22 | `result-track:06400124b0e6ad2e79e284687016e72a3773c55e926579206d39de29a8ee2844` |
| 3 | `theorem` | [centeredMangoldtError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/declarations/centeredmangoldterror-measurable--e29c9dde7957065c4d3efa98.md) | 26 | `result-track:e29c9dde7957065c4d3efa9874ba748753b7d468a221de34d310eb55ea4872f0` |
| 4 | `theorem` | [centeredMangoldtError_bound](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/declarations/centeredmangoldterror-bound--68371019c733a96c9c4a2d4d.md) | 31 | `result-track:68371019c733a96c9c4a2d4d85c251d9d251c0e59c9810427a494248c0912667` |
| 5 | `theorem` | [centeredMangoldtError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/declarations/centeredmangoldterror-laplace-integrable--c1c9580f9289d7e79a272c83.md) | 37 | `result-track:c1c9580f9289d7e79a272c8356b4eed1490c15868b33ef4eb40d4eb590c476e3` |
| 6 | `theorem` | [mangoldtLogError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/declarations/mangoldtlogerror-laplace-integrable--ecf32e5764c62d88cb1b0ee5.md) | 59 | `result-track:ecf32e5764c62d88cb1b0ee55280a80ea9d64da7dadf6d8aa4d09137bd210f4c` |
| 7 | `theorem` | [linear_exponential_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/declarations/linear-exponential-integrable--65c85ab419528e167fb68e5a.md) | 71 | `result-track:65c85ab419528e167fb68e5aa6939b59196a2dd67f70f8a7dfc1455f998ad43d` |
| 8 | `theorem` | [linear_complex_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/declarations/linear-complex-laplace-integrable--00016ac6e733f3ccf959719b.md) | 78 | `result-track:00016ac6e733f3ccf959719b4945984be41e96d8beaacf68955e4449c7b7ec0f` |
| 9 | `theorem` | [mangoldtLogPrefix_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/declarations/mangoldtlogprefix-laplace-integrable--080cdbaa069856a3f4b4d877.md) | 91 | `result-track:080cdbaa069856a3f4b4d877710fd33a9762d9db2037e96f98021bf1754f334d` |
| 10 | `theorem` | [centeredMangoldtError_below_first_atom](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/declarations/centeredmangoldterror-below-first-atom--a56a1cb6cfc53a50c7352630.md) | 101 | `result-track:a56a1cb6cfc53a50c73526308c848fe9cb1c7640f282ebb3520d50e1d3be4dd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
