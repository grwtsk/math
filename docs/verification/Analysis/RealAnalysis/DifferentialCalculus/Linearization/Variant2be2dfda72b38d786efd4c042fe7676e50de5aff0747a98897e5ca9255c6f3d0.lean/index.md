# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Linearization.Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4814f63849129b4aa7e1e363c9ffb09d1d8e6442",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4814f63849129b4aa7e1e363c9ffb09d1d8e6442`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Stability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearizationCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/declarations/linearizationcertificate--1a9e9d240fcdac35220c3ad9.md) | 27 | `declaration-track:1a9e9d240fcdac35220c3ad94a77693cf72035072dabd7c7cf24cece9ccfee78` |
| 2 | `structure` | [LinearizationIntertwining](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/declarations/linearizationintertwining--f5f952f55e2f0c4a931a67ef.md) | 55 | `declaration-track:f5f952f55e2f0c4a931a67efad60664723a5acb484e2363dcfc076a552e98663` |
| 3 | `theorem` | [apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/declarations/apply--5cf56c7e28441df9125b0f1d.md) | 83 | `result-track:5cf56c7e28441df9125b0f1d85438db1ffd729a89e63fd53ea4ed2d32ee499bd` |
| 4 | `structure` | [FiniteLyapunovOperatorCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/declarations/finitelyapunovoperatorcertificate--a11a98b740d832cef24d62cf.md) | 101 | `declaration-track:a11a98b740d832cef24d62cfcba77c69157755ba3d4f02960ae5219dbb309065` |
| 5 | `theorem` | [decreased_energy_with_margin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/declarations/decreased-energy-with-margin--a40b873c975d06f386cba2ed.md) | 133 | `result-track:a40b873c975d06f386cba2ed1fc80aafbf9fb00a399d5d3d6e7bf1aeea234ff8` |
| 6 | `structure` | [VerifiedNumericalChecker](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/declarations/verifiednumericalchecker--4623d615394d233ea2aeb88a.md) | 155 | `declaration-track:4623d615394d233ea2aeb88a4d67dd3445ab41f06e340da23cf50f1dbfae88b2` |
| 7 | `theorem` | [proves_after_acceptance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/declarations/proves-after-acceptance--9307a430de5d9d373e450669.md) | 163 | `result-track:9307a430de5d9d373e45066978efada431ccad80f6586a9721ff1eec149b2343` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
