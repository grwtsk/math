# Verification target: GRWTSK.Algebra.UniversalAlgebra.MaxPowDiv.Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c328386433e779eae2a031d95715aeb65c27c334",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c328386433e779eae2a031d95715aeb65c27c334`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxPowDiv](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean/declarations/maxpowdiv--d6090ff909b08bc8a98953fe.md) | 36 | `declaration-track:d6090ff909b08bc8a98953fe196ee4c8c232f273488c173bd2e4fb3c28042a67` |
| 2 | `theorem` | [go_succ](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean/declarations/go-succ--3a3ccf406e3b3c308e3b5d1a.md) | 52 | `result-track:3a3ccf406e3b3c308e3b5d1af3a4e71b76f542f67fd7b15feb2378ab03f08636` |
| 3 | `theorem` | [zero_base](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean/declarations/zero-base--c05907f2d882481d8969d02d.md) | 63 | `result-track:c05907f2d882481d8969d02ddd07874f9f1f54f3b9fb89fd80f0733d217cf1be` |
| 4 | `theorem` | [zero](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean/declarations/zero--c16b9285a4c63f8132297d52.md) | 69 | `result-track:c16b9285a4c63f8132297d52e816ae7f93ecebc83b1de14fc226aaabb6c2c195` |
| 5 | `theorem` | [base_mul_eq_succ](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean/declarations/base-mul-eq-succ--9be3423114b8f50e318cb6ce.md) | 74 | `result-track:9be3423114b8f50e318cb6cec6087e89f82ab23a2535c8f9a7575e319b3be388` |
| 6 | `theorem` | [base_pow_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean/declarations/base-pow-mul--4f68ba9872335bd903c872f9.md) | 83 | `result-track:4f68ba9872335bd903c872f9a5008d394f0b86f94886c8732680c3a0e9c15c19` |
| 7 | `theorem` | [pow_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean/declarations/pow-dvd--766488920b55bcdf7d1b38b9.md) | 93 | `result-track:766488920b55bcdf7d1b38b9f4135f722b7962c3728201651c65ff0d39711c54` |
| 8 | `theorem` | [le_of_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variant7326ce21ebfe62039a098c4fd53d15fc545091ca1efadaa254f5133aba6dda1a.lean/declarations/le-of-dvd--7b0a1eb081c49b00b11e129d.md) | 107 | `result-track:7b0a1eb081c49b00b11e129d8a4854413ca06db1de242e389b4ad6296a5bf427` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
