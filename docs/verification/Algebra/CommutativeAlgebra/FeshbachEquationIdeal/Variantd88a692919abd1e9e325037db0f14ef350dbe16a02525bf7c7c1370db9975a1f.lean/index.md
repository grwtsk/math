# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FeshbachEquationIdeal.Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8da69080fedd6d000ebc4f809dccd682d71819c1",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8da69080fedd6d000ebc4f809dccd682d71819c1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.HomogeneousLinearIdeal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Invertible` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockEquationIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/blockequationideal--1182c75c409cb7624aaa19bb.md) | 35 | `declaration-track:1182c75c409cb7624aaa19bb0ea6e344d0030ed0b2310e68dabd34db92b2c2d6` |
| 2 | `theorem` | [mem_blockEquationIdeal_left](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/mem-blockequationideal-left--2ab074b4aa4f99a00d387852.md) | 38 | `result-track:2ab074b4aa4f99a00d387852e2d8f054d411f4e738ea381550bf4176764e7056` |
| 3 | `theorem` | [mem_blockEquationIdeal_right](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/mem-blockequationideal-right--706b0585c225c8ef2e57c096.md) | 42 | `result-track:706b0585c225c8ef2e57c096bfc4f03af7a721f11f848ab324817b40878bc023` |
| 4 | `theorem` | [mulVec_mem_ideal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/mulvec-mem-ideal--24e2e397600f1b0c136a814a.md) | 48 | `result-track:24e2e397600f1b0c136a814aab78a5a5088fe08f4729972bfa5bf089eec35a65` |
| 5 | `theorem` | [blockEquationIdeal_elimination](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/blockequationideal-elimination--586bef603d1de8e226a10a9a.md) | 54 | `result-track:586bef603d1de8e226a10a9a0d8a345e6a3a0283477a5a7a767afff108a44af3` |
| 6 | `theorem` | [blockEquationIdeal_swap](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/blockequationideal-swap--c51b824751034e95c50d49b2.md) | 84 | `result-track:c51b824751034e95c50d49b29ce43bce4097b7a44ae2a68a4b33c819431780fe` |
| 7 | `theorem` | [blockEquationIdeal_mulVec_left](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/blockequationideal-mulvec-left--e06cf7fb0c1353f85e304a16.md) | 98 | `result-track:e06cf7fb0c1353f85e304a16d195dda522a80270db2d4383e9230bde242064d7` |
| 8 | `theorem` | [blockEquationIdeal_add_mulVec_right](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/blockequationideal-add-mulvec-right--574bf27d3a4267c256371362.md) | 107 | `result-track:574bf27d3a4267c25637136243970e7e95a6511d884d667ac876565ac783868a` |
| 9 | `theorem` | [feshbach_equationIdeal_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/feshbach-equationideal-eq--9e1c2f90599c69348fc2807f.md) | 118 | `result-track:9e1c2f90599c69348fc2807f5319e461ac495c852123200d50e05d07e458f746` |
| 10 | `def` | [feshbachPolynomialEquationIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/feshbachpolynomialequationideal--fdc1104d4499a723edb1c9d0.md) | 142 | `declaration-track:fdc1104d4499a723edb1c9d03c8acafc99eff83f2dbd35a86cd0d298c6ea8cda` |
| 11 | `def` | [reducedFeshbachPolynomialEquationIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/reducedfeshbachpolynomialequationideal--55fe78704c447c6b52c8840f.md) | 153 | `declaration-track:55fe78704c447c6b52c8840f5dc2e6343a111d9be194be8ae0f3435f075612c1` |
| 12 | `theorem` | [feshbach_polynomial_equationIdeal_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/feshbach-polynomial-equationideal-eq--1300740f32e9de5ed2ce5dac.md) | 166 | `result-track:1300740f32e9de5ed2ce5dac1e2fef48ce17db238b68e20148841341b70461de` |
| 13 | `theorem` | [feshbach_polynomial_equationIdeal_isPrime](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/feshbach-polynomial-equationideal-isprime--20f857388ebfdf4b96dd25d5.md) | 200 | `result-track:20f857388ebfdf4b96dd25d52771800c8e33d8abf63dece9f41158f34a9b70c9` |
| 14 | `theorem` | [feshbach_polynomial_equationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/feshbach-polynomial-equationideal-isradical--bf26591c210820e72b0c0d84.md) | 220 | `result-track:bf26591c210820e72b0c0d842540ade5e0a668b9640cd99ee0b1bec5dc08fa0a` |
| 15 | `theorem` | [reduced_feshbach_polynomial_equationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/reduced-feshbach-polynomial-equationideal-isradical--2630486a917da53190072b3a.md) | 233 | `result-track:2630486a917da53190072b3aee84ff52d77b83551f83bda6dbdc811c3f2e6812` |
| 16 | `theorem` | [feshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/feshbachpolynomialequationideal-eq-vanishingideal-zerolocus--6f43d7ab1f3a8b45aa2195dc.md) | 250 | `result-track:6f43d7ab1f3a8b45aa2195dcf828067c26003602c512c62d0bba8fcd9ad13168` |
| 17 | `theorem` | [reducedFeshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/reducedfeshbachpolynomialequationideal-eq-vanishingideal-zerolocus--3892841add8a64df4a0cec8b.md) | 262 | `result-track:3892841add8a64df4a0cec8b9c412351c97d6a618199e1f28e5e083d4e95c0a1` |
| 18 | `theorem` | [feshbachPolynomialEquationIdeal_origin_mem_zeroLocus](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/feshbachpolynomialequationideal-origin-mem-zerolocus--a2d1f19aa80be507ef1fb0df.md) | 277 | `result-track:a2d1f19aa80be507ef1fb0dfd1abc1c11198fc4f62790f6aab912738e4cad146` |
| 19 | `theorem` | [feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/feshbachpolynomialequationideal-full-reduced-zerolocus-nonempty--2e98177eebea1e09e61d28d1.md) | 288 | `result-track:2e98177eebea1e09e61d28d10767d43742cf122c5e275f23129bc0ce68802049` |
| 20 | `theorem` | [nondegenerate_feshbach_polynomial_equationIdeal_eq_coordinates](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/nondegenerate-feshbach-polynomial-equationideal-eq-coordinates--73c9164a02c266ded221ee55.md) | 303 | `result-track:73c9164a02c266ded221ee55191fa3b1f0b2aad1d433dcf6cf5963759628108f` |
| 21 | `theorem` | [coordinateEquationIdeal_eq_ker](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/coordinateequationideal-eq-ker--238c9439b9c7981ac75a909a.md) | 327 | `result-track:238c9439b9c7981ac75a909a53b5bc50e7a18ce5922fc6db8c38803a2346fa4d` |
| 22 | `theorem` | [blockCoordinateEquationIdeal_eq_ker](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/blockcoordinateequationideal-eq-ker--f095bcb1d43041e3f04ad6b4.md) | 357 | `result-track:f095bcb1d43041e3f04ad6b48c09e1068a0ada3f90bbc27dddd10000ad80a89b` |
| 23 | `theorem` | [blockCoordinateEquationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/blockcoordinateequationideal-isradical--135d1e9689a1fc7b80a88863.md) | 371 | `result-track:135d1e9689a1fc7b80a88863caa88c9257cadea8784a78fde78d1a640cc55ae5` |
| 24 | `theorem` | [nondegenerate_feshbach_polynomial_equationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/nondegenerate-feshbach-polynomial-equationideal-isradical--5264a0e81a7af0dd169c9dd8.md) | 381 | `result-track:5264a0e81a7af0dd169c9dd8dd81b3ce4aeb9188a9a7bb98706079d9a5b6e86f` |
| 25 | `theorem` | [blockEquationIdeal_neg_left](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/blockequationideal-neg-left--2941fa07532031a59f8c146a.md) | 397 | `result-track:2941fa07532031a59f8c146af7c0eb784d619f628d39fc5ee3189ce8fd9ef207` |
| 26 | `def` | [diagonalEquationIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/diagonalequationideal--0e37f7fc9faf55b144f0ca4b.md) | 416 | `declaration-track:0e37f7fc9faf55b144f0ca4bd4c2f29aeda24caef0e59e171efb31a4cb129cce` |
| 27 | `theorem` | [opposite_signs_same_equationIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/opposite-signs-same-equationideal--66751a468ea65732e508d977.md) | 422 | `result-track:66751a468ea65732e508d977cfe481525e563d6e7f0a2cb563c88a9e65484659` |
| 28 | `theorem` | [positive_diagonal_equationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/positive-diagonal-equationideal-isradical--bc803c69903183f66017fce1.md) | 433 | `result-track:bc803c69903183f66017fce19fe6f6159cf9730bf60d6e7ba8818b838f60e861` |
| 29 | `theorem` | [indefinite_diagonal_equationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/indefinite-diagonal-equationideal-isradical--43769a3ea2c5939084860932.md) | 439 | `result-track:43769a3ea2c5939084860932734309cb343b567b9901472a023ccb7b86563de3` |
| 30 | `theorem` | [positive_diagonal_nonnegative](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/positive-diagonal-nonnegative--82a413cd73c4d32a65b08b07.md) | 445 | `result-track:82a413cd73c4d32a65b08b07fc9ad51436c7e27b23095c63fba4dc7fb96b3d6f` |
| 31 | `theorem` | [indefinite_diagonal_has_negative_direction](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/indefinite-diagonal-has-negative-direction--70ac4a4911feeb4e657db402.md) | 449 | `result-track:70ac4a4911feeb4e657db402b34725c104604a5b723be231900f934cc82e37a3` |
| 32 | `theorem` | [radical_equationIdeal_does_not_determine_sign](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/declarations/radical-equationideal-does-not-determine-sign--812d28d52d64a0c629ba0dc4.md) | 455 | `result-track:812d28d52d64a0c629ba0dc477fa7c5ebc9a4cab40010120ac830a5d929dc322` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
