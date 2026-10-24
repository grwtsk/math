# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Multiplicative.Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ead810f58d322cf3d5f8dbbf5217c38ad8c3633b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ead810f58d322cf3d5f8dbbf5217c38ad8c3633b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_pow_coprime_prod_of_coprime_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7.lean/declarations/prime-pow-coprime-prod-of-coprime-insert--58da7fb08477b6a2418b48dc.md) | 39 | `result-track:58da7fb08477b6a2418b48dc247a3f25fa9c2d713b5a51a75010fa448746809a` |
| 2 | `theorem` | [induction_on_prime_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7.lean/declarations/induction-on-prime-power--cae0dc870c8954f56811c876.md) | 60 | `result-track:cae0dc870c8954f56811c876eab18e7bb3866a12f4cc865cbf319bb23b03f746` |
| 3 | `theorem` | [induction_on_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7.lean/declarations/induction-on-coprime--07ece2dce9a1795e9f21dba6.md) | 79 | `result-track:07ece2dce9a1795e9f21dba61876c98402f4fccfd05b1385ad2060aa0550490e` |
| 4 | `theorem` | [multiplicative_prime_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7.lean/declarations/multiplicative-prime-power--d5bfdb9f59dbdc5670d77acd.md) | 98 | `result-track:d5bfdb9f59dbdc5670d77acdaa2fe0d1897eca115363de5a2e9c6ed1abd3866f` |
| 5 | `theorem` | [multiplicative_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantbf15babd36e68b249eab0bf3918db69e2e547b8f41a5583c6cd7217d27e236c7.lean/declarations/multiplicative-of-coprime--74d2185bd16c9191af3d356a.md) | 118 | `result-track:74d2185bd16c9191af3d356aaf3660f1bd0ba4c4e8bc4700597c1e85807ce83f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
