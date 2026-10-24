# Verification target: GRWTSK.NumberTheory.Moebius.DyadicTriangularMertensCorrelation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3293c44b4a43bb20a6e19c5f10c1c44baa267e64",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3293c44b4a43bb20a6e19c5f10c1c44baa267e64`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicOrderedPairMertensCorrelation`](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensPrefixTriangularCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/mertensprefixtriangularcorrelation--9a69a41958da6926b0c07501.md) | 40 | `declaration-track:9a69a41958da6926b0c07501eadb8594e129e15e1ed3f3d6a1aef55bdca72761` |
| 2 | `def` | [weightedMertensDyadicTriangularCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/weightedmertensdyadictriangularcorrelation--0546d72c2a0329f4d06f8505.md) | 46 | `declaration-track:0546d72c2a0329f4d06f8505f38d2bfbced32d3b9b617b943ec98c3a1e6e4ea0` |
| 3 | `def` | [SubpolynomialDyadicTriangularMertensCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/subpolynomialdyadictriangularmertenscorrelation--33ffd91556811b13108feecf.md) | 53 | `declaration-track:33ffd91556811b13108feecf63333175144ee041406bc9b5e4368cdbc600fd0a` |
| 4 | `theorem` | [closed_prefix_succ](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/closed-prefix-succ--618a183f72d02ca05597f193.md) | 59 | `result-track:618a183f72d02ca05597f193a35a6d2fe8227f09cf5a094585ba5f1eff640be3` |
| 5 | `theorem` | [pickupMertensPrefix_zero_triangular](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/pickupmertensprefix-zero-triangular--9fd26aa327dadfdd945f3bd5.md) | 71 | `result-track:9fd26aa327dadfdd945f3bd5c354f594fa5a181231d894e799ad47d96aff6e3a` |
| 6 | `theorem` | [pickupMertensPrefix_succ_triangular](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/pickupmertensprefix-succ-triangular--aa4cb88a9fe19ed2d18a3897.md) | 76 | `result-track:aa4cb88a9fe19ed2d18a3897b9365220cd80821c5565428dc5933deca76231c8` |
| 7 | `theorem` | [mertensPrefixSquareDiagonal_succ_triangular](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/mertensprefixsquarediagonal-succ-triangular--942b7450d6a21785585ae271.md) | 83 | `result-track:942b7450d6a21785585ae27165871dd35fbb7d266edcc304316c8e869fc514a0` |
| 8 | `theorem` | [mertensPrefixTriangularCorrelation_succ](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/mertensprefixtriangularcorrelation-succ--5537386efa922224b24d48a2.md) | 91 | `result-track:5537386efa922224b24d48a25eb7986b1a5d23582dce360b548923164568013b` |
| 9 | `theorem` | [pickupMertensPrefix_sq_eq_diagonal_add_triangular](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/pickupmertensprefix-sq-eq-diagonal-add-triangular--08aa0cda435364b701c5efe3.md) | 103 | `result-track:08aa0cda435364b701c5efe3a25a342691c7eac0eaec68c7b41206d678015f60` |
| 10 | `theorem` | [mertensPrefixOrderedPairCorrelation_eq_triangular](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/mertensprefixorderedpaircorrelation-eq-triangular--149e7ceb8e8fe9c38f2cb602.md) | 120 | `result-track:149e7ceb8e8fe9c38f2cb6028fd5aa527486e11f9dacf42094e283e01e4b54b9` |
| 11 | `theorem` | [weightedMertensDyadicOrderedPairCorrelation_eq_triangular](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/weightedmertensdyadicorderedpaircorrelation-eq-triangular--c9c7008b9c177c7aef4b84df.md) | 128 | `result-track:c9c7008b9c177c7aef4b84df06598575f105c6e05d207622c5c53f54644e4362` |
| 12 | `theorem` | [subpolynomialDyadicTriangular_iff_orderedPair](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/subpolynomialdyadictriangular-iff-orderedpair--564a4815fa0da8890dbebf48.md) | 139 | `result-track:564a4815fa0da8890dbebf48af94a442f63f7983216a80d3b68e3c3e2a477898` |
| 13 | `theorem` | [subpolynomialDyadicTriangular_iff_block](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/subpolynomialdyadictriangular-iff-block--fdc3ad70fef079c707ab77a6.md) | 157 | `result-track:fdc3ad70fef079c707ab77a69484fc8b9a4ff982f7b93b8ae4f8a7401d797daa` |
| 14 | `theorem` | [subpolynomialDyadicTriangular_iff_cumulative](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/subpolynomialdyadictriangular-iff-cumulative--8af0e47203e8c2b0ae898524.md) | 164 | `result-track:8af0e47203e8c2b0ae8985245ed35bcd985b0a725bd730254c03680714dd26da` |
| 15 | `theorem` | [subpolynomialDyadicTriangular_iff_allPositiveWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/subpolynomialdyadictriangular-iff-allpositiveweightedmertenssquare--b5cf5f9b93fc6e15123beac6.md) | 171 | `result-track:b5cf5f9b93fc6e15123beac689519b3413aa58611b75ed456fa25876433f1fb9` |
| 16 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicTriangularMertensCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/declarations/riemannhypothesis-of-subpolynomialdyadictriangularmertenscorrelation--3fcd0694c35a3706f34f27d8.md) | 179 | `result-track:3fcd0694c35a3706f34f27d84d11bcaeaffee6cd69e9bb1b8db87e02ca93a2ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
