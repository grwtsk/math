# Verification target: GRWTSK.Algebra.LinearAlgebra.Polynomial.Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76a447cf469c5e7d910e521b03394a20268c9d91",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76a447cf469c5e7d910e521b03394a20268c9d91`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Monad` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Charpoly.ToMatrix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Univ` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Free` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMvPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial--2267335ef429ff7738d4331a.md) | 88 | `declaration-track:2267335ef429ff7738d4331abf942af666f0bb389e29e74b462e7c4032532c1f` |
| 2 | `lemma` | [toMvPolynomial_eval_eq_apply](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-eval-eq-apply--f430120bb458ebda6942330a.md) | 91 | `result-track:f430120bb458ebda6942330ab165a3e005983cabdb4f2db02000971dc335437e` |
| 3 | `lemma` | [toMvPolynomial_map](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-map--edc48365098385583bab5b46.md) | 96 | `result-track:edc48365098385583bab5b46139662968f27a0f7d974f847e8b7ae762b03f99a` |
| 4 | `lemma` | [toMvPolynomial_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-ishomogeneous--5ace7cd4f9209f4f32692df2.md) | 100 | `result-track:5ace7cd4f9209f4f32692df28add25f35b9e9e3176b348afd90cff3847671801` |
| 5 | `lemma` | [toMvPolynomial_totalDegree_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-totaldegree-le--a07325c3d09b8731ff65afed.md) | 108 | `result-track:a07325c3d09b8731ff65afedea55ba1ef620f9d48f1c9459d815d488ed0691bd` |
| 6 | `lemma` | [toMvPolynomial_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-constantcoeff--7df0bf56448df60a8e512c47.md) | 113 | `result-track:7df0bf56448df60a8e512c47d03e2bbdb46e76a825889767139e006e594a6f48` |
| 7 | `lemma` | [toMvPolynomial_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-zero--542eb2ab5f364a0f6766b9cb.md) | 119 | `result-track:542eb2ab5f364a0f6766b9cb6d7491ed4f81cfb3e3d63725c2def07398d8da05` |
| 8 | `lemma` | [toMvPolynomial_one](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-one--fbb4390f6c4fa3bba43747c4.md) | 123 | `result-track:fbb4390f6c4fa3bba43747c4dd3ba4d576f3be095ee5c44c92e190c5e99bebfd` |
| 9 | `lemma` | [toMvPolynomial_add](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-add--3f686802a7aacb7ced110026.md) | 132 | `result-track:3f686802a7aacb7ced1100265e37f98db195c2ff5101fe846024e9b4b3bfe5d0` |
| 10 | `lemma` | [toMvPolynomial_mul](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-mul--fe24e8fa2649cc0bb553b171.md) | 137 | `result-track:fe24e8fa2649cc0bb553b171f7fcee6971196d564bd76c45c819793ffb563dee` |
| 11 | `def` | [toMvPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial--d717e1c88cb4f8897cd9979e.md) | 165 | `declaration-track:d717e1c88cb4f8897cd9979e9d7734e5a86ea0187b5ed4872e2638e591232a86` |
| 12 | `lemma` | [toMvPolynomial_eval_eq_apply](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-eval-eq-apply--49ae34f0402869b8aabd366f.md) | 169 | `result-track:49ae34f0402869b8aabd366ff7803f5d808cf2d8b8d1ea22a8124e8af7d49097` |
| 13 | `lemma` | [toMvPolynomial_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-basechange--af1dbb33f4f96c0beeeed574.md) | 175 | `result-track:af1dbb33f4f96c0beeeed5748f3f342765f79eca6d252eff03c64244ce10b132` |
| 14 | `lemma` | [toMvPolynomial_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-ishomogeneous--f84f147ac1391984613fce0d.md) | 180 | `result-track:f84f147ac1391984613fce0d4f5229c930046cb155e3a10ae42f81cb62813c9b` |
| 15 | `lemma` | [toMvPolynomial_totalDegree_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-totaldegree-le--9a5b2a9bf2b486b2b52ecd26.md) | 184 | `result-track:9a5b2a9bf2b486b2b52ecd26a5450f9a27320dde6239213e3056b90418cce1b6` |
| 16 | `lemma` | [toMvPolynomial_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-constantcoeff--328a2fa49923f6811b50e969.md) | 189 | `result-track:328a2fa49923f6811b50e9691340bd4e7771172c07a88f82dcd9245bb1eff907` |
| 17 | `lemma` | [toMvPolynomial_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-zero--13e7e20bb56e9fda86db5299.md) | 194 | `result-track:13e7e20bb56e9fda86db5299f590c7b5ef0199663c7a7fb417265aad380c5540` |
| 18 | `lemma` | [toMvPolynomial_id](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-id--9649e8558a70a88c1c19b85b.md) | 198 | `result-track:9649e8558a70a88c1c19b85bfd777570d215e036eb74338aba6076a414fe532d` |
| 19 | `lemma` | [toMvPolynomial_add](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-add--9dd310a97d5a924e5815f79b.md) | 201 | `result-track:9dd310a97d5a924e5815f79b1f61721b1bc5620d783f40b338a7cbead4f17283` |
| 20 | `lemma` | [toMvPolynomial_comp](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/tomvpolynomial-comp--95e7f81259afbafbd7c9f344.md) | 214 | `result-track:95e7f81259afbafbd7c9f344105e119e3bfaff8a8fe29e630e9341d2ec5b1d25` |
| 21 | `def` | [polyCharpolyAux](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpolyaux--9e9219466b242d4a6b042503.md) | 246 | `declaration-track:9e9219466b242d4a6b0425034153315b929dd4090b76a6f4db64ea26d7d0b155` |
| 22 | `lemma` | [polyCharpolyAux_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpolyaux-basechange--f0c4852f746a8c4b40a5bca9.md) | 250 | `result-track:f0c4852f746a8c4b40a5bca9c11eb60bfe1def7b05032248ee5846d7df9f20d0` |
| 23 | `lemma` | [polyCharpolyAux_map_eq_toMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpolyaux-map-eq-tomatrix-charpoly--6ff9f5aca6a3b6766459bf81.md) | 284 | `result-track:6ff9f5aca6a3b6766459bf81f378a8b9d91345caafb6d1dfed0e562ef625f76d` |
| 24 | `lemma` | [polyCharpolyAux_eval_eq_toMatrix_charpoly_coeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpolyaux-eval-eq-tomatrix-charpoly-coeff--ded219a34e41c616532f7106.md) | 295 | `result-track:ded219a34e41c616532f7106cfaba3f256f21af823b06e40e291bb0aa256a822` |
| 25 | `lemma` | [polyCharpolyAux_map_eq_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpolyaux-map-eq-charpoly--c44dfc7971f18272ac9a237a.md) | 301 | `result-track:c44dfc7971f18272ac9a237a30a62f1f588e23e989840f37eb4b79f255ff4507` |
| 26 | `lemma` | [polyCharpolyAux_coeff_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpolyaux-coeff-eval--cefb58a3232f7806ea6760ef.md) | 308 | `result-track:cefb58a3232f7806ea6760eff65af0942d6e9180784ad6bdc059d6ce86cc7984` |
| 27 | `lemma` | [polyCharpolyAux_map_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpolyaux-map-eval--953a3f84ce282aee21c5ce3d.md) | 313 | `result-track:953a3f84ce282aee21c5ce3d4d70bd89a682fdbb04846fc03db55c965e9fa343` |
| 28 | `lemma` | [polyCharpolyAux_map_aeval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpolyaux-map-aeval--39f03fb0cf3ad308ca58256c.md) | 321 | `result-track:39f03fb0cf3ad308ca58256c976120086f59de419e18b69e8879b5b2cd092501` |
| 29 | `lemma` | [polyCharpolyAux_basisIndep](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpolyaux-basisindep--df3b336c66fff9a19cece4c0.md) | 341 | `result-track:df3b336c66fff9a19cece4c0f864c2573f4e42a5b6d668181f406fe382e0b1a4` |
| 30 | `def` | [polyCharpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly--fa8b46f0256ee81c0eb0eaff.md) | 368 | `declaration-track:fa8b46f0256ee81c0eb0eaffa04acb2378f0a324e68101864f106e34bd5e207c` |
| 31 | `lemma` | [polyCharpoly_eq_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-eq-of-basis--1b220f287ed44ef9878abb4b.md) | 371 | `result-track:1b220f287ed44ef9878abb4b05e9b70a28c9a873746e3c8673b6f078a43290c9` |
| 32 | `lemma` | [polyCharpoly_monic](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-monic--10f679c2c52271a89300b8e2.md) | 377 | `result-track:10f679c2c52271a89300b8e2d5f002a00e7bd74d255159318a02a623b2b4ec85` |
| 33 | `lemma` | [polyCharpoly_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-ne-zero--78a92d495fd41d1236c4a358.md) | 380 | `result-track:78a92d495fd41d1236c4a358cc03399cb17b04c7fad7cdf8f1b7e2901977043e` |
| 34 | `lemma` | [polyCharpoly_natDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-natdegree--19eab1d02d235922200362c5.md) | 384 | `result-track:19eab1d02d235922200362c59a1d76eadcaf091761be88159d0e06a75120b5b4` |
| 35 | `lemma` | [polyCharpoly_coeff_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-coeff-ishomogeneous--03e0b9e9e547bb3db9a92160.md) | 389 | `result-track:03e0b9e9e547bb3db9a92160ccdcf5b3f57d7a2d6792d8badbc8b286dc1db5d3` |
| 36 | `lemma` | [polyCharpoly_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-basechange--a9130bce0cec2677c0f7d823.md) | 398 | `result-track:a9130bce0cec2677c0f7d823983cfdb7ff3e88501109998ec9646b12ef7bf2e9` |
| 37 | `lemma` | [polyCharpoly_map_eq_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-map-eq-charpoly--ce0084ce00ad69b03f451398.md) | 406 | `result-track:ce0084ce00ad69b03f451398dc6ce69231495ae7a3897a50b02a0c17b85e7d30` |
| 38 | `lemma` | [polyCharpoly_coeff_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-coeff-eval--b7dd900f7a4035782a1f0fdb.md) | 411 | `result-track:b7dd900f7a4035782a1f0fdbd99a642fd36ff5621154de17202d126c091ddd12` |
| 39 | `lemma` | [polyCharpoly_coeff_eq_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-coeff-eq-zero-of-basis--cc10ce35ab2e0319fdde980f.md) | 415 | `result-track:cc10ce35ab2e0319fdde980fd362fbfda71fca856a6bddc8a318681cdca17c75` |
| 40 | `lemma` | [polyCharpoly_coeff_eq_zero_iff_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-coeff-eq-zero-iff-of-basis--5cfb19729936904e9008c124.md) | 426 | `result-track:5cfb19729936904e9008c12427b911b0d5dd71c237f96b7ab8f2a0c0adacdaa4` |
| 41 | `def` | [nilRankAux](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/nilrankaux--9b2e80ae4f59ccec44eff533.md) | 441 | `declaration-track:9b2e80ae4f59ccec44eff533740d04fa9f2c29c92bd1ef4a837626b182ecb9f9` |
| 42 | `lemma` | [polyCharpoly_coeff_nilRankAux_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-coeff-nilrankaux-ne-zero--1b98e0904bd32392b094e7de.md) | 444 | `result-track:1b98e0904bd32392b094e7de44368fe5127ea62087184df4c03c731ab2057308` |
| 43 | `lemma` | [nilRankAux_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/nilrankaux-le--400312da7a01ac1992a9370d.md) | 449 | `result-track:400312da7a01ac1992a9370d2d2cb63ecde2e14c0d01873f9f4673c241a3a1ca` |
| 44 | `lemma` | [nilRankAux_basis_indep](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/nilrankaux-basis-indep--fb964577285d15fdc6e70351.md) | 455 | `result-track:fb964577285d15fdc6e703516bbc8a7f11e680da34db1a84d7ff1e56b5976545` |
| 45 | `def` | [nilRank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/nilrank--96f8e3774a80ea46472b339a.md) | 471 | `declaration-track:96f8e3774a80ea46472b339a338cc8c218141fc1603149026ea8a742d040733e` |
| 46 | `lemma` | [nilRank_eq_polyCharpoly_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/nilrank-eq-polycharpoly-nattrailingdegree--831cb9944b38bca3bcad5deb.md) | 477 | `result-track:831cb9944b38bca3bcad5deb726bb334e8ea991a09b87d9635063d977324d36f` |
| 47 | `lemma` | [polyCharpoly_coeff_nilRank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/polycharpoly-coeff-nilrank-ne-zero--255149158c6816e088c63e35.md) | 481 | `result-track:255149158c6816e088c63e35a3060a962362958d5fcd6ede0a0c14ea9fe41d9b` |
| 48 | `lemma` | [nilRank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/nilrank-le-card--b1594251167aae99f2fb2504.md) | 488 | `result-track:b1594251167aae99f2fb2504152b826c574a80e6b349c0017d5a64e2f74e9a53` |
| 49 | `lemma` | [nilRank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/nilrank-le-finrank--a1a917fbda6cb5745aa68daa.md) | 494 | `result-track:a1a917fbda6cb5745aa68daa19e4551f7a35ca504b5b244551e8cbbe886825da` |
| 50 | `lemma` | [nilRank_le_natTrailingDegree_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/nilrank-le-nattrailingdegree-charpoly--2aeb74b44396fc627d74f470.md) | 497 | `result-track:2aeb74b44396fc627d74f470ad375ab7cffc7f000fdb91cb6c986c1a16891b84` |
| 51 | `def` | [IsNilRegular](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/isnilregular--27ac03606e7e119bb20da613.md) | 514 | `declaration-track:27ac03606e7e119bb20da6134686f792406e347bd53451062a605096e6941bf9` |
| 52 | `lemma` | [isNilRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/isnilregular-def--81ac7030c7a8d3af3c537b83.md) | 519 | `result-track:81ac7030c7a8d3af3c537b836ec8d923cb35ea7bb01981d79a4ffae80263baf4` |
| 53 | `lemma` | [isNilRegular_iff_coeff_polyCharpoly_nilRank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/isnilregular-iff-coeff-polycharpoly-nilrank-ne-zero--926839b5608f8dfa3ff025fb.md) | 522 | `result-track:926839b5608f8dfa3ff025fbec144a569aaeb3a80c9ce6600acb272a3a585bbd` |
| 54 | `lemma` | [isNilRegular_iff_natTrailingDegree_charpoly_eq_nilRank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/isnilregular-iff-nattrailingdegree-charpoly-eq-nilrank--56e4a0b598a8abcba8d4c584.md) | 528 | `result-track:56e4a0b598a8abcba8d4c5844949391948e4d2a6ceba6118953276b583173212` |
| 55 | `lemma` | [exists_isNilRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/exists-isnilregular-of-finrank-le-card--e5c86c3cf21446f9831cf6f8.md) | 546 | `result-track:e5c86c3cf21446f9831cf6f80a6dfee5f0a7ceb41489eb5aa69e81fc6c27a107` |
| 56 | `lemma` | [exists_isNilRegular](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/declarations/exists-isnilregular--2b5f7246bcb8f2067396b916.md) | 564 | `result-track:2b5f7246bcb8f2067396b916bd0629b3c66e224901cb9f21b929f6b2f5f0af47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
