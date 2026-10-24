# Verification target: GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd196b2be4eac37f447b64e3189f94eefd7504d4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd196b2be4eac37f447b64e3189f94eefd7504d4`.

Source path: `GRWTSK/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.FiniteTranslateIndependence`](../../../../mathematics/Analysis/Convolution/FiniteTranslateIndependence.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationGram`](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalized_source_support_bddAbove](../../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/declarations/normalized-source-support-bddabove--ff10269f77bf2e70fa7c5bce.md) | 35 | `result-track:ff10269f77bf2e70fa7c5bcebdb317cd631c2eeb37e8e56cb8d8f3dfa1986bb5` |
| 2 | `theorem` | [normalized_source_support_nonempty](../../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/declarations/normalized-source-support-nonempty--7e1153f684f2db1c188c457c.md) | 45 | `result-track:7e1153f684f2db1c188c457c61849bcf936f98292f7f29ee5d7286ee1736696a` |
| 3 | `theorem` | [finite_source_combination_ne_zero](../../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/declarations/finite-source-combination-ne-zero--9514dbf8174ae62c3c006fb1.md) | 59 | `result-track:9514dbf8174ae62c3c006fb1effce23821b4bf70dd186da01aaf5feeea5c6429` |
| 4 | `theorem` | [distinct_source_vectors_linearIndependent](../../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/declarations/distinct-source-vectors-linearindependent--579d7680e72108de052f64b8.md) | 82 | `result-track:579d7680e72108de052f64b8ba39dae2884d78b3f3f4bd927187155913b628e4` |
| 5 | `theorem` | [finite_source_gram_positive](../../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/declarations/finite-source-gram-positive--ef5d127d79259cb3300175cf.md) | 106 | `result-track:ef5d127d79259cb3300175cfefa11e8f2c7ce52119c6a1b416022a37838e029f` |
| 6 | `theorem` | [distinct_source_gram_matrix_positive_definite](../../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/declarations/distinct-source-gram-matrix-positive-definite--2ccf09cd31f4c5bdde38388d.md) | 126 | `result-track:2ccf09cd31f4c5bdde38388d6d8dc1bbf704f272bcb0d5d1db4b13a1b6a071f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
