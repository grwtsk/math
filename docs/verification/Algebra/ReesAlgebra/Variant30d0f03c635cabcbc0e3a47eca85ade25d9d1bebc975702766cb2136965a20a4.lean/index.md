# Verification target: GRWTSK.Algebra.ReesAlgebra.Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3910dbbdebcb4ef0e256b7c973a3b8af2691a82",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3910dbbdebcb4ef0e256b7c973a3b8af2691a82`.

Source path: `GRWTSK/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/declarations/reesalgebra--62933892f769e4e4be255ded.md) | 43 | `declaration-track:62933892f769e4e4be255ded633cfe48abea32d76f1dbf4bc1af1611edd38c17` |
| 2 | `theorem` | [mem_reesAlgebra_iff](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/declarations/mem-reesalgebra-iff--2403d4a661e61d0a0cf74a97.md) | 68 | `result-track:2403d4a661e61d0a0cf74a97d6eee0588ca9de94b9ea5d8a6aa3d5483bc18b14` |
| 3 | `theorem` | [mem_reesAlgebra_iff_support](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/declarations/mem-reesalgebra-iff-support--6ddecc7d593ccb78c7e1efab.md) | 71 | `result-track:6ddecc7d593ccb78c7e1efaba8278f16b254acc69d540124cbce59ca9ae88669` |
| 4 | `theorem` | [reesAlgebra.monomial_mem](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/declarations/reesalgebra-monomial-mem--0f71024d3c1ffd876c0c1de0.md) | 78 | `result-track:0f71024d3c1ffd876c0c1de0e0e8bedcf55fed7cd994eb752995d28c618fce66` |
| 5 | `theorem` | [monomial_mem_adjoin_monomial](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/declarations/monomial-mem-adjoin-monomial--3a1606e50d13a918b5536280.md) | 83 | `result-track:3a1606e50d13a918b5536280b284c0b5691f7435ee944e799f9941c002d29a82` |
| 6 | `theorem` | [adjoin_monomial_eq_reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/declarations/adjoin-monomial-eq-reesalgebra--51836fc41262dadf84731f07.md) | 98 | `result-track:51836fc41262dadf84731f0723423bf858990f3eaac39594c2379d606dfedc74` |
| 7 | `theorem` | [reesAlgebra.fg](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/declarations/reesalgebra-fg--e0fe1edef201b1c009a6e80e.md) | 112 | `result-track:e0fe1edef201b1c009a6e80e3cd38449d9e7ac41be06a78e77210b56881981a8` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/declarations/instance--b24ba4f483ae1bd000993eb5.md) | 124 | `declaration-track:b24ba4f483ae1bd000993eb59cf7c8cbb2a43eccde6bd2c8a3d08d4123e83e30` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Variant30d0f03c635cabcbc0e3a47eca85ade25d9d1bebc975702766cb2136965a20a4.lean/declarations/instance--6719afa6706ccf938c3638b2.md) | 127 | `declaration-track:6719afa6706ccf938c3638b2a8951d06998bd9f6776ead27918df98ea34b63eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
