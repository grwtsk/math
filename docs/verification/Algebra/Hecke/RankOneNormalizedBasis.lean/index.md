# Verification target: GRWTSK.Algebra.Hecke.RankOneNormalizedBasis

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d00a3350f106d14807cef55a11545066de0cecc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hecke/RankOneNormalizedBasis.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hecke/RankOneNormalizedBasis.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d00a3350f106d14807cef55a11545066de0cecc`.

Source path: `GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hecke/RankOneNormalizedBasis.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Hecke.RankOneQuadratic`](../../../../mathematics/Algebra/Hecke/RankOneQuadratic.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rankOneNormalized](../../../../mathematics/Algebra/Hecke/RankOneNormalizedBasis.lean/declarations/rankonenormalized--cc57bd1b5349cde48e3da50b.md) | 9 | `declaration-track:cc57bd1b5349cde48e3da50b4e44e60d2829edd9dcacede41e66afac8ec81ba0` |
| 2 | `theorem` | [rankOne_normalized_expansion](../../../../mathematics/Algebra/Hecke/RankOneNormalizedBasis.lean/declarations/rankone-normalized-expansion--859bb8801db8c96d7e42bd53.md) | 13 | `result-track:859bb8801db8c96d7e42bd53314aa2ba41b01922771971a54da271e8f31a712c` |
| 3 | `theorem` | [rankOne_normalized_coordinates_unique](../../../../mathematics/Algebra/Hecke/RankOneNormalizedBasis.lean/declarations/rankone-normalized-coordinates-unique--ebf3db5e89561f7fea11e657.md) | 22 | `result-track:ebf3db5e89561f7fea11e657c3961a7c1660fd3b7cb6bec57300208828fb65d9` |
| 4 | `theorem` | [rankOne_normalized_existsUnique](../../../../mathematics/Algebra/Hecke/RankOneNormalizedBasis.lean/declarations/rankone-normalized-existsunique--215989ca1b2a14fe8e2abc05.md) | 34 | `result-track:215989ca1b2a14fe8e2abc0525e80780d09842abf0655e8b63b3fd57f7481c62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
