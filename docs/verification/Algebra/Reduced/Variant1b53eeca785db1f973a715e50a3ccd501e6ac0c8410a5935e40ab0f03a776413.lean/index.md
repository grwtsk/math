# Verification target: GRWTSK.Algebra.Reduced.Variant1b53eeca785db1f973a715e50a3ccd501e6ac0c8410a5935e40ab0f03a776413

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e541019f25f7b4e62039dc1f748f201ca93f9899",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Reduced/Variant1b53eeca785db1f973a715e50a3ccd501e6ac0c8410a5935e40ab0f03a776413.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Reduced/Variant1b53eeca785db1f973a715e50a3ccd501e6ac0c8410a5935e40ab0f03a776413.lean/index.md) · [Full source](../../../../mathematics/Algebra/Reduced/Variant1b53eeca785db1f973a715e50a3ccd501e6ac0c8410a5935e40ab0f03a776413.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e541019f25f7b4e62039dc1f748f201ca93f9899`.

Source path: `GRWTSK/Algebra/Reduced/Variant1b53eeca785db1f973a715e50a3ccd501e6ac0c8410a5935e40ab0f03a776413.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Reduced/Variant1b53eeca785db1f973a715e50a3ccd501e6ac0c8410a5935e40ab0f03a776413.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Frobenius` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iterateFrobenius_inj](../../../../mathematics/Algebra/Reduced/Variant1b53eeca785db1f973a715e50a3ccd501e6ac0c8410a5935e40ab0f03a776413.lean/declarations/iteratefrobenius-inj--797586237bd8e647b9788c8c.md) | 28 | `result-track:797586237bd8e647b9788c8c6f64e90f151ec58823d192b807b0b4def184a1d1` |
| 2 | `theorem` | [frobenius_inj](../../../../mathematics/Algebra/Reduced/Variant1b53eeca785db1f973a715e50a3ccd501e6ac0c8410a5935e40ab0f03a776413.lean/declarations/frobenius-inj--149c2aee139aac745e97ae85.md) | 33 | `result-track:149c2aee139aac745e97ae855408e4f810636ef0e798d1f986c17ab8d916f68e` |
| 3 | `theorem` | [isSquare_of_charTwo'](../../../../mathematics/Algebra/Reduced/Variant1b53eeca785db1f973a715e50a3ccd501e6ac0c8410a5935e40ab0f03a776413.lean/declarations/issquare-of-chartwo--bf6df49d56e2382ad7e85883.md) | 40 | `result-track:bf6df49d56e2382ad7e8588372734acb7ac2708fa9306073d2ac8ea81f8edf0f` |
| 4 | `theorem` | [ExpChar.pow_prime_pow_mul_eq_one_iff](../../../../mathematics/Algebra/Reduced/Variant1b53eeca785db1f973a715e50a3ccd501e6ac0c8410a5935e40ab0f03a776413.lean/declarations/expchar-pow-prime-pow-mul-eq-one-iff--1d24b364b580a51fd5dc53c3.md) | 50 | `result-track:1d24b364b580a51fd5dc53c36944d6a231aef9a341b2ec042bd3cba0dac99e10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
