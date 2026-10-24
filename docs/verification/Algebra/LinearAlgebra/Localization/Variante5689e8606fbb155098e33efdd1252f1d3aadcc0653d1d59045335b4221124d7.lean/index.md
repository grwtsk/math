# Verification target: GRWTSK.Algebra.LinearAlgebra.Localization.Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63f824f43c04de96baeb28c5fb9aa974680d2e20",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63f824f43c04de96baeb28c5fb9aa974680d2e20`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.AssociatedPrime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mem_associatePrimes_of_comap_mem_associatePrimes_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean/declarations/mem-associateprimes-of-comap-mem-associateprimes-islocalizedmodule--bbacb7078a315ce4667ccd04.md) | 40 | `result-track:bbacb7078a315ce4667ccd04c8ac2e2b515a52050b7a41c67dd8bba540dcaf54` |
| 2 | `lemma` | [mem_associatePrimes_localizedModule_atPrime_of_mem_associated_primes](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variante5689e8606fbb155098e33efdd1252f1d3aadcc0653d1d59045335b4221124d7.lean/declarations/mem-associateprimes-localizedmodule-atprime-of-mem-associated-primes--86e1ab00483b18c2dc07bca5.md) | 75 | `result-track:86e1ab00483b18c2dc07bca521fc72d44f3d8dd545fc0272a0a8708107903dd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
