# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FeshbachEquationIdeal.Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9072c7b6c2aefd9ed36033c905a7ce4fbb5ad545",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9072c7b6c2aefd9ed36033c905a7ce4fbb5ad545`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.HomogeneousLinearIdeal` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Invertible` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockEquationIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/blockequationideal--a1e0f09c6ba936826e047997.md) | 27 | `declaration-track:a1e0f09c6ba936826e047997c80b45db4646479d5715128f3e70690def423beb` |
| 2 | `theorem` | [mem_blockEquationIdeal_left](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/mem-blockequationideal-left--6befd42a16d2693e34f81f9a.md) | 30 | `result-track:6befd42a16d2693e34f81f9a2274b223ddba6a3a466e3ddaa713bb6fe8ca278b` |
| 3 | `theorem` | [mem_blockEquationIdeal_right](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/mem-blockequationideal-right--a28ccb2a4c1da7892869ae1c.md) | 34 | `result-track:a28ccb2a4c1da7892869ae1cfe71e38a73fa3980d51bbb91e87609130d2c1d5a` |
| 4 | `theorem` | [mulVec_mem_ideal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/mulvec-mem-ideal--5215a34834f0bad5595acf4f.md) | 40 | `result-track:5215a34834f0bad5595acf4fa41e450dcc764ecdf8b180addb0b0d50222ab31c` |
| 5 | `theorem` | [blockEquationIdeal_elimination](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/blockequationideal-elimination--ed422f696b2880fc0b1f7b18.md) | 46 | `result-track:ed422f696b2880fc0b1f7b18eb3e5d191c456c47e1b0a9b319c8dc052cf8886f` |
| 6 | `theorem` | [blockEquationIdeal_swap](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/blockequationideal-swap--45e099e17e68a6101fac2762.md) | 76 | `result-track:45e099e17e68a6101fac276227e5623bd97d110e54a8d014e96770fd29de060a` |
| 7 | `theorem` | [blockEquationIdeal_mulVec_left](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/blockequationideal-mulvec-left--633222e6f274b6b309803d06.md) | 90 | `result-track:633222e6f274b6b309803d06676acbcd415934248e86d2921af1ede53cd6396c` |
| 8 | `theorem` | [blockEquationIdeal_add_mulVec_right](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/blockequationideal-add-mulvec-right--8762215e967c88c24e1a98a8.md) | 99 | `result-track:8762215e967c88c24e1a98a8db644d2093183e42365c51fd858914a1f52d862a` |
| 9 | `theorem` | [feshbach_equationIdeal_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/feshbach-equationideal-eq--3d1b28fdfc37dbf29120de57.md) | 110 | `result-track:3d1b28fdfc37dbf29120de572af8d2853db53fc163e0177b3e937ad333a50af5` |
| 10 | `def` | [feshbachPolynomialEquationIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/feshbachpolynomialequationideal--b3f9ad6637fafed291635ba1.md) | 134 | `declaration-track:b3f9ad6637fafed291635ba1c56648dc33ec326a7fa14719924b7b3620c3c18e` |
| 11 | `def` | [reducedFeshbachPolynomialEquationIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/reducedfeshbachpolynomialequationideal--b7b8f7ea0370a45fd1868133.md) | 145 | `declaration-track:b7b8f7ea0370a45fd1868133ec6a76a11d548cdee3ada35685b98a56d1fc9341` |
| 12 | `theorem` | [feshbach_polynomial_equationIdeal_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/feshbach-polynomial-equationideal-eq--28c3ce455b66201528e04045.md) | 158 | `result-track:28c3ce455b66201528e040458c072a8ee59de964ab373dd72e98d32c419b6519` |
| 13 | `theorem` | [feshbach_polynomial_equationIdeal_isPrime](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/feshbach-polynomial-equationideal-isprime--f0e671c5b40a88148ca362e8.md) | 192 | `result-track:f0e671c5b40a88148ca362e8b1b52330a1379f9a94b69941473085e8e2a44136` |
| 14 | `theorem` | [feshbach_polynomial_equationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/feshbach-polynomial-equationideal-isradical--0a86ad64caca6b7924f55e56.md) | 212 | `result-track:0a86ad64caca6b7924f55e56ab9cca61b97b4ce8e518228a6b060ad0a98367b8` |
| 15 | `theorem` | [reduced_feshbach_polynomial_equationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/reduced-feshbach-polynomial-equationideal-isradical--6c6733b132be3f3ca921929b.md) | 225 | `result-track:6c6733b132be3f3ca921929bafc9dc286309100e8bb7a6025ac2baf6e109e15f` |
| 16 | `theorem` | [feshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/feshbachpolynomialequationideal-eq-vanishingideal-zerolocus--9382a30e5b850f8e9723574e.md) | 242 | `result-track:9382a30e5b850f8e9723574e23e385d5ba803db030e89740efa9472ca21aa9db` |
| 17 | `theorem` | [reducedFeshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/reducedfeshbachpolynomialequationideal-eq-vanishingideal-zerolocus--b81c607aa25f0f176c76092a.md) | 254 | `result-track:b81c607aa25f0f176c76092a5234e1bc0f48a758e6f11a616a224a5151ce9efc` |
| 18 | `theorem` | [feshbachPolynomialEquationIdeal_origin_mem_zeroLocus](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/feshbachpolynomialequationideal-origin-mem-zerolocus--500053c15db83af5d27fcfe5.md) | 269 | `result-track:500053c15db83af5d27fcfe56e84168af56bb9f371e06dcaa5254bd53986e0bc` |
| 19 | `theorem` | [feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/feshbachpolynomialequationideal-full-reduced-zerolocus-nonempty--358611fdd4d8bba94ca534aa.md) | 280 | `result-track:358611fdd4d8bba94ca534aa5d277d80e7d8f609bf9c6c0a15aba2a926bd3bd9` |
| 20 | `theorem` | [nondegenerate_feshbach_polynomial_equationIdeal_eq_coordinates](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/nondegenerate-feshbach-polynomial-equationideal-eq-coordinates--d91d136f6426831971119ad9.md) | 295 | `result-track:d91d136f6426831971119ad9ec21f5713181a6e98772a188c85fc91e09b1ea49` |
| 21 | `theorem` | [coordinateEquationIdeal_eq_ker](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/coordinateequationideal-eq-ker--cba8b8e2d05bece9612df821.md) | 319 | `result-track:cba8b8e2d05bece9612df821d98637b8a4e57743f1256d1a61e60b50bd52e7c0` |
| 22 | `theorem` | [blockCoordinateEquationIdeal_eq_ker](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/blockcoordinateequationideal-eq-ker--6d0e03df5d7f886eb1d8f773.md) | 349 | `result-track:6d0e03df5d7f886eb1d8f7731e9684673b97e971bdf05013dabe1bc578a477b0` |
| 23 | `theorem` | [blockCoordinateEquationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/blockcoordinateequationideal-isradical--087f584884ef7d7813e9dea1.md) | 363 | `result-track:087f584884ef7d7813e9dea1c45ceb3c8ce1bcdb4d80a91604fa246c05eec0ae` |
| 24 | `theorem` | [nondegenerate_feshbach_polynomial_equationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/nondegenerate-feshbach-polynomial-equationideal-isradical--1f027f68c8f71ba320cfac19.md) | 373 | `result-track:1f027f68c8f71ba320cfac197cc21718d2c1b05e0f2900d58ce5207596277cc7` |
| 25 | `theorem` | [blockEquationIdeal_neg_left](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/blockequationideal-neg-left--ac6311af5c5a38a5bfd8718a.md) | 389 | `result-track:ac6311af5c5a38a5bfd8718a8a9c6b0946ac246e7912443fa8e3a019e42aa764` |
| 26 | `def` | [diagonalEquationIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/diagonalequationideal--7f6c5d4675880352fb1b5f30.md) | 408 | `declaration-track:7f6c5d4675880352fb1b5f30b48ac69ae7d0fbcb8e3087d704138fd9264ac0ad` |
| 27 | `theorem` | [opposite_signs_same_equationIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/opposite-signs-same-equationideal--3770b5d88bf979029764a487.md) | 414 | `result-track:3770b5d88bf979029764a487977b58775e4738ff95e3b01ff57e976ed92e045b` |
| 28 | `theorem` | [positive_diagonal_equationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/positive-diagonal-equationideal-isradical--1d9bd76d4199bb1c4cfd587f.md) | 425 | `result-track:1d9bd76d4199bb1c4cfd587fa5fb6d04182434c0cc789e602736646055c36ea7` |
| 29 | `theorem` | [indefinite_diagonal_equationIdeal_isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/indefinite-diagonal-equationideal-isradical--543a61e2cdbf50b94235282e.md) | 431 | `result-track:543a61e2cdbf50b94235282eebbacf093256a1747f0a35d05c3a2280db3deead` |
| 30 | `theorem` | [positive_diagonal_nonnegative](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/positive-diagonal-nonnegative--d2208c63765d78e3e8d40caa.md) | 437 | `result-track:d2208c63765d78e3e8d40caade3e78976ad07bd6f21bd0bf6aed7dd4a5815e6d` |
| 31 | `theorem` | [indefinite_diagonal_has_negative_direction](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/indefinite-diagonal-has-negative-direction--fdc8e3a1eea2071b1ac5192a.md) | 441 | `result-track:fdc8e3a1eea2071b1ac5192aea05c0aaa53231c85db3c7eff57b40d91aaddc8d` |
| 32 | `theorem` | [radical_equationIdeal_does_not_determine_sign](../../../../../mathematics/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/declarations/radical-equationideal-does-not-determine-sign--557e756f40935bffb87a2aa5.md) | 447 | `result-track:557e756f40935bffb87a2aa5dff06a933a3d4ff82cf938c14f801c8e2815ed39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
