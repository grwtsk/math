# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97823c6cb0dcf8d4980718cb552775b67e9c6e6d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97823c6cb0dcf8d4980718cb552775b67e9c6e6d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Notation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.LinearOrder` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le.elim](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/declarations/le-elim--ad157b5f727157ad070a1db4.md) | 29 | `result-track:ad157b5f727157ad070a1db4eb415dd60b27df22c3808017c03da81ac251ecc3` |
| 2 | `theorem` | [lt.elim](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/declarations/lt-elim--09f04fd2e589390a38092930.md) | 34 | `result-track:09f04fd2e589390a3809293076a9c65083686b7b335cefee6c8b050808f55aaf` |
| 3 | `instance` | [instLinearOrder](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/declarations/instlinearorder--85081c9a50e7bba7166320a5.md) | 39 | `declaration-track:85081c9a50e7bba7166320a5732fc3be545b2f76a0cbe11d10963aae0dc7f227` |
| 4 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero--eb0d39685f17aa02e4cbef5c.md) | 51 | `result-track:eb0d39685f17aa02e4cbef5cf9ce89a479b20e5cac1145ab74d5cfaa5949e023` |
| 5 | `theorem` | [nonneg_or_nonpos_of_mul_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/declarations/nonneg-or-nonpos-of-mul-nonneg--acb322fe2eb87a28d51fb875.md) | 54 | `result-track:acb322fe2eb87a28d51fb875bd491366a0563b788d7872dc01c34d0bfb0db8b5` |
| 6 | `theorem` | [mul_nonneg_of_nonneg_or_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/declarations/mul-nonneg-of-nonneg-or-nonpos--c2c54752df6de8a4c49ebde5.md) | 68 | `result-track:c2c54752df6de8a4c49ebde5273f1bf21aa797240967bf80de6968566e22373e` |
| 7 | `theorem` | [mul_nonneg_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/declarations/mul-nonneg-iff--53af6dad529d0c723352bf3c.md) | 72 | `result-track:53af6dad529d0c723352bf3c53e9098cba033d21a0cf8de94e6b8aa8825594ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
