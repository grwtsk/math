# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeInsertion.Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f47bc15ee7659d444f6099da0293a4fd500d3780",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f47bc15ee7659d444f6099da0293a4fd500d3780`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSupportedBlock` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Powerset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [assignment_pair_sum_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/assignment-pair-sum-insert--ca27d9103f096c6ff40dda49.md) | 14 | `result-track:ca27d9103f096c6ff40dda49bb0ac865a30b4e4f95e56b6b97c1a5a672ca46bd` |
| 2 | `theorem` | [supportedPairs_sum_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/supportedpairs-sum-insert--31197764dc9cc943bd075b21.md) | 73 | `result-track:31197764dc9cc943bd075b218cf25016b63d84b9cffcb4d3c4c555ab3276cce9` |
| 3 | `def` | [rectangularContribution](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/rectangularcontribution--a3492a942b32d43694d538fa.md) | 94 | `declaration-track:a3492a942b32d43694d538fac3f5f7bae63a09b84f1a0d14ef17fcd5cf128239` |
| 4 | `theorem` | [inserted_prime_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/inserted-prime-coprime--8ab5d23ce26d08df42850289.md) | 99 | `result-track:8ab5d23ce26d08df42850289df56b86a7e7ab28a02cfbefe24a523e6fa456303` |
| 5 | `theorem` | [inserted_left_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/inserted-left-term--0126ff2a1f8e363069728439.md) | 112 | `result-track:0126ff2a1f8e36306972843976067858c5fd872e4ac8a2cc33db46ffed7046a0` |
| 6 | `theorem` | [supportedPairs_swap_mem](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/supportedpairs-swap-mem--97a5fd3579dd66fe52a620ee.md) | 136 | `result-track:97a5fd3579dd66fe52a620ee556a7aeef6713b3778935d02c5b751d9b2e52cab` |
| 7 | `theorem` | [rectangularContribution_swap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/rectangularcontribution-swap--ec1d2fec9ace9e4d0254c6bd.md) | 144 | `result-track:ec1d2fec9ace9e4d0254c6bde6406d90eb039312cae1459885e73be0120f80a8` |
| 8 | `theorem` | [inserted_right_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/inserted-right-term--dd24e9a47047daf2e2beae05.md) | 154 | `result-track:dd24e9a47047daf2e2beae05044517b2d4da7df2a376e368aca16943a2795d79` |
| 9 | `theorem` | [rectangularContribution_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/rectangularcontribution-insert--5297c68609f6446192f03f72.md) | 171 | `result-track:5297c68609f6446192f03f72635c73bf1f2db61aed9ee59930722be69b8f780a` |
| 10 | `theorem` | [squareContribution_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/squarecontribution-insert--cc7e2c3aaf226eeff7f552be.md) | 211 | `result-track:cc7e2c3aaf226eeff7f552be0efea8410a4dec19f047a1b5a5ab6dc47c6e64c1` |
| 11 | `theorem` | [thetaRemainder_square_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/thetaremainder-square-insert--743e92712fb91f0779a23679.md) | 223 | `result-track:743e92712fb91f0779a236790d3bb24847015d81e5c92c68353852c1a3ba2669` |
| 12 | `theorem` | [rectangular_scale_indices](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/rectangular-scale-indices--ae578606e683d13a5559d836.md) | 232 | `result-track:ae578606e683d13a5559d83648f14c33c61ccd39adeddeb81ac36b6f811e765a` |
| 13 | `theorem` | [rectangle_sum_eq_classes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/rectangle-sum-eq-classes--961ddaeefdf7f44660161cfe.md) | 247 | `result-track:961ddaeefdf7f44660161cfe93d6a616e466ac862b840fcb6906325cabdd8718` |
| 14 | `theorem` | [primeSupportedBlock_eq_rectangles](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/primesupportedblock-eq-rectangles--670cd596e8adff277d36c0e6.md) | 268 | `result-track:670cd596e8adff277d36c0e68e5db45a6ebf51088a03eb59eae101976afda907` |
| 15 | `theorem` | [primeSupportedBlock_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/declarations/primesupportedblock-insert--9b489f83cf7038cfc791fcc0.md) | 278 | `result-track:9b489f83cf7038cfc791fcc0044c0817605b580c38a2f5403663252075309be8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
