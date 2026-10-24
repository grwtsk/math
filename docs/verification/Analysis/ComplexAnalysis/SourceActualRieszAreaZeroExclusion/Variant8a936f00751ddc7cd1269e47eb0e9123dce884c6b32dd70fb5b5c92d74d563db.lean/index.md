# Verification target: GRWTSK.Analysis.ComplexAnalysis.SourceActualRieszAreaZeroExclusion.Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3254e09b8547eda7f36c21edf41ce1b4e91054d8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3254e09b8547eda7f36c21edf41ce1b4e91054d8`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszQuadraticHolomorphy` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualRieszZeroPole` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extensionNumerator](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/declarations/extensionnumerator--55b0c2a2e00d3399fab1cd12.md) | 31 | `declaration-track:55b0c2a2e00d3399fab1cd121e59268b74811180a6c4fb2e572414044e93d65f` |
| 2 | `theorem` | [poleCleared_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/declarations/polecleared-analyticat--a7d51affd021cfbe780a38a4.md) | 36 | `result-track:a7d51affd021cfbe780a38a47ffc40d19b77f5f5bfa8713bea74bb4120e7dac6` |
| 3 | `theorem` | [poleCleared_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/declarations/polecleared-deriv--3b30aa3c7c12c4437d73fba7.md) | 45 | `result-track:3b30aa3c7c12c4437d73fba7d618a32dfc27a33665755e49f0672e18ac9526ab` |
| 4 | `theorem` | [extension_initial](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/declarations/extension-initial--9828fc8583579374935f13c7.md) | 55 | `result-track:9828fc8583579374935f13c7c07a3adbfb05a5c5e198f20a5871fd6b0af41534` |
| 5 | `theorem` | [extension_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/declarations/extension-analytic--20db863dae9d66292f147a1d.md) | 82 | `result-track:20db863dae9d66292f147a1dfa5f84efda31d3b578afdc3c439b51454e041285` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_poleCleared_identity](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/declarations/actualfixedcenteredrieszlaplace-polecleared-identity--08411a73bb367cfa33f85738.md) | 97 | `result-track:08411a73bb367cfa33f85738121313c466f8469a0b33e8a63145027af00da830` |
| 7 | `theorem` | [actualRiesz_quadratic_area_excludes_actual_right_zero](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/declarations/actualriesz-quadratic-area-excludes-actual-right-zero--916f3e6eb2fed3f97e3fc7ea.md) | 126 | `result-track:916f3e6eb2fed3f97e3fc7eac3f525c08058c807a45573f04460ee5f8c7946ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
