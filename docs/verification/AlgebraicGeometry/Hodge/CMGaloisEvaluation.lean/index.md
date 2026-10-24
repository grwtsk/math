# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a18d91ec5fddee887c93c8217e4eda2b755466e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a18d91ec5fddee887c93c8217e4eda2b755466e`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEmbeddingMatrix`](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange`](../../../../mathematics/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Free` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [embeddingValues](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/embeddingvalues--44b109c90111da367d025e70.md) | 39 | `declaration-track:44b109c90111da367d025e70297103455b983c95fad82bb04e6564002e37d316` |
| 2 | `def` | [evaluation](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/evaluation--aa93b9dd8b02585a8f3b2866.md) | 49 | `declaration-track:aa93b9dd8b02585a8f3b28666b36573de2cb4b0e5e8e7ed756222d9d58a3f38c` |
| 3 | `theorem` | [evaluation_tmul](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/evaluation-tmul--607de6266839a0e6929f0bf7.md) | 53 | `result-track:607de6266839a0e6929f0bf779f13b28e1d03743132aece47c89623c153a05ba` |
| 4 | `def` | [sourceBasis](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/sourcebasis--a4cf64f9e9f5d9fe6b46035b.md) | 59 | `declaration-track:a4cf64f9e9f5d9fe6b46035bbec5ac5654da41d9b661673f914719eac2de8e7f` |
| 5 | `theorem` | [evaluation_toMatrix](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/evaluation-tomatrix--11cb42e1013ff850275f5a05.md) | 63 | `result-track:11cb42e1013ff850275f5a05a3d6a75efe2ef9e1b3d0b259f4d824cc7ed1a50e` |
| 6 | `theorem` | [evaluation_matrix_det_ne_zero](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/evaluation-matrix-det-ne-zero--bd003ee1209473e30ceed61d.md) | 73 | `result-track:bd003ee1209473e30ceed61df75f0012f0ce48676a19682fdc010a49fa4b0410` |
| 7 | `theorem` | [evaluation_injective](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/evaluation-injective--c0a444c9b84318d88358aab7.md) | 80 | `result-track:c0a444c9b84318d88358aab72c4ddc1652355dcef6e2a34ed1feb53712e874f5` |
| 8 | `theorem` | [evaluation_finrank_eq](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/evaluation-finrank-eq--b2d60a931299919f86d9be49.md) | 94 | `result-track:b2d60a931299919f86d9be49a4c308f0adf6013786c6f1d405a5520728533c1c` |
| 9 | `def` | [evaluationEquiv](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/evaluationequiv--3221de93a1326ea75335aa31.md) | 100 | `declaration-track:3221de93a1326ea75335aa316bf6d9e049c163b4f2ac448fe51417d1ab92d38f` |
| 10 | `theorem` | [evaluationEquiv_apply](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/evaluationequiv-apply--7b464c33e22c01b5807a5be1.md) | 106 | `result-track:7b464c33e22c01b5807a5be196d5becf5694d7c1306dc96c55d481643c9ebfe8` |
| 11 | `theorem` | [evaluationEquiv_tmul](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/declarations/evaluationequiv-tmul--950c8ef0e477c99c369b7b24.md) | 110 | `result-track:950c8ef0e477c99c369b7b24ff04f7de05ab636761eb4a0e30a1e09c14c32464` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
