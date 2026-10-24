# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCoverage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7be7dec215e8651455c29decebc4329e16c63fa3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentPrimeCoverage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCoverage.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCoverage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7be7dec215e8651455c29decebc4329e16c63fa3`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalTentPrimeCoverage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalTentPrimeCoverage.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.LandauStatements`](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [squareCount_pos_of_canonical_tent](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCoverage.lean/declarations/squarecount-pos-of-canonical-tent--518b61aca79fda03b800f8c2.md) | 30 | `result-track:518b61aca79fda03b800f8c2751220be3f50c1885423001c1c7cd860cd01ea0f` |
| 2 | `theorem` | [legendreBeyond_of_canonical_tent](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCoverage.lean/declarations/legendrebeyond-of-canonical-tent--739f39f579004e3dacaffef9.md) | 40 | `result-track:739f39f579004e3dacaffef9907d3d027ad9c579c3f1dd099ad2af58649f81d4` |
| 3 | `theorem` | [legendre_of_prefix_and_canonical_tent](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCoverage.lean/declarations/legendre-of-prefix-and-canonical-tent--32d141a2317a204f5f0dfeb2.md) | 52 | `result-track:32d141a2317a204f5f0dfeb2cc88edf395779ea9956d11724277c6513d9d1d83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
