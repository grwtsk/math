# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.HigherPowerSourceStatements.Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "477bc03eafb88472a655bd26ee19dbf9868134ab",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `477bc03eafb88472a655bd26ee19dbf9868134ab`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/ishigherprimepower--f3f90c585a3398b284db82fe.md) | 24 | `declaration-track:f3f90c585a3398b284db82fe92e12113f9bc83bccb78a4c44bee352103c4dc19` |
| 2 | `def` | [higherPrimePowerIndices](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/higherprimepowerindices--8e11fd98c8bc80ce58cfe3de.md) | 27 | `declaration-track:8e11fd98c8bc80ce58cfe3de6ae7cb81579aeca68e570e18ffe94367b7b49886` |
| 3 | `def` | [higherPrimePowerContribution](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/higherprimepowercontribution--1b62ee96906a3ab62a1e4704.md) | 32 | `declaration-track:1b62ee96906a3ab62a1e470477fb5a96a592ac89b443861198e9c0865d643e1d` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/prime-power-representation-unique--e5689bec86abe7b701b5899c.md) | 38 | `result-track:e5689bec86abe7b701b5899c296772b52c2e0d27519c8688a115cba366dcd72f` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/primesquare-not-higher--ab052d7b7ad62e968f125900.md) | 44 | `result-track:ab052d7b7ad62e968f125900cd87449139ff6c98ce1f9bc087abf242c118ecaa` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/primesquare-not-prime--59bb9503ffe2f51e2ab06a82.md) | 52 | `result-track:59bb9503ffe2f51e2ab06a8235c7bd44b06ebd6d1eb3aff915f358e84da9f2f8` |
| 7 | `theorem` | [higher_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/higher-not-prime--3b01a09697db330e1d5f149b.md) | 57 | `result-track:3b01a09697db330e1d5f149bf95d1cfc38dfc2489a6e307de397a986dedb9cf3` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/nonprime-primepower-iff--4b517ed5f1c7a6aa76570c00.md) | 62 | `result-track:4b517ed5f1c7a6aa76570c000bc0a19f66bca8556ea5d275a8fc33c7350e88d1` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/nonprime-weight-zero-of-outside--dda8993bf9222a636e3ccfee.md) | 82 | `result-track:dda8993bf9222a636e3ccfee34586ae19ff40e5c92765fdcaf5141ddb4a19149` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/primesquare-higher-indices-disjoint--2f18431ada52befdda3cccc5.md) | 90 | `result-track:2f18431ada52befdda3cccc5357cca1957ed4bc845b59c326cadd973e1aeec4b` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/properprimepowercontribution-eq-square-add-higher--b426d1397fdf5df60f77af0c.md) | 98 | `result-track:b426d1397fdf5df60f77af0cf07f36fb33f52aa1d52c6ac8a6f426fb5a62a996` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/primepowercontribution-eq-prime-square-higher--16a63dd161e98dda54a401ca.md) | 119 | `result-track:16a63dd161e98dda54a401ca000acba38139b91d0d2b1bd206badeeafb495a02` |
| 13 | `theorem` | [eight_higher_not_square](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/eight-higher-not-square--bfc453be076ebbebe77dadb4.md) | 127 | `result-track:bfc453be076ebbebe77dadb4c10b947d0b5b8b923b1110f46fd42dee3df4364f` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/eight-mem-higherprimepowerindices-iff--a2f2a35e41b61cd388f37409.md) | 132 | `result-track:a2f2a35e41b61cd388f37409bbdbb96dfc088850b8e8ba76ef7287c5f3ba51a3` |
| 15 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--480b605abd90fbf98266ac3a.md) | 153 | `declaration-track:480b605abd90fbf98266ac3aa8302fceafc3c05eeb3f6905a0e76e0f51f4f911` |
| 16 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--bd545dfb0e359e435c003b50.md) | 155 | `declaration-track:bd545dfb0e359e435c003b50ea37bba276ff5ce60b1679f8ba5e997eba00d7db` |
| 17 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--19e1f3cbce2519528ffd93b1.md) | 158 | `declaration-track:19e1f3cbce2519528ffd93b1d059dd3a86c21f34283349ef2117f3aa598bb701` |
| 18 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--95a3a26c14ffc894b4f6f7cc.md) | 163 | `declaration-track:95a3a26c14ffc894b4f6f7cc1c069b85cda543f0c829e32164358e543436bacf` |
| 19 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--cc29557463cf9d2bc832d362.md) | 168 | `declaration-track:cc29557463cf9d2bc832d36238aa3797e374d17f0fbfebd5cc75cb5caf4d2f26` |
| 20 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--180bfadedf7a26e34bf031d7.md) | 171 | `declaration-track:180bfadedf7a26e34bf031d7bb897944969b5dad95bb4046f13f07d475146170` |
| 21 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--f6048ccef5b443e993bc1743.md) | 174 | `declaration-track:f6048ccef5b443e993bc174329aca35144f54d364b8962012e0270acbb3223c3` |
| 22 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--effa1213560ddd7b410bb0cd.md) | 177 | `declaration-track:effa1213560ddd7b410bb0cd858f7ca3d8c918a13946ca4a4356676abc40eccf` |
| 23 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--cb4383e4ff99ecf8af5f2576.md) | 181 | `declaration-track:cb4383e4ff99ecf8af5f25765f88c585c6bb4a91c6069ca4409bb62b15bda207` |
| 24 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--814b4c37d2b2065284ac3645.md) | 186 | `declaration-track:814b4c37d2b2065284ac3645c7e41c3d630721f6d1ed2da7a225345257fd7724` |
| 25 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--419bb80ae5b57e79da350b83.md) | 190 | `declaration-track:419bb80ae5b57e79da350b83861f9f51fd326754958cab3e7276ac2d3aa1cae3` |
| 26 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--2bb83273ffd3af657e06b01a.md) | 194 | `declaration-track:2bb83273ffd3af657e06b01a812c56c5cdd881afc8dd4d9de69469b18ab8387e` |
| 27 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--b897f83061a5a4f32fc7c1c2.md) | 199 | `declaration-track:b897f83061a5a4f32fc7c1c2333ef37a1da01f2a87428793a5dd8598114dafb5` |
| 28 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/declarations/example--ee5f4f13870d74de80338917.md) | 202 | `declaration-track:ee5f4f13870d74de80338917ff859d04ede71d832fe18affa98902b4f759c590` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
