# Verification target: GRWTSK.Algebra.ReesAlgebra.Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2069a0781786a20af53c45b59d4970b5df9b2214",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2069a0781786a20af53c45b59d4970b5df9b2214`.

Source path: `GRWTSK/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/declarations/reesalgebra--5847efc6c5331f18c7547fdf.md) | 35 | `declaration-track:5847efc6c5331f18c7547fdf06ea25cfeb82c4e4efeb1b2f3a82d8d4b7e93dfe` |
| 2 | `theorem` | [mem_reesAlgebra_iff](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/declarations/mem-reesalgebra-iff--a8c954672bd973a2fc4f78c3.md) | 60 | `result-track:a8c954672bd973a2fc4f78c3891532382406d0bc9005f8c7c8d6b1ead96342df` |
| 3 | `theorem` | [mem_reesAlgebra_iff_support](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/declarations/mem-reesalgebra-iff-support--11cc4c39d542f86d6d3bf8f3.md) | 63 | `result-track:11cc4c39d542f86d6d3bf8f3e0ab0c222b80e1d98720a2910e1f4a59c780b404` |
| 4 | `theorem` | [reesAlgebra.monomial_mem](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/declarations/reesalgebra-monomial-mem--357302ca0b20062d3841b6f7.md) | 70 | `result-track:357302ca0b20062d3841b6f7ed6b12c12dd1ea363d98916ac5ac4963a293d879` |
| 5 | `theorem` | [monomial_mem_adjoin_monomial](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/declarations/monomial-mem-adjoin-monomial--a49c88d8002ee3c5cf5a8b1c.md) | 75 | `result-track:a49c88d8002ee3c5cf5a8b1cb8e33c4844aa36c56985e1177cdb6951a4a0c971` |
| 6 | `theorem` | [adjoin_monomial_eq_reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/declarations/adjoin-monomial-eq-reesalgebra--42069d948e8dbe3c0d37eaea.md) | 90 | `result-track:42069d948e8dbe3c0d37eaeacac07b248439390aaa1f715759c4661d76573eba` |
| 7 | `theorem` | [reesAlgebra.fg](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/declarations/reesalgebra-fg--a8781f9de04259dd88fd1826.md) | 104 | `result-track:a8781f9de04259dd88fd1826e0a9529cd5a4bafe4c459b70bfb6879c3204e19a` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/declarations/instance--56135b0f7d199331e7914ad7.md) | 116 | `declaration-track:56135b0f7d199331e7914ad7a34eb4d95be2f7cd010f831e2b4450f39bd78c97` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/declarations/instance--d5150254e75f2bef38e763a1.md) | 119 | `declaration-track:d5150254e75f2bef38e763a1640570a36c67795f2a3186c802609931aa17052b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
