# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "822d42f7b28db2b3977d1e565dbe45bb93c4b1a4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `822d42f7b28db2b3977d1e565dbe45bb93c4b1a4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Kaehler.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.PDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KaehlerDifferential.mvPolynomialEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-mvpolynomialequiv--1f94f1ad172063c1490778ae.md) | 35 | `declaration-track:1f94f1ad172063c1490778aee58c9438a69e9de9004e7ca09ede0bde216115a3` |
| 2 | `def` | [KaehlerDifferential.mvPolynomialBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-mvpolynomialbasis--4f077f5f090ad623a522990c.md) | 64 | `declaration-track:4f077f5f090ad623a522990cf025f102b04c002fdad9815f87c1ebf98d8e462b` |
| 3 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_repr_comp_D](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-mvpolynomialbasis-repr-comp-d--4c9718e7a69a5a9eba210fe6.md) | 68 | `result-track:4c9718e7a69a5a9eba210fe6c1778069eb39ba6fc396248e455dbe7ad4a9e99c` |
| 4 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_repr_D](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-mvpolynomialbasis-repr-d--48e7f3c25b8692ea3da54db1.md) | 73 | `result-track:48e7f3c25b8692ea3da54db1e96e179ea7c30c4354f15def5e864f89ad0f601f` |
| 5 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_repr_D_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-mvpolynomialbasis-repr-d-x--eb378b881566896d326ff9b4.md) | 79 | `result-track:eb378b881566896d326ff9b424cc4c62d83c8bde71102a67c66251c5c71ee7c5` |
| 6 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_repr_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-mvpolynomialbasis-repr-apply--d7bd1838ca7108edad285a17.md) | 84 | `result-track:d7bd1838ca7108edad285a178d9e42d240095de102ea55ade024e4eda784c091` |
| 7 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_repr_symm_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-mvpolynomialbasis-repr-symm-single--3f1949f251f0b5d4e0992fb9.md) | 94 | `result-track:3f1949f251f0b5d4e0992fb9208e3adc011a8894912ca615ed4e37e4e383c2b5` |
| 8 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-mvpolynomialbasis-apply--d451416753e97a0aa28c869d.md) | 99 | `result-track:d451416753e97a0aa28c869d0e0bae5e347311aaea47b1095ce83ca37aeeaf74` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/instance--f09fe8c5334e0b5588edbc31.md) | 103 | `declaration-track:f09fe8c5334e0b5588edbc314ee8209371c4d11e6fe136010bc5375739f10700` |
| 10 | `lemma` | [KaehlerDifferential.polynomial_D_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-polynomial-d-apply--c3f7cb65fcf1e1fe12f2fa1f.md) | 112 | `result-track:c3f7cb65fcf1e1fe12f2fa1fa4805fe93eaea0c9c1570216e2e5de69c9e1c920` |
| 11 | `def` | [KaehlerDifferential.polynomialEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-polynomialequiv--d49e07b6b822b0e5fcfb4215.md) | 118 | `declaration-track:d49e07b6b822b0e5fcfb42151042bd7735a10ab4794b0fd6be5a05f500a4b333` |
| 12 | `lemma` | [KaehlerDifferential.polynomialEquiv_comp_D](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-polynomialequiv-comp-d--2a65be6b6748109be4c664e3.md) | 132 | `result-track:2a65be6b6748109be4c664e3542511a2fdb3f358f6241698954185d0ecd0c2f9` |
| 13 | `lemma` | [KaehlerDifferential.polynomialEquiv_D](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-polynomialequiv-d--c4dde6dc3acbcd78e6dbf58a.md) | 137 | `result-track:c4dde6dc3acbcd78e6dbf58a758b2537d384ccac110f36b43ad1cbc75a75b130` |
| 14 | `lemma` | [KaehlerDifferential.polynomialEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/declarations/kaehlerdifferential-polynomialequiv-symm--37d688bbfbac55c13a66d3ee.md) | 142 | `result-track:37d688bbfbac55c13a66d3ee4fddde298505eec6ba0a60e588714e8490430568` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
