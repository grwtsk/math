# Verification target: GRWTSK.Algebra.LinearAlgebra.Even.Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5e55661dfcb6486dec30c345da02fd83552f7eb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5e55661dfcb6486dec30c345da02fd83552f7eb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Grading` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [even](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/even--7edebeae4684607f56ba231f.md) | 56 | `declaration-track:7edebeae4684607f56ba231f1815be9d086b1d9e5b4364853ac88dba22830f16` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/instance--e8f522f82073cca0a9acef87.md) | 62 | `declaration-track:e8f522f82073cca0a9acef873fcd6e1f6f22de27dd15ec510f9bff80405907ec` |
| 3 | `theorem` | [even_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/even-tosubmodule--40ce5da3234fca09a525b12b.md) | 64 | `result-track:40ce5da3234fca09a525b12b8bb459cf3897ff8717166a420ba91ebcd2415aba` |
| 4 | `structure` | [EvenHom](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/evenhom--fdabd68285658c5d1a612358.md) | 72 | `declaration-track:fdabd68285658c5d1a6123580ea25a3cacb2ae040bdff04b2b3de70c827d1aef` |
| 5 | `def` | [EvenHom.compr₂](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/evenhom-compr--29c06b6bdd35669d06911de0.md) | 82 | `declaration-track:29c06b6bdd35669d06911de03bcbe72f97c6ade0d3350735075a023ecca7c403` |
| 6 | `def` | [even.ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/even--8d4faeb49f797637ddea53af.md) | 93 | `declaration-track:8d4faeb49f797637ddea53af4dd2d391dbbfa0c3e00e4d8e13f7a4fed0e191ef` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/instance--e98b0ff47627f5d32fc49fdf.md) | 109 | `declaration-track:e98b0ff47627f5d32fc49fdf10003c825a6a808d3d2ec67bc03aec8f509a3287` |
| 8 | `theorem` | [even.algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/even-alghom-ext--de7d89197acb906bc47768d4.md) | 118 | `result-track:de7d89197acb906bc47768d4c4e6edb788257bf465aa41f8fe703b669613e4cc` |
| 9 | `def` | [S](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/s--c73f41d977a90972ea6dd654.md) | 139 | `declaration-track:c73f41d977a90972ea6dd654098d6448c224077aa82204ba905e021724cd396c` |
| 10 | `def` | [fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/ffold--d802e5eb9520670334bc727e.md) | 146 | `declaration-track:d802e5eb9520670334bc727e364698b975ced88739d24646433fd72e0369be0a` |
| 11 | `theorem` | [fst_fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/fst-ffold-ffold--fc1c1d3ab1d925fad585fc69.md) | 174 | `result-track:fc1c1d3ab1d925fad585fc691147b903c482569fc8384cc4d92eccf7be0615c2` |
| 12 | `theorem` | [snd_fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/snd-ffold-ffold--a6a446bd7743928f0987193a.md) | 179 | `result-track:a6a446bd7743928f0987193a876c60f6498bfcf8c8774e309bb96b1eace43539` |
| 13 | `theorem` | [fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/ffold-ffold--adcb110830abc61619a93694.md) | 183 | `result-track:adcb110830abc61619a93694ae2e8b61032b396b95d74b853f473116da0163d0` |
| 14 | `def` | [aux](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/aux--c2654cda0eb804e2a1ce17dd.md) | 206 | `declaration-track:c2654cda0eb804e2a1ce17dde84dc95d57686aa079413a15f1b587102f788c18` |
| 15 | `theorem` | [aux_one](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/aux-one--1b990f038aac1a15e37ddaaa.md) | 214 | `result-track:1b990f038aac1a15e37ddaaa839e1e8bf515a739eb789f56699def86a9fa39bf` |
| 16 | `theorem` | [aux_ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/aux--32e807b15fe76aa0f5c994e7.md) | 219 | `result-track:32e807b15fe76aa0f5c994e7a8c3409b7d90f9fc194f7eed8d23b4b8a5c9cce8` |
| 17 | `theorem` | [aux_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/aux-algebramap--0cf6803b2a8eca2a60bb3036.md) | 227 | `result-track:0cf6803b2a8eca2a60bb3036246dce0c3a54ad6c8536f54cac13632f83588ff4` |
| 18 | `theorem` | [aux_mul](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/aux-mul--c3026654cb4cc2e307859f40.md) | 232 | `result-track:c3026654cb4cc2e307859f4081d3916aab7ccf875e9e9f4c5db7c72770ef93b7` |
| 19 | `def` | [even.lift](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/even-lift--031ed86a9a9e3a3d13701915.md) | 260 | `declaration-track:031ed86a9a9e3a3d137019150523643e60f775abdf3bcb93576a2bf3375d7b62` |
| 20 | `theorem` | [even.lift_ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/declarations/even-lift--a127f17fc6f2b0ab99c9ec57.md) | 268 | `result-track:a127f17fc6f2b0ab99c9ec573f822f498eda0442e74c61b221458af508273959` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
