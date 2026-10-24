# Verification target: GRWTSK.Algebra.LinearAlgebra.Closed.Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf39cef44ee7b26bd5a4b388912775f18571ed28",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf39cef44ee7b26bd5a4b388912775f18571ed28`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidalClosedHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean/declarations/monoidalclosedhomequiv--bd265e5fe40bbc4677065b7a.md) | 28 | `declaration-track:bd265e5fe40bbc4677065b7a3aa94d2054f443903550f7902ff1b728bbdfd141` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean/declarations/instance--f96ed743532ac5997a492dbf.md) | 43 | `declaration-track:f96ed743532ac5997a492dbf26d80389c93ba244705f059e6b74de378a15b37d` |
| 3 | `theorem` | [ihom_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean/declarations/ihom-map-apply--773e857e3a14499e0250a45e.md) | 56 | `result-track:773e857e3a14499e0250a45e36c94744905c2316b74988c33faaf5fb0fdad73d` |
| 4 | `theorem` | [monoidalClosed_curry](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean/declarations/monoidalclosed-curry--71341d373f2b003e29bb23e5.md) | 67 | `result-track:71341d373f2b003e29bb23e5c081a3f42ab163b8ad41eda451f749cd61f1fbaa` |
| 5 | `theorem` | [monoidalClosed_uncurry](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean/declarations/monoidalclosed-uncurry--edbd0fa4f55cdb49ab532a90.md) | 75 | `result-track:edbd0fa4f55cdb49ab532a90a62dc072e7f80c5e297b732ca729107b82d9adc2` |
| 6 | `theorem` | [ihom_ev_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean/declarations/ihom-ev-app--219349c8187f86f620f99041.md) | 86 | `result-track:219349c8187f86f620f99041c9c0005f561fd793285c7e75c2c09b225cd697c1` |
| 7 | `theorem` | [ihom_coev_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean/declarations/ihom-coev-app--7c8481ce9e9998bb244f77d0.md) | 96 | `result-track:7c8481ce9e9998bb244f77d04bbcd0e2a62cc7d9d6ee9097ae2944223bfe0b77` |
| 8 | `theorem` | [monoidalClosed_pre_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Varianta8d3be867a5ae1e329c519dfd4852b2f8aabfea0804a8fad9dfa0fb052aa0237.lean/declarations/monoidalclosed-pre-app--7e979815390c7137403a4c65.md) | 102 | `result-track:7e979815390c7137403a4c65ac0d6d1dea79955a9817381123dcb56166fb0e5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
