# Verification target: GRWTSK.Analysis.FunctionalAnalysis.DoublyStochastic.Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1c7453b6a11bb6e14366d526702480a75f3f69f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1c7453b6a11bb6e14366d526702480a75f3f69f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Permutation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [doublyStochastic](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/doublystochastic--b4a2d9faf6d4b3d0b7fd8ed2.md) | 53 | `declaration-track:b4a2d9faf6d4b3d0b7fd8ed2fd92c2adcc1a7cd39146c377e8fd4d693b3bcb3d` |
| 2 | `lemma` | [mem_doublyStochastic](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/mem-doublystochastic--449370e46202ec21d540f17a.md) | 63 | `result-track:449370e46202ec21d540f17ae7c6fbdd3909de5fed46e4b4ba9819b8e59ab1a7` |
| 3 | `lemma` | [mem_doublyStochastic_iff_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/mem-doublystochastic-iff-sum--006940660cd785debc88aaa6.md) | 67 | `result-track:006940660cd785debc88aaa6d511e54a02753a029f1f1ec50ff84b5606dd3baa` |
| 4 | `lemma` | [nonneg_of_mem_doublyStochastic](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/nonneg-of-mem-doublystochastic--053245b1971b65157d8723e4.md) | 73 | `result-track:053245b1971b65157d8723e4fdb37d7b5b268c02f060b153e6cf98050d820f2b` |
| 5 | `lemma` | [sum_row_of_mem_doublyStochastic](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/sum-row-of-mem-doublystochastic--a5f5badbb5dd68f201549737.md) | 77 | `result-track:a5f5badbb5dd68f20154973739ea04d2bc4f4dd87cfcf9807783c8eb0e7cce24` |
| 6 | `lemma` | [sum_col_of_mem_doublyStochastic](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/sum-col-of-mem-doublystochastic--ecbf30b8b16f7a4a1c7208a7.md) | 81 | `result-track:ecbf30b8b16f7a4a1c7208a7412ea97922e79e9d7fd7034f465d7e7353886f87` |
| 7 | `lemma` | [mulVec_one_of_mem_doublyStochastic](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/mulvec-one-of-mem-doublystochastic--4655b1f89055f307dca0d061.md) | 85 | `result-track:4655b1f89055f307dca0d061a39cdf138fd3b0d56aa4836c49056e4023065844` |
| 8 | `lemma` | [one_vecMul_of_mem_doublyStochastic](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/one-vecmul-of-mem-doublystochastic--383978a4ce559ceeb1c95339.md) | 89 | `result-track:383978a4ce559ceeb1c953396b7565425bb3469946534ec338bd30e8c01632fd` |
| 9 | `lemma` | [le_one_of_mem_doublyStochastic](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/le-one-of-mem-doublystochastic--6e70cf5abe246a52fabd2622.md) | 93 | `result-track:6e70cf5abe246a52fabd26226bfeadfd27dc449a6b793c5d8f6852ea540e6f9b` |
| 10 | `lemma` | [convex_doublyStochastic](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/convex-doublystochastic--91a3df21272ef8c8830ed0f4.md) | 99 | `result-track:91a3df21272ef8c8830ed0f46fdf48446d4295507b5196a3fb06912938bb5e3c` |
| 11 | `lemma` | [permMatrix_mem_doublyStochastic](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/permmatrix-mem-doublystochastic--030a11e87ec0a2bc456a8cf2.md) | 105 | `result-track:030a11e87ec0a2bc456a8cf2204d0796c9c9f08d12adf068347afc2750d9113c` |
| 12 | `lemma` | [exists_mem_doublyStochastic_eq_smul_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/declarations/exists-mem-doublystochastic-eq-smul-iff--f2215eaa87781f237aec4c71.md) | 126 | `result-track:f2215eaa87781f237aec4c717512548eb91d48a0fa23c8df7fde50f297d7da23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
