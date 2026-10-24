# Verification target: GRWTSK.Algebra.LinearAlgebra.Classification.Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4106f1faa6e3a506efcdbbfb47cce44ddb3307d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4106f1faa6e3a506efcdbbfb47cce44ddb3307d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.ZMod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Cardinal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Cardinality` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.TranscendenceBasis` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isAlgClosure_of_transcendence_basis](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/declarations/isalgclosure-of-transcendence-basis--559ba13c47de98149e7eb98b.md) | 46 | `result-track:559ba13c47de98149e7eb98b91bf91a3f02b4ca747457a4deaf37e81e392c48d` |
| 2 | `def` | [equivOfTranscendenceBasis](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/declarations/equivoftranscendencebasis--3462184e50b80b78ac5a3542.md) | 57 | `declaration-track:3462184e50b80b78ac5a354234c366a0cd9fa89fae823a1d11472c584d3eabb6` |
| 3 | `theorem` | [cardinal_le_max_transcendence_basis](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/declarations/cardinal-le-max-transcendence-basis--1839e64bd2faefdf30acb168.md) | 88 | `result-track:1839e64bd2faefdf30acb168b49f81943bccafdab112500be3aa5638f2deae29` |
| 4 | `theorem` | [cardinal_le_max_transcendence_basis'](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/declarations/cardinal-le-max-transcendence-basis--ebf56e280e5bd1eee047d107.md) | 109 | `result-track:ebf56e280e5bd1eee047d107733551ac18bc1b71ad2d6b6a0602131c562210a4` |
| 5 | `theorem` | [cardinal_eq_cardinal_transcendence_basis_of_aleph0_lt](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/declarations/cardinal-eq-cardinal-transcendence-basis-of-aleph0-lt--149fe1482a1d5457a11d5254.md) | 118 | `result-track:149fe1482a1d5457a11d52545359b89f738a8a7a3d7ef0856e1e0f9e9e80dfa4` |
| 6 | `theorem` | [cardinal_eq_cardinal_transcendence_basis_of_aleph0_lt'](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/declarations/cardinal-eq-cardinal-transcendence-basis-of-aleph0-lt--e951e7b6fefbce7c563d3853.md) | 145 | `result-track:e951e7b6fefbce7c563d38536084d5fe7d63a39a4a750943f4442fa6383dfca3` |
| 7 | `theorem` | [ringEquiv_of_equiv_of_charZero](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/declarations/ringequiv-of-equiv-of-charzero--f3a6d9314edcc67cb467fe45.md) | 155 | `result-track:f3a6d9314edcc67cb467fe45e6d776dd26632ddb5b94fa8ad6c434deff044ee1` |
| 8 | `theorem` | [ringEquiv_of_Cardinal_eq_of_charP](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/declarations/ringequiv-of-cardinal-eq-of-charp--e3cfa73d1f608eb4a3a32a6d.md) | 170 | `result-track:e3cfa73d1f608eb4a3a32a6da214e6e87401fe4a436f0b0d5ea8450f7a8d4eba` |
| 9 | `theorem` | [ringEquiv_of_equiv_of_char_eq](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/declarations/ringequiv-of-equiv-of-char-eq--adcc9d7ad9927c33cda01fb3.md) | 189 | `result-track:adcc9d7ad9927c33cda01fb35002bc1612690c1dd88214a91a05e541fe3e1ee7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
