# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.QuaternionExponential.Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dc379305b4b4f7d724001a61f538ff95bc24015",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dc379305b4b4f7d724001a61f538ff95bc24015`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Quaternion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Exponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Series` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_coe](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/declarations/exp-coe--b564d44ea34bc7c456f41f86.md) | 33 | `result-track:b564d44ea34bc7c456f41f86f0ebf14ad6769533f40cc526a6abdefaa0c35a71` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/declarations/macro-rules--834c524431ef9414bca7ce91.md) | 37 | `declaration-track:834c524431ef9414bca7ce9189f980943909f63333b158d86473a1b94deca089` |
| 3 | `theorem` | [hasSum_expSeries_of_imaginary](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/declarations/hassum-expseries-of-imaginary--bfb577eeb7fea693360fbfc7.md) | 41 | `result-track:bfb577eeb7fea693360fbfc7eab157bde765e2eb362146e49f8c2554e6f22f38` |
| 4 | `theorem` | [exp_of_re_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/declarations/exp-of-re-eq-zero--6b5958316c0672e0f0a5051f.md) | 92 | `result-track:6b5958316c0672e0f0a5051fc37610a5231f5eae1d19e4da21036ea8c329a87a` |
| 5 | `theorem` | [exp_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/declarations/exp-eq--548e219f2e400d559749a11d.md) | 101 | `result-track:548e219f2e400d559749a11d1628b1ea88b3d0fb1cfcbc94d6cef649c1092efc` |
| 6 | `theorem` | [re_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/declarations/re-exp--ad67ff7c0395e3720b14b828.md) | 108 | `result-track:ad67ff7c0395e3720b14b82819391b37d0f9755bab033119c284390c4a09ecf1` |
| 7 | `theorem` | [im_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/declarations/im-exp--eb3a4f3f6de648b9986d90a2.md) | 111 | `result-track:eb3a4f3f6de648b9986d90a21b8eeadc00809305178f3cdf563217b274e293c3` |
| 8 | `theorem` | [normSq_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/declarations/normsq-exp--c53f21df388b9249f0bade33.md) | 115 | `result-track:c53f21df388b9249f0bade33620aa84a447deaeb05ee4584b56c56bf9157b4d7` |
| 9 | `theorem` | [norm_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/declarations/norm-exp--fe208e0a8f44fca2924f3e21.md) | 136 | `result-track:fe208e0a8f44fca2924f3e21ca18b159eeea48d31cde6a687a29581b585e6abe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
