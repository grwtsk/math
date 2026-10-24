# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Imo2006Q5.Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "966b4861c2fcf951a36c853ed1d97f02b150f986",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `966b4861c2fcf951a36c853ed1d97f02b150f986`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Roots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Int.natAbs_eq_of_chain_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/declarations/int-natabs-eq-of-chain-dvd--dba890c4f64dea64cedd6db7.md) | 48 | `result-track:dba890c4f64dea64cedd6db7bdf32b82c01227f61338d01b5e06304c79fb36c3` |
| 2 | `theorem` | [Int.add_eq_add_of_natAbs_eq_of_natAbs_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/declarations/int-add-eq-add-of-natabs-eq-of-natabs-eq--e62d0df36fdfd2e6e8f94e09.md) | 53 | `result-track:e62d0df36fdfd2e6e8f94e09ef567db7da92c7bdc84b7663829086b6f3882b66` |
| 3 | `theorem` | [Polynomial.isPeriodicPt_eval_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/declarations/polynomial-isperiodicpt-eval-two--00441d174569aaa9cb8a1243.md) | 63 | `result-track:00441d174569aaa9cb8a124326288b48281ad08e3a7622a3ec7669a7d99be121` |
| 4 | `theorem` | [Polynomial.iterate_comp_sub_X_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/declarations/polynomial-iterate-comp-sub-x-ne--adaa1dabf11dbde329886969.md) | 121 | `result-track:adaa1dabf11dbde3298869698c3c239bcceda5a44bec709f2a57e369ba3c3543` |
| 5 | `theorem` | [imo2006_q5'](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/declarations/imo2006-q5--d73b721ea0a93e51f12ff4cb.md) | 128 | `result-track:d73b721ea0a93e51f12ff4cbf2642eae1b1e0d580d62663ed565ebe6d972fccf` |
| 6 | `theorem` | [imo2006_q5](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/declarations/imo2006-q5--1d4fe6e27243d63f8f29cdbe.md) | 190 | `result-track:1d4fe6e27243d63f8f29cdbe3a09071eaedf93cd4f23addcb0882f7dba9cc762` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
