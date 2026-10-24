# Verification target: GRWTSK.Algebra.LinearAlgebra.SnakeLemma.Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35e9d08906928a1d85efd64fd463b990c63a9856",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35e9d08906928a1d85efd64fd463b990c63a9856`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [SnakeLemma.δ_aux](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/declarations/snakelemma-aux--295869ad14a928b37367b506.md) | 69 | `result-track:295869ad14a928b37367b506d1bc200d06e72246b800dfb53bdd3496500ba7f4` |
| 2 | `lemma` | [SnakeLemma.eq_of_eq](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/declarations/snakelemma-eq-of-eq--5712453982b9ec96ebac0346.md) | 77 | `result-track:5712453982b9ec96ebac0346fe674f58f6212d2058c4779f7668a1df9d97a9eb` |
| 3 | `def` | [SnakeLemma.δ](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/declarations/snakelemma--6ac9d70295af0e2d636f9a78.md) | 115 | `declaration-track:6ac9d70295af0e2d636f9a78710a2e8b8bba366dcc4e2ca89e417790c0005210` |
| 4 | `lemma` | [SnakeLemma.δ_eq](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/declarations/snakelemma-eq--87866040de79ac68c810bf0b.md) | 128 | `result-track:87866040de79ac68c810bf0bef20287470646fd33a0db2a1cc715da8316cff51` |
| 5 | `lemma` | [SnakeLemma.exact_δ_right](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/declarations/snakelemma-exact-right--0251dd21901e393e0354146e.md) | 155 | `result-track:0251dd21901e393e0354146e1e865b49a78722f1175f42f6bd79120dc8a5f0bb` |
| 6 | `lemma` | [SnakeLemma.exact_δ_left](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/declarations/snakelemma-exact-left--a66f85e34fcc6408083b7a5c.md) | 194 | `result-track:a66f85e34fcc6408083b7a5cc8f5929b583b033034cbf16027868ea9d360113e` |
| 7 | `def` | [SnakeLemma.δ'](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/declarations/snakelemma--29d50d9f18459df586e6110d.md) | 233 | `declaration-track:29d50d9f18459df586e6110d7d85b923f48ee06f51df719f8d3a3c9e24c35314` |
| 8 | `lemma` | [SnakeLemma.δ'_eq](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/declarations/snakelemma-eq--ec083205dba2647b1ac1e939.md) | 236 | `result-track:ec083205dba2647b1ac1e9392fb2926c8609ffb26b9e7b45a3c7d9a9ca897233` |
| 9 | `lemma` | [SnakeLemma.exact_δ'_right](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/declarations/snakelemma-exact-right--baac7bf4bb524f264f454d61.md) | 263 | `result-track:baac7bf4bb524f264f454d610d25e19a4fbebba74a3458ad2912f8f914346505` |
| 10 | `lemma` | [SnakeLemma.exact_δ'_left](../../../../../mathematics/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/declarations/snakelemma-exact-left--774e0a154d045b13054642eb.md) | 290 | `result-track:774e0a154d045b13054642eb676c74c2d001db9c32f7ff79977bfc4d8016da0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
