# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerDefinitions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc237e533fd5a6a62989e61c5a38b2f66c2d4883",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc237e533fd5a6a62989e61c5a38b2f66c2d4883`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFejerKernel`](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Analysis.Fourier.ZMod` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symmetricTriangularWeight](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/declarations/symmetrictriangularweight--abbe68c690cac0f541da8329.md) | 16 | `declaration-track:abbe68c690cac0f541da832951fdbd7a62060bbbc1812edbd82d4522c5e9e7e7` |
| 2 | `def` | [symmetricTriangularKernel](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/declarations/symmetrictriangularkernel--431176c16eb6f748d560cdd9.md) | 22 | `declaration-track:431176c16eb6f748d560cdd91b13e3eabebde52defa637ab366ed311ffd7abf7` |
| 3 | `def` | [signedSampledTriangularKernelAtPeriod](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/declarations/signedsampledtriangularkernelatperiod--ea7ab342139a6ac9d7a8f0de.md) | 27 | `declaration-track:ea7ab342139a6ac9d7a8f0de8e3b71ffa490b32c3614476f6d56f542b954714d` |
| 4 | `def` | [fejerOctavePeriod](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/declarations/fejeroctaveperiod--68ce8d3875edf3f86d96ba30.md) | 33 | `declaration-track:68ce8d3875edf3f86d96ba30fe03e6e57edcab398d4143b6b70db6c6138fbe46` |
| 5 | `def` | [nonAliasingFejerPrefixWeight](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/declarations/nonaliasingfejerprefixweight--a5372b8e7dd26dcfcf7b1f1f.md) | 35 | `declaration-track:a5372b8e7dd26dcfcf7b1f1f8fc66b8618d6f7ae2aa59ba0ec1bab9913d96d8e` |
| 6 | `def` | [NonAliasingFejerCutoffRegime](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/declarations/nonaliasingfejercutoffregime--fa027c0fc324e6aede024cdc.md) | 42 | `declaration-track:fa027c0fc324e6aede024cdce71feb12c70e5b197e1c30fa99fd625f0b1e1bfb` |
| 7 | `theorem` | [symmetricTriangularWeight_neg](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/declarations/symmetrictriangularweight-neg--1e4bd4afcb077022c2a7c516.md) | 46 | `result-track:1e4bd4afcb077022c2a7c5164b81d466f980386b23e2e050cede98a6e7af479a` |
| 8 | `theorem` | [symmetricTriangularKernel_endpoint_weights_zero](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/declarations/symmetrictriangularkernel-endpoint-weights-zero--61fdf043a85f3b6e14382b4d.md) | 52 | `result-track:61fdf043a85f3b6e14382b4d5a2673dd59d205ba683fe80f36cd2a5bc14f8a22` |
| 9 | `theorem` | [symmetricTriangularWeight_zero](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDefinitions.lean/declarations/symmetrictriangularweight-zero--e7b5a92a4f5f2e7823f035de.md) | 59 | `result-track:e7b5a92a4f5f2e7823f035de70ebe521e512b67c352546e606f94d191acedc4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
