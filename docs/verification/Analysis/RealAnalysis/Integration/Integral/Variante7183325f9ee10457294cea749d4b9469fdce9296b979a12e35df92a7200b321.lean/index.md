# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b158ff982a5f68c7c5ae30446d2c9da02375fa2a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b158ff982a5f68c7c5ae30446d2c9da02375fa2a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_rpow_eq_lintegral_meas_le_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean/declarations/lintegral-rpow-eq-lintegral-meas-le-mul--1a018f4f10e6a857a1e5173c.md) | 47 | `result-track:1a018f4f10e6a857a1e5173cb0e14ad563e017698cab3a8a4d10ae5c6f097c1e` |
| 2 | `theorem` | [lintegral_rpow_eq_lintegral_meas_lt_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean/declarations/lintegral-rpow-eq-lintegral-meas-lt-mul--dda36573fe86e025585c1614.md) | 81 | `result-track:dda36573fe86e025585c1614f89042aecf50bd7f99828383113e08f85e66bc58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
