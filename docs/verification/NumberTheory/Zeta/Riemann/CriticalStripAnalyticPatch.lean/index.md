# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAnalyticPatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ece442dcd48c7411e5fe3ff63f613da93640c10",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ece442dcd48c7411e5fe3ff63f613da93640c10`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPatchCertificate`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sample_lower_of_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/declarations/sample-lower-of-enclosure--a820bb40add69504202a2adb.md) | 26 | `result-track:a820bb40add69504202a2adb5b10a89e436c83995015fb01d0f81392a6657946` |
| 2 | `def` | [ofDerivativeEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/declarations/ofderivativeenclosure--e03576544dda15f3f3aeb7cc.md) | 39 | `declaration-track:e03576544dda15f3f3aeb7ccd6b23cd1d7fe7b933bf81058d9bf91ce8dfa6259` |
| 3 | `theorem` | [source_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/declarations/source-norm-lower--a1f9b56f450021ff585f1040.md) | 61 | `result-track:a1f9b56f450021ff585f104011668900c196fb5233fd272cac906594ef445201` |
| 4 | `theorem` | [source_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/declarations/source-nonzero--b387ebccc4e9f4be761fa982.md) | 74 | `result-track:b387ebccc4e9f4be761fa98266044eef5d7eb1283c0f58ce8d48edb30019beaf` |
| 5 | `def` | [quadraticLocalModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/declarations/quadraticlocalmodel--0bd02a03d18fe2b826e938a8.md) | 88 | `declaration-track:0bd02a03d18fe2b826e938a81745ff1a7ee39352bc49a4aac750df292e0fe70f` |
| 6 | `theorem` | [quadraticLocalModel_variation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/declarations/quadraticlocalmodel-variation--cefcfaea9696c8f4d4d28dd2.md) | 92 | `result-track:cefcfaea9696c8f4d4d28dd2e7347b97c8ec8c89a6a8de412508554e58e841b5` |
| 7 | `def` | [nativeQuadraticModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/declarations/nativequadraticmodel--4c87d2df1e9663018c8a0289.md) | 113 | `declaration-track:4c87d2df1e9663018c8a02899840839b929f36c7bba7fbd37feead4dde1cf1dc` |
| 8 | `def` | [ofNativeQuadraticRemainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/declarations/ofnativequadraticremainder--dd3a211e14ca3dd2b2912062.md) | 121 | `declaration-track:dd3a211e14ca3dd2b2912062e5eee2c73a6c8668ad87a7a37a4f0aeb199814bd` |
| 9 | `theorem` | [noTargetZero_of_uniform_model](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/declarations/notargetzero-of-uniform-model--6bbaaa86c00baff6f0ff68ec.md) | 151 | `result-track:6bbaaa86c00baff6f0ff68ec5889e614ae8fd18cd8e6aa8976ba2960de1319ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
