# Verification target: GRWTSK.NumberTheory.Chebyshev.ClassicalRieszNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8e956eae643db3d5b67f83db1cae7166d5f2d98",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/ClassicalRieszNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszNormalization.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8e956eae643db3d5b67f83db1cae7166d5f2d98`.

Source path: `GRWTSK/NumberTheory/Chebyshev/ClassicalRieszNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/ClassicalRieszNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.ClassicalRieszCorrection`](../../../../mathematics/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.GlobalRieszAffineNormalization`](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceSlope](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszNormalization.lean/declarations/sourceslope--7a30a39e963c034850d405d7.md) | 17 | `declaration-track:7a30a39e963c034850d405d766b84b7f4d608d25606ddc68b0017c51a5014676` |
| 2 | `def` | [sourceIntercept](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszNormalization.lean/declarations/sourceintercept--7a66f501988d833a0c2bfe28.md) | 18 | `declaration-track:7a66f501988d833a0c2bfe28f77c1b9eb316a3fac70aa2402a5292e8151352d6` |
| 3 | `theorem` | [firstRieszPrefix_eq_classical_correction](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszNormalization.lean/declarations/firstrieszprefix-eq-classical-correction--90f632c0f409b0bdf622213c.md) | 20 | `result-track:90f632c0f409b0bdf622213c1cc9a65fc38e3db560d229d25d76273cfadb8c51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
