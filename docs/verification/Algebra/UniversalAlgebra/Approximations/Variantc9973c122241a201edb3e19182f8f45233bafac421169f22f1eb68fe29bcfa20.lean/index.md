# Verification target: GRWTSK.Algebra.UniversalAlgebra.Approximations.Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ab394cb72efca213735e696610fd0981aea9942",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ab394cb72efca213735e696610fd0981aea9942`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Determinant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.CorrectnessTerminating` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nth_stream_fr_nonneg_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/nth-stream-fr-nonneg-lt-one--d88bd9caf04b4b091c1d064a.md) | 76 | `result-track:d88bd9caf04b4b091c1d064abab8e6485f6158bd05fde840ba17c4a39dc5b631` |
| 2 | `theorem` | [nth_stream_fr_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/nth-stream-fr-nonneg--6a67842b8e9b9eeecf08f46d.md) | 89 | `result-track:6a67842b8e9b9eeecf08f46d9d3e2cff7dd7b20d649c71f18687885ebc30a9e3` |
| 3 | `theorem` | [nth_stream_fr_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/nth-stream-fr-lt-one--790e606f1ee25f13fb08abd6.md) | 94 | `result-track:790e606f1ee25f13fb08abd6cbb8f6bd4eb5a87da7bbcc23ac87f7fbc6ce6465` |
| 4 | `theorem` | [one_le_succ_nth_stream_b](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/one-le-succ-nth-stream-b--5de85fb91db019ae94b06d71.md) | 99 | `result-track:5de85fb91db019ae94b06d716817a8c2ab1760435f89743087a50cd9c20e5522` |
| 5 | `theorem` | [succ_nth_stream_b_le_nth_stream_fr_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/succ-nth-stream-b-le-nth-stream-fr-inv--57e731218cfe9025bd874e74.md) | 115 | `result-track:57e731218cfe9025bd874e744362a4b8dd2861ef55aa94cdffdc464c0be9fe2c` |
| 6 | `theorem` | [of_one_le_get?_partDen](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/of-one-le-get-partden--6877f189b8fceb0973093453.md) | 138 | `result-track:6877f189b8fceb0973093453bae8d295ed18edb0ccaf2869a09311b7a6341e33` |
| 7 | `theorem` | [of_partNum_eq_one_and_exists_int_partDen_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/of-partnum-eq-one-and-exists-int-partden-eq--9598e0e630dc826ddc8ab7ab.md) | 152 | `result-track:9598e0e630dc826ddc8ab7ab4c1b31cd58a373415b41788cc1d147e802037ce1` |
| 8 | `theorem` | [of_partNum_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/of-partnum-eq-one--a30dcfb7e0102d87b8e80cab.md) | 164 | `result-track:a30dcfb7e0102d87b8e80cabd8ee576f3971730e1b6365d58ad42829aaeac010` |
| 9 | `theorem` | [exists_int_eq_of_partDen](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/exists-int-eq-of-partden--d0b3e64df8ace74e16966c7a.md) | 172 | `result-track:d0b3e64df8ace74e16966c7acae803677356e6d212442dc1a53e0d689aabe8cb` |
| 10 | `theorem` | [GenContFract.of_isSimpContFract](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/gencontfract-of-issimpcontfract--23a9de8db8dd99ae63dc0768.md) | 183 | `result-track:23a9de8db8dd99ae63dc07682bea6a0cc049a55a15a818185b76cdb9b6d97bd7` |
| 11 | `def` | [SimpContFract.of](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/simpcontfract-of--4b9c5c051231ec37200372a3.md) | 188 | `declaration-track:4b9c5c051231ec37200372a3dd9ae683fef9c3bb9f526b2d5700a8ddfc467510` |
| 12 | `theorem` | [SimpContFract.of_isContFract](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/simpcontfract-of-iscontfract--46acf4ac61b7525611db2a4b.md) | 191 | `result-track:46acf4ac61b7525611db2a4b16c189dc4ee1a6e2e33607986db5c8e85ea72ef1` |
| 13 | `def` | [ContFract.of](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/contfract-of--849f71d5d11444c07e477226.md) | 196 | `declaration-track:849f71d5d11444c07e4772269201398bfa7748105f7537d9a63a2f096b2c7a51` |
| 14 | `theorem` | [fib_le_of_contsAux_b](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/fib-le-of-contsaux-b--d721521786ac7b66520f92a8.md) | 213 | `result-track:d721521786ac7b66520f92a8820d535f31ed20cd65bfc0ba0680311dbcf97c03` |
| 15 | `theorem` | [succ_nth_fib_le_of_nth_den](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/succ-nth-fib-le-of-nth-den--a632eb05b93ade601045ec38.md) | 254 | `result-track:a632eb05b93ade601045ec38a7eaadeb0bd310bf3478088ec94dae739b68cd92` |
| 16 | `theorem` | [zero_le_of_contsAux_b](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/zero-le-of-contsaux-b--360c72aaf89a9fe7b7f4fee7.md) | 266 | `result-track:360c72aaf89a9fe7b7f4fee7e0b2f362ed2a4eaaf3f08bf8358a52217c74a839` |
| 17 | `theorem` | [zero_le_of_den](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/zero-le-of-den--de93acd62a247476c381f029.md) | 284 | `result-track:de93acd62a247476c381f029b285423ec0c67b83ae8281c861cb6f902d9d8dbb` |
| 18 | `theorem` | [le_of_succ_succ_get?_contsAux_b](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/le-of-succ-succ-get-contsaux-b--5272b2592de9a46d58a7f0bd.md) | 287 | `result-track:5272b2592de9a46d58a7f0bdae009873266d1a0984eaa45a85733bd394d8fc06` |
| 19 | `theorem` | [le_of_succ_get?_den](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/le-of-succ-get-den--42f222f107e0c619e60dad13.md) | 297 | `result-track:42f222f107e0c619e60dad1362dd8dd6b28eff0d6d9e9b134a410028ab7daf01` |
| 20 | `theorem` | [of_den_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/of-den-mono--0b263916cd6150089f00e846.md) | 304 | `result-track:0b263916cd6150089f00e846716239543e7283af8da507dbd0ea83953df17e45` |
| 21 | `theorem` | [sub_convs_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/sub-convs-eq--c9effd2586971a5313d5c41d.md) | 333 | `result-track:c9effd2586971a5313d5c41ddfad9fd10fbde953c2666959774520aa62ef701c` |
| 22 | `theorem` | [abs_sub_convs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/abs-sub-convs-le--46f61eb8e5324b093e646686.md) | 406 | `result-track:46f61eb8e5324b093e646686cb9ec5aabeb3cd922ea99e039e3661fab4c215de` |
| 23 | `theorem` | [abs_sub_convergents_le'](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variantc9973c122241a201edb3e19182f8f45233bafac421169f22f1eb68fe29bcfa20.lean/declarations/abs-sub-convergents-le--16359bf38e2348fe163fd578.md) | 486 | `result-track:16359bf38e2348fe163fd5782c4aeea73d970ff8f4895bf44277a5924fe37021` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
