# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt03.Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cbdd4a77ae7fd0970998d53453c9d320face567",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cbdd4a77ae7fd0970998d53453c9d320face567`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean/declarations/cartanmatrix--b0fcd1e3e1d6d9cb954793cb.md) | 14 | `declaration-track:b0fcd1e3e1d6d9cb954793cb41c42fcc0a640d7cc5aff5c2ef4c5606a2175ac1` |
| 2 | `theorem` | [mutationMatrix_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean/declarations/mutationmatrix-cartan--8538191e898bbb7e35f7611e.md) | 17 | `result-track:8538191e898bbb7e35f7611ea825bc6d5df42aa9edf69ec86eb4aeb89e1b52e2` |
| 3 | `theorem` | [mutation_form_entry](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean/declarations/mutation-form-entry--316e933e76a29567624567f8.md) | 33 | `result-track:316e933e76a29567624567f849a73ff25cd5ccf86f669ba419c9c1196de79cfe` |
| 4 | `theorem` | [weightedCartan_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean/declarations/weightedcartan-symmetric--868b54262b06ba3a313a9de5.md) | 49 | `result-track:868b54262b06ba3a313a9de5a5fad84f543d59708b812fc324ade1f9629e3475` |
| 5 | `theorem` | [mutationMatrix_weighted_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean/declarations/mutationmatrix-weighted-metric--f2d71377218f8d2e3b5a8793.md) | 63 | `result-track:f2d71377218f8d2e3b5a879335a0362351963a10a5e8d455940dc2adee8877fd` |
| 6 | `theorem` | [mutationMatrix_symmetric_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean/declarations/mutationmatrix-symmetric-metric--681402f678526179cdad0aa4.md) | 81 | `result-track:681402f678526179cdad0aa4a75d351c93c1c7b35881cffd96b2bb7a2b8687f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
