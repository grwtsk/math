# Verification target: GRWTSK.Algebra.CommutativeAlgebra.LinearRecurrence.Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f570caaf7b0fefbb63bd3e911dc15d73f35df2b4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f570caaf7b0fefbb63bd3e911dc15d73f35df2b4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Eval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearRecurrence](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/linearrecurrence--a3edcca5b6e3b594d7098098.md) | 57 | `declaration-track:a3edcca5b6e3b594d70980982678630cce2109e592cf003963d4f57a2743ae4f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/instance--34a2f8b1740259f4f0eee374.md) | 62 | `declaration-track:34a2f8b1740259f4f0eee374b3233a6d183ddb30f61dbcece9a0a651abfa3ffb` |
| 3 | `def` | [IsSolution](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/issolution--cf1e2bdbb2e894339f072424.md) | 73 | `declaration-track:cf1e2bdbb2e894339f072424f0248b548976646e18631507a91860934b852027` |
| 4 | `def` | [mkSol](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/mksol--06784788f32a2d8c4bb12b62.md) | 79 | `declaration-track:06784788f32a2d8c4bb12b621025fb514ae6a96601443444f279af6fae268ea0` |
| 5 | `theorem` | [is_sol_mkSol](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/is-sol-mksol--41a22fea0cdda4ef63b2aedc.md) | 93 | `result-track:41a22fea0cdda4ef63b2aedc77ae41fccf4f87b202733237d052238018e8b8c7` |
| 6 | `theorem` | [mkSol_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/mksol-eq-init--01663e7199b72a1c576b9770.md) | 100 | `result-track:01663e7199b72a1c576b977015de4593f9492ae13db2f7755fc8a6665afc61e1` |
| 7 | `theorem` | [eq_mk_of_is_sol_of_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/eq-mk-of-is-sol-of-eq-init--65cca2338c84a13c40972880.md) | 108 | `result-track:65cca2338c84a13c40972880de657f5ae30d32ae744aa06937b312e7ce145f47` |
| 8 | `theorem` | [eq_mk_of_is_sol_of_eq_init'](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/eq-mk-of-is-sol-of-eq-init--51e348a2afb61dfa84157cd8.md) | 129 | `result-track:51e348a2afb61dfa84157cd87f66273d25c39f124b54b87c6272e3804eb53454` |
| 9 | `def` | [solSpace](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/solspace--a4f8d9caa591098a1b4043a1.md) | 135 | `declaration-track:a4f8d9caa591098a1b4043a17d328e59c4c1cabbe262035ff26aaf392f355994` |
| 10 | `theorem` | [is_sol_iff_mem_solSpace](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/is-sol-iff-mem-solspace--d60c2cf8907f103ddd6e8a19.md) | 144 | `result-track:d60c2cf8907f103ddd6e8a19dee5b98fa3596e760fc262e0286c680492d42e5d` |
| 11 | `def` | [toInit](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/toinit--12fd35b108f10cb43d2168f7.md) | 150 | `declaration-track:12fd35b108f10cb43d2168f753e4ab80e9b6177aaa2dd3acbc364dea8c2469e1` |
| 12 | `theorem` | [sol_eq_of_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/sol-eq-of-eq-init--758b532c89306c3c28d68c02.md) | 164 | `result-track:758b532c89306c3c28d68c020299c83e803e0096933ae112b7adf852ef1408e3` |
| 13 | `def` | [tupleSucc](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/tuplesucc--43e266baa0aa0588689ca8a5.md) | 184 | `declaration-track:43e266baa0aa0588689ca8a59576b7cd00d19f74de3789d780c3afcf4e55197e` |
| 14 | `theorem` | [solSpace_rank](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/solspace-rank--cebeb9b0d90a5ec4a1956067.md) | 206 | `result-track:cebeb9b0d90a5ec4a19560675bd390e1bb956e665ecb03b1d6e2e6e8f1389eee` |
| 15 | `def` | [charPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/charpoly--d2e737fe6aa3ca6bfb79d670.md) | 219 | `declaration-track:d2e737fe6aa3ca6bfb79d6703dd5da648a2c51c45b0635cca727f7f1c21b903b` |
| 16 | `theorem` | [geom_sol_iff_root_charPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/declarations/geom-sol-iff-root-charpoly--c9b253402d857d769666941d.md) | 225 | `result-track:c9b253402d857d769666941d3cf4aa0dc8c9bf402ea78b635ad57b8c9fb73e4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
