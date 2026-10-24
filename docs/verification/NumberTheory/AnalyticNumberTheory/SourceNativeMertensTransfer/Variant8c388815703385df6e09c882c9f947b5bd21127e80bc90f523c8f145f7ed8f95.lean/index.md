# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceNativeMertensTransfer.Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfd9b19e9aa9749b57aff657ebccaf6eb6341b47",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfd9b19e9aa9749b57aff657ebccaf6eb6341b47`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichletFubini` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mertensResidual_eq_angularContour](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/declarations/mertensresidual-eq-angularcontour--26c6b2d0bffe1aca691c1c6c.md) | 30 | `result-track:26c6b2d0bffe1aca691c1c6c3fe568a1b7f8a47fdb410b688b60c727113d8bdd` |
| 2 | `theorem` | [mertensResidual_sub_head_norm_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/declarations/mertensresidual-sub-head-norm-bound--802c8322b466b1043760234d.md) | 35 | `result-track:802c8322b466b1043760234d6d9807b116deb94ecaafd1d1519711262dcc4b8c` |
| 3 | `theorem` | [mertensResidual_growing_tail_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/declarations/mertensresidual-growing-tail-bound--5dc08ef0e0550e70adca6ea9.md) | 42 | `result-track:5dc08ef0e0550e70adca6ea96f4541bf0f02fb6d8e9b113f635d7dcf5ca3cdcf` |
| 4 | `theorem` | [mertensResidual_le_head_add_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/declarations/mertensresidual-le-head-add-tail--01c507e63cca7f1630686a06.md) | 49 | `result-track:01c507e63cca7f1630686a06a0f3a9bcdff69e0e4f70758e8f5e7a9316b40ca4` |
| 5 | `def` | [SignedNativeHeadTailUpperBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/declarations/signednativeheadtailupperbound--eb506921759ffa4fd1ca1c34.md) | 56 | `declaration-track:eb506921759ffa4fd1ca1c347a0d15a97c9cfbe0d633f99a6822a6a49c2c64d5` |
| 6 | `theorem` | [twoLineTailConstant_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/declarations/twolinetailconstant-nonneg--17788279825390eaca7a82b2.md) | 60 | `result-track:17788279825390eaca7a82b210775c40035296e675e0636d47518766dd796feb` |
| 7 | `theorem` | [mertensResidual_upper_of_signed_head](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/declarations/mertensresidual-upper-of-signed-head--a418d40489f3c183d7c22de4.md) | 66 | `result-track:a418d40489f3c183d7c22de43f75e2c522ab82d0811400ddd975f873dc83df1a` |
| 8 | `theorem` | [mertens_residual_tail_of_signed_native_head](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/declarations/mertens-residual-tail-of-signed-native-head--d11d53943960cadf8130f34b.md) | 78 | `result-track:d11d53943960cadf8130f34b9f2345f6b591f049db4c25dba5764d808de6c704` |
| 9 | `theorem` | [estimate_of_signed_native_head](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant8c388815703385df6e09c882c9f947b5bd21127e80bc90f523c8f145f7ed8f95.lean/declarations/estimate-of-signed-native-head--283bec8334b2fbae22fddb64.md) | 86 | `result-track:283bec8334b2fbae22fddb64bcee9cbb3a7c640f12d0da65f474ecc2d5888ed4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
