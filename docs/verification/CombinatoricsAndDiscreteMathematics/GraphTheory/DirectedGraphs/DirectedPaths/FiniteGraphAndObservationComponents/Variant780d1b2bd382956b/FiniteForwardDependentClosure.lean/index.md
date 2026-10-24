# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DirectedGraphs.DirectedPaths.FiniteGraphAndObservationComponents.Variant780d1b2bd382956b.FiniteForwardDependentClosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03e5c6393cf387a1008800a109552910e422f6a3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03e5c6393cf387a1008800a109552910e422f6a3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Manifest` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dependentsClosure](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean/declarations/dependentsclosure--b7cbe72c9ac74e8a01668479.md) | 44 | `declaration-track:b7cbe72c9ac74e8a016684793c69d236bb7ca8ad07283cc77568477134b7b7f4` |
| 2 | `theorem` | [mem_dependentsClosure_iff](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean/declarations/mem-dependentsclosure-iff--c1c2e5178cf6262f00bd60c5.md) | 50 | `result-track:c1c2e5178cf6262f00bd60c5a1e89605d9098981e9a241ef22418f626f262c3c` |
| 3 | `theorem` | [seed_mem_dependentsClosure](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean/declarations/seed-mem-dependentsclosure--90d81c2632818bb95d9ffc7e.md) | 58 | `result-track:90d81c2632818bb95d9ffc7e2912d270b8c5cbf6fadd379aa2078a02bff84637` |
| 4 | `theorem` | [dependent_mem_dependentsClosure](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean/declarations/dependent-mem-dependentsclosure--48e7957b88eadea08853c94c.md) | 66 | `result-track:48e7957b88eadea08853c94cd9170902f0f72532360f1da7917b2e89d3b0c823` |
| 5 | `theorem` | [dependentsClosure_mono](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean/declarations/dependentsclosure-mono--fffafecfd5c4b2650aa2fa0c.md) | 76 | `result-track:fffafecfd5c4b2650aa2fa0c377b1fc1075870c3cf980c9cf75b720ecf420730` |
| 6 | `theorem` | [dependentsClosure_minimal](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/DirectedPaths/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteForwardDependentClosure.lean/declarations/dependentsclosure-minimal--651ba7dba2403378e73a71e4.md) | 86 | `result-track:651ba7dba2403378e73a71e48c477da978854478e2d56c50f7fb2c317bc904d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
