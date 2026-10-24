# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variantc7d70f9c4dd769f6178f7fbea68fd56c391275ea4f9a8426b7774f7673a6ac26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aa8241f196df7359fc74fbdcdf6a3fdf0abea33",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantc7d70f9c4dd769f6178f7fbea68fd56c391275ea4f9a8426b7774f7673a6ac26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc7d70f9c4dd769f6178f7fbea68fd56c391275ea4f9a8426b7774f7673a6ac26.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc7d70f9c4dd769f6178f7fbea68fd56c391275ea4f9a8426b7774f7673a6ac26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aa8241f196df7359fc74fbdcdf6a3fdf0abea33`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantc7d70f9c4dd769f6178f7fbea68fd56c391275ea4f9a8426b7774f7673a6ac26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variantc7d70f9c4dd769f6178f7fbea68fd56c391275ea4f9a8426b7774f7673a6ac26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Charpoly.ToMatrix` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LinearMap.charpoly_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc7d70f9c4dd769f6178f7fbea68fd56c391275ea4f9a8426b7774f7673a6ac26.lean/declarations/linearmap-charpoly-basechange--d6ec4964355537ff799f50b8.md) | 14 | `result-track:d6ec4964355537ff799f50b80009a171dd770b61fedcead65d79f0b1ede482b1` |
| 2 | `lemma` | [LinearMap.det_eq_sign_charpoly_coeff](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc7d70f9c4dd769f6178f7fbea68fd56c391275ea4f9a8426b7774f7673a6ac26.lean/declarations/linearmap-det-eq-sign-charpoly-coeff--69b6d9d0b7ce35298f64d446.md) | 28 | `result-track:69b6d9d0b7ce35298f64d44604716b691ade2aa52b8c4bb986438bbbee60bb99` |
| 3 | `lemma` | [LinearMap.det_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc7d70f9c4dd769f6178f7fbea68fd56c391275ea4f9a8426b7774f7673a6ac26.lean/declarations/linearmap-det-basechange--0ed711ede6c3df3b2f790d70.md) | 35 | `result-track:0ed711ede6c3df3b2f790d7095291611c50ff7f9d5e1e742dd8daf0ac6b7b6c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
