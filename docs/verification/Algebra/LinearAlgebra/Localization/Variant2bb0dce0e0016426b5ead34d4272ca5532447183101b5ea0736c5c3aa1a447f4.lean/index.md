# Verification target: GRWTSK.Algebra.LinearAlgebra.Localization.Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4fc95b65fdca83d81f42c578c3704a6dad3825d",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4fc95b65fdca83d81f42c578c3704a6dad3825d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.AssociatedPrime.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mem_associatePrimes_of_comap_mem_associatePrimes_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean/declarations/mem-associateprimes-of-comap-mem-associateprimes-islocalizedmodule--8bdc7178b6c37d72fbd89c94.md) | 48 | `result-track:8bdc7178b6c37d72fbd89c94a8d3cc254b8d5d9fa2b32269a95c9a95183ef640` |
| 2 | `lemma` | [mem_associatePrimes_localizedModule_atPrime_of_mem_associated_primes](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant2bb0dce0e0016426b5ead34d4272ca5532447183101b5ea0736c5c3aa1a447f4.lean/declarations/mem-associateprimes-localizedmodule-atprime-of-mem-associated-primes--bc03f462922c81437e6e9334.md) | 83 | `result-track:bc03f462922c81437e6e9334951b4551a6c293f38b3bedab6a97332b6caa27d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
