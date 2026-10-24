# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "910ba1283fe8eb4900da0fcbcce1bf9f039e838e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `910ba1283fe8eb4900da0fcbcce1bf9f039e838e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Liouville` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PolynomialGaloisGroup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/declarations/exists-root--dda9180a870b0b4293e4658c.md) | 40 | `result-track:dda9180a870b0b4293e4658c538bd1068fc7c0cd5162aa2f56cbb9ec9828c912` |
| 2 | `instance` | [isAlgClosed](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/declarations/isalgclosed--30904ea4747b84cdaa4500d9.md) | 53 | `declaration-track:30904ea4747b84cdaa4500d9493a45eee7ac34862d059a40dac222787bd2415f` |
| 3 | `theorem` | [splits_ℚ_ℂ](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/declarations/splits--629d881875e2c1a95cf78361.md) | 62 | `result-track:629d881875e2c1a95cf78361893e3000d9e5a63e07756d175047825473594ea6` |
| 4 | `theorem` | [card_complex_roots_eq_card_real_add_card_not_gal_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/declarations/card-complex-roots-eq-card-real-add-card-not-gal-inv--b50c2360b44a9d3e88aebde6.md) | 70 | `result-track:b50c2360b44a9d3e88aebde66796051aeeae726497e577b0dc13255c46b7fe63` |
| 5 | `theorem` | [galActionHom_bijective_of_prime_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/declarations/galactionhom-bijective-of-prime-degree--1eae367c1ea269081b3c0661.md) | 124 | `result-track:1eae367c1ea269081b3c06612a414076a568d8b8149957fc62b4b82fdfcd21e5` |
| 6 | `theorem` | [galActionHom_bijective_of_prime_degree'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/declarations/galactionhom-bijective-of-prime-degree--308e238c4f8cc88da41fdf17.md) | 152 | `result-track:308e238c4f8cc88da41fdf17bcc2b3be75aacd557bc57aa8488d365a10b81341` |
| 7 | `lemma` | [Polynomial.mul_star_dvd_of_aeval_eq_zero_im_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/declarations/polynomial-mul-star-dvd-of-aeval-eq-zero-im-ne-zero--c2c8e5bc1659d496e9279de7.md) | 174 | `result-track:c2c8e5bc1659d496e9279de73f741058ad1ea1c8f075bf2a6d97efced7a5efd8` |
| 8 | `lemma` | [Polynomial.quadratic_dvd_of_aeval_eq_zero_im_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/declarations/polynomial-quadratic-dvd-of-aeval-eq-zero-im-ne-zero--453b86fb71704e6f13eb6842.md) | 183 | `result-track:453b86fb71704e6f13eb6842cf554555e638db9a03b522073a7a803280604874` |
| 9 | `lemma` | [Irreducible.degree_le_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/declarations/irreducible-degree-le-two--b753ab79f5d518e33ba99556.md) | 195 | `result-track:b753ab79f5d518e33ba99556ef8429ce4076c06eaba1b48fa6e4e6fd5764a20c` |
| 10 | `lemma` | [Irreducible.natDegree_le_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/declarations/irreducible-natdegree-le-two--ad79185f28faebb9173ea8c4.md) | 217 | `result-track:ad79185f28faebb9173ea8c4c24680baf341384865e6bf82962e6f5279035b9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
