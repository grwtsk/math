# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEmbeddingMatrix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cbe8246fc38c076cdbdbb59903d0dad2555adcb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cbe8246fc38c076cdbdbb59903d0dad2555adcb`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange`](../../../../mathematics/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.RingTheory.Discriminant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [galIndexEquiv](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean/declarations/galindexequiv--fab1703ffa91c5a89481d560.md) | 35 | `declaration-track:fab1703ffa91c5a89481d5604d0ede401176f1ed9b376bef54b40faf49a1171a` |
| 2 | `def` | [embeddingMatrix](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean/declarations/embeddingmatrix--38318e317813ffde066f3f5a.md) | 41 | `declaration-track:38318e317813ffde066f3f5ab6a4be023be4616a0798856fcd7106fd0671778d` |
| 3 | `theorem` | [embeddingMatrix_apply](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean/declarations/embeddingmatrix-apply--dfb67d8eec8529ea0e287d6d.md) | 46 | `result-track:dfb67d8eec8529ea0e287d6d5924284ee556e9e573fe5236bd6a3ef5a1c7e957` |
| 4 | `theorem` | [traceMatrix_map_eq_mul_trans](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean/declarations/tracematrix-map-eq-mul-trans--55cb8c9a6f5fe7e34dedebc5.md) | 52 | `result-track:55cb8c9a6f5fe7e34dedebc5f0c5af64a4180b7b55da6e4d24f43333426369ad` |
| 5 | `theorem` | [embeddingMatrix_det_ne_zero](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean/declarations/embeddingmatrix-det-ne-zero--d96c39c29d88005fe4d10fd1.md) | 64 | `result-track:d96c39c29d88005fe4d10fd15210831ea2f0722f050e6f26007c1f94dbbc74b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
