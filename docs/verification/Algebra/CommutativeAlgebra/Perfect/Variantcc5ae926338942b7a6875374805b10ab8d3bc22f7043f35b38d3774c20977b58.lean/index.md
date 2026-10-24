# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Perfect.Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61bbf53606e28df8b56ca897475705124e945f5a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61bbf53606e28df8b56ca897475705124e945f5a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Separable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PerfectRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/perfectring--d9de74d9394636fdde99cf4f.md) | 35 | `declaration-track:d9de74d9394636fdde99cf4fdc5459490e480369886f331bafda35a1b7111dce` |
| 2 | `lemma` | [PerfectRing.ofSurjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/perfectring-ofsurjective--51968235de8d43843b3f0f6c.md) | 45 | `result-track:51968235de8d43843b3f0f6c46c7ab30c180ac4b3bdbaf906e205995963174ea` |
| 3 | `instance` | [PerfectRing.ofFiniteOfIsReduced](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/perfectring-offiniteofisreduced--a45e0bddf09546275f5ab8e7.md) | 50 | `declaration-track:a45e0bddf09546275f5ab8e7673db21ce83c5991f20a593347c81ecbe829bca0` |
| 4 | `theorem` | [bijective_frobenius](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/bijective-frobenius--4c8c96e5eba5265594411226.md) | 57 | `result-track:4c8c96e5eba52655944112262726544fe54fdb31fda0518b424a5637e4d3da46` |
| 5 | `theorem` | [injective_frobenius](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/injective-frobenius--43a9604de0b95ff3d19aff06.md) | 60 | `result-track:43a9604de0b95ff3d19aff06a307d3bd15f4431dc10c8b8e397142ca8550b1ac` |
| 6 | `theorem` | [surjective_frobenius](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/surjective-frobenius--1c0ade1e0a6041f6d979d2b7.md) | 63 | `result-track:1c0ade1e0a6041f6d979d2b721b7bb812d1b8d77c0cf37ccf77f303c61da86f2` |
| 7 | `def` | [frobeniusEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/frobeniusequiv--dcdd002ca3ef812044b863d7.md) | 67 | `declaration-track:dcdd002ca3ef812044b863d7a520447369a2a36518d6821dd2d1fc4843df8118` |
| 8 | `theorem` | [coe_frobeniusEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/coe-frobeniusequiv--d96ba92ac2d0f32f89feacf6.md) | 72 | `result-track:d96ba92ac2d0f32f89feacf6d9dc55dc47787c1f413f763ac0f9e30715e6f229` |
| 9 | `theorem` | [frobeniusEquiv_symm_apply_frobenius](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/frobeniusequiv-symm-apply-frobenius--19cfb0da0aa55b9ec9697bec.md) | 76 | `result-track:19cfb0da0aa55b9ec9697becc1cada9a8df7097885c4f6349c79bfacd179f21a` |
| 10 | `theorem` | [frobenius_apply_frobeniusEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/frobenius-apply-frobeniusequiv-symm--98febd82c833c8223f622cb6.md) | 81 | `result-track:98febd82c833c8223f622cb6cb7520511f7bffeddc84b1f7165162c9b95f9f87` |
| 11 | `theorem` | [frobenius_comp_frobeniusEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/frobenius-comp-frobeniusequiv-symm--be15ad8604000ffc393c6d87.md) | 86 | `result-track:be15ad8604000ffc393c6d87867dd75a66d4c15d72192b87fe7f3a37795fe21f` |
| 12 | `theorem` | [frobeniusEquiv_symm_comp_frobenius](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/frobeniusequiv-symm-comp-frobenius--583d8d812a37adf5bd54c951.md) | 91 | `result-track:583d8d812a37adf5bd54c951ac57848c19a8ae7570bbdc85de27840cb1946e06` |
| 13 | `theorem` | [frobeniusEquiv_symm_pow_p](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/frobeniusequiv-symm-pow-p--671999535d28ef5d1fa03b5b.md) | 96 | `result-track:671999535d28ef5d1fa03b5b90d9f8c01afcc1f6ae71887548a7706d09a98c42` |
| 14 | `theorem` | [injective_pow_p](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/injective-pow-p--38b955470bb741da9e5c0530.md) | 99 | `result-track:38b955470bb741da9e5c0530a72155ba394319077944c57b5f74a6b4b5c9ae60` |
| 15 | `lemma` | [polynomial_expand_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/polynomial-expand-eq--a8d0c7f41a9deca802c0b1ee.md) | 102 | `result-track:a8d0c7f41a9deca802c0b1ee8889be37f65466baf8d8bc338b0e8b36c3fb4718` |
| 16 | `theorem` | [not_irreducible_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/not-irreducible-expand--15190f948d76b2cbc7d579ca.md) | 108 | `result-track:15190f948d76b2cbc7d579ca5b103393ae124b2c83ef4b4fa8f478cffc16255f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/instance--ac7eef630e026ac615dbf66d.md) | 113 | `declaration-track:ac7eef630e026ac615dbf66dcc3f5cde4f9cf6e701dc73b9e17e79d9f67caca5` |
| 18 | `class` | [PerfectField](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/perfectfield--f09cee87847638043c564937.md) | 126 | `declaration-track:f09cee87847638043c564937fc976a2091b3002539744a9dfce6e7ac3ac0d73a` |
| 19 | `lemma` | [PerfectRing.toPerfectField](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/perfectring-toperfectfield--0a387f635971914938cff1b5.md) | 130 | `result-track:0a387f635971914938cff1b5ea3a754bb51d641b1dfebff3865251ba548b22d5` |
| 20 | `instance` | [ofCharZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/ofcharzero--3e98f8b59537aac9de35b79b.md) | 141 | `declaration-track:3e98f8b59537aac9de35b79bdd46f9894d3999a969fe212f77fd4db1c292c47e` |
| 21 | `instance` | [ofFinite](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/offinite--fbf514c5144b3b96dda40382.md) | 143 | `declaration-track:fbf514c5144b3b96dda40382e781c6b04fc7af21aff660c305013298f4a55fb7` |
| 22 | `instance` | [toPerfectRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/declarations/toperfectring--68b979031a1e9361d82edeb1.md) | 151 | `declaration-track:68b979031a1e9361d82edeb14171b6628df1a9a908dd520f9dc03ee17845c472` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
