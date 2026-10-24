# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Series.Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1776aa4a6924c794468de55e4730bb8dbb654888",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1776aa4a6924c794468de55e4730bb8dbb654888`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.hasSum_cos'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/complex-hassum-cos--73b1ea00b02458c635b4ff4d.md) | 31 | `result-track:73b1ea00b02458c635b4ff4d250430206f4302491b68f0158e97960b70a81258` |
| 2 | `theorem` | [Complex.hasSum_sin'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/complex-hassum-sin--8cd855baba5f3d1657d9d5f9.md) | 48 | `result-track:8cd855baba5f3d1657d9d5f9f64bee7fb453e6f248f7662035c284682aa22678` |
| 3 | `theorem` | [Complex.hasSum_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/complex-hassum-cos--be33bcfb33f13c72d2b76ec3.md) | 67 | `result-track:be33bcfb33f13c72d2b76ec31f0db6be6bb91baa2f63763e75465c830f4b7639` |
| 4 | `theorem` | [Complex.hasSum_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/complex-hassum-sin--8a6698c035fb01ea9d8614ee.md) | 74 | `result-track:8a6698c035fb01ea9d8614eeb1db5fa86c794c83b8bd25ec6455316610a2d9d2` |
| 5 | `theorem` | [Complex.cos_eq_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/complex-cos-eq-tsum--ff70a2f15a01ba78aa8e6b42.md) | 81 | `result-track:ff70a2f15a01ba78aa8e6b42a9b1099b63b1a06eb239e7239a52d78965fb5e9e` |
| 6 | `theorem` | [Complex.sin_eq_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/complex-sin-eq-tsum--5b5e9ffe98175c6bd40d7bfc.md) | 86 | `result-track:5b5e9ffe98175c6bd40d7bfc35fd16c0b77fe78677a2bf6ea52e7a39f156d204` |
| 7 | `theorem` | [Complex.cos_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/complex-cos-eq-tsum--c6e40d3a9ab997709b9f6922.md) | 91 | `result-track:c6e40d3a9ab997709b9f6922565227f86bb6a6a3d86824740fce848bc3d17eb4` |
| 8 | `theorem` | [Complex.sin_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/complex-sin-eq-tsum--95684276cfc0baa223a122b2.md) | 96 | `result-track:95684276cfc0baa223a122b2d6d6bd8d17d44a517a608136a4721cfae375b022` |
| 9 | `theorem` | [Real.hasSum_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/real-hassum-cos--43cf8728e8767b0fa5c6742a.md) | 102 | `result-track:43cf8728e8767b0fa5c6742a579efd0756447ccddfac610da9db378c87b11234` |
| 10 | `theorem` | [Real.hasSum_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/real-hassum-sin--2f0529990addfc34dc098ee1.md) | 108 | `result-track:2f0529990addfc34dc098ee1e9cac47b42e673076967f24e999855ae38258e96` |
| 11 | `theorem` | [Real.cos_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/real-cos-eq-tsum--4057478906fedb1990f9ec4f.md) | 113 | `result-track:4057478906fedb1990f9ec4fe6d0d575af12c8aec411d3b6ce6b2aa04c052f45` |
| 12 | `theorem` | [Real.sin_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Varianta6083bfb06d52c649137d88422a87c379bbe54c8047e17ec90834b42fd8a332a.lean/declarations/real-sin-eq-tsum--fd9247044aac7655c7bb7739.md) | 117 | `result-track:fd9247044aac7655c7bb773975324b5b9c3646b4ad12ddd7ff16d68b327565a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
