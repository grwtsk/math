# Verification target: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b010b2ca49d03263e33ea6c7db16f4c3b4bc653f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b010b2ca49d03263e33ea6c7db16f4c3b4bc653f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.Simpa` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Order` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lt_irrefl](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/lt-irrefl--f119d2cc0bac60c4ff775ea0.md) | 34 | `result-track:f119d2cc0bac60c4ff775ea008f90476a608c525a085453e7f08fee0c14f41ac` |
| 2 | `theorem` | [eq_of_eq_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/eq-of-eq-of-eq--de06986f6b3d3c4e963b3019.md) | 36 | `result-track:de06986f6b3d3c4e963b3019e3c9326c5ef33b1b2e029ade9dbcbc002ca50921` |
| 3 | `theorem` | [le_of_eq_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/le-of-eq-of-le--fa39fefc74a0a99ed7797dca.md) | 39 | `result-track:fa39fefc74a0a99ed7797dca0714c7f60402c37a081e90ded8dd08834aeae13b` |
| 4 | `theorem` | [lt_of_eq_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/lt-of-eq-of-lt--0e3d9b224c5bff671f48b28c.md) | 42 | `result-track:0e3d9b224c5bff671f48b28c829a993715a4ce7eed1dd6294d8b99376fb2bd4e` |
| 5 | `theorem` | [le_of_le_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/le-of-le-of-eq--9669d9d951ff3452660cbea6.md) | 45 | `result-track:9669d9d951ff3452660cbea6122faec72f5c46dd4becf0da50e01f6c550b4a26` |
| 6 | `theorem` | [lt_of_lt_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/lt-of-lt-of-eq--534c4581b3e07068a308f2de.md) | 48 | `result-track:534c4581b3e07068a308f2de81567d69066f083a455e0e2a57a3d1b82c75ed33` |
| 7 | `theorem` | [mul_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/mul-neg--f8b7ae639cfd121f926d3732.md) | 51 | `result-track:f8b7ae639cfd121f926d3732798fbdf9316e6d5295b6a7acd2278c0c747e879d` |
| 8 | `theorem` | [mul_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/mul-nonpos--2bf2f4bf272de9c53defd4a1.md) | 55 | `result-track:2bf2f4bf272de9c53defd4a16c274904621a32799d74521fbaf6d7fa5b19e5e4` |
| 9 | `theorem` | [mul_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/mul-eq--ab7bd81c02e6fac981ef418c.md) | 61 | `result-track:ab7bd81c02e6fac981ef418cc37c5fa4227f4c6cbb3e35b8124ff9f38464ac35` |
| 10 | `lemma` | [eq_of_not_lt_of_not_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/eq-of-not-lt-of-not-gt--f3b219edabc28977bcf6df7d.md) | 64 | `result-track:f3b219edabc28977bcf6df7d7b0b65a99bf4ab3423bc456f689261bc6a13e964` |
| 11 | `lemma` | [mul_zero_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/mul-zero-eq--4a62df5691641dd4c0c73a51.md) | 69 | `result-track:4a62df5691641dd4c0c73a51ed43cdb4407e10b78cfb2286d629c0ed1aa67f63` |
| 12 | `lemma` | [zero_mul_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/zero-mul-eq--a079d0425fcc0077ec2986ef.md) | 75 | `result-track:a079d0425fcc0077ec2986efb52d066d6d943c83dc0fec658e0b327292674c61` |
| 13 | `theorem` | [lt_zero_of_zero_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/lt-zero-of-zero-gt--30cdd37ce1f3512b05f8f88a.md) | 86 | `result-track:30cdd37ce1f3512b05f8f88ac92301fc684f8291e5969a2d94d5b9345c5d4b8f` |
| 14 | `theorem` | [le_zero_of_zero_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Varianteb69ade735c11b72362c4d7164696c7873173ad09fa5945c90ce5d918aa9fefb.lean/declarations/le-zero-of-zero-ge--d42b0c60d124bf3f60dd11fe.md) | 88 | `result-track:d42b0c60d124bf3f60dd11fe804f90628321564b207801d27e1af56043fbbc10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
