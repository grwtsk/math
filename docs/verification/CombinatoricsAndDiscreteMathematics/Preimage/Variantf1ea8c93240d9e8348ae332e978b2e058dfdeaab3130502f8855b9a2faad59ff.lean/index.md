# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Preimage.Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32c7920b9d71271546f7f4afefb7db2d2a8a8daa",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32c7920b9d71271546f7f4afefb7db2d2a8a8daa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Preimage/Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Preimage` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_preimage'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff.lean/declarations/prod-preimage--b2b7cd432fbab53a381ef42e.md) | 24 | `result-track:b2b7cd432fbab53a381ef42e206992a66c68031f3ce5bc98fb5f5b244228b06b` |
| 2 | `lemma` | [prod_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff.lean/declarations/prod-preimage--24a74bd559526b8bf8c3ecad.md) | 33 | `result-track:24a74bd559526b8bf8c3ecad914d15d7b2526473f3d5893ff6bea8414de66614` |
| 3 | `lemma` | [prod_preimage_of_bij](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf1ea8c93240d9e8348ae332e978b2e058dfdeaab3130502f8855b9a2faad59ff.lean/declarations/prod-preimage-of-bij--d26ae07af1516cc453266f1f.md) | 39 | `result-track:d26ae07af1516cc453266f1f7bc2f96af770849a4668724d6ffc0da38bc39e60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
