# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZetaZeroFreeHalfPlaneAdapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b996c1af5d4ed31484a7a1765ebb92bcde21159",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b996c1af5d4ed31484a7a1765ebb92bcde21159`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroFreeHalfPlaneCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RiemannZetaZeroFreeRightHalfPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/riemannzetazerofreerighthalfplane--369c0148bc95a5e271c28fb8.md) | 31 | `declaration-track:369c0148bc95a5e271c28fb80cf64a2036416272dccc4e634e2d3ae20de445d2` |
| 2 | `theorem` | [riemannZetaZeroFreeRightHalfPlane_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/riemannzetazerofreerighthalfplane-mono--0ec2ed7d542f00d7b005321e.md) | 35 | `result-track:0ec2ed7d542f00d7b005321e66381b0238ffcba963e8d9bf3b7dd4885ad85161` |
| 3 | `theorem` | [nontrivialZeroFreeRightHalfPlane_of_riemannZeta](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/nontrivialzerofreerighthalfplane-of-riemannzeta--48519e30bb329077da80487c.md) | 44 | `result-track:48519e30bb329077da80487ca56b88fbb7984a112219d5c9f7f96377421ffc58` |
| 4 | `theorem` | [negativeEven_realPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/negativeeven-realpart--c8ac27b21d3da869022fdbb4.md) | 52 | `result-track:c8ac27b21d3da869022fdbb400569ecca0e06b63f0a1e205241b705a16b9af92` |
| 5 | `theorem` | [negativeEven_realPart_nonpos](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/negativeeven-realpart-nonpos--47e8f0b79d89c6753306d6f0.md) | 58 | `result-track:47e8f0b79d89c6753306d6f0671afabc9c8930a02fce8a59a91a7bcffc30fef3` |
| 6 | `theorem` | [riemannZetaZeroFreeRightHalfPlane_of_nontrivial](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/riemannzetazerofreerighthalfplane-of-nontrivial--3f0cdf45647d8ce5de641a1e.md) | 70 | `result-track:3f0cdf45647d8ce5de641a1e21e4209f678c4735b36e39cdd62f1af6f33a8a18` |
| 7 | `theorem` | [riemannZetaZeroFreeRightHalfPlane_iff_nontrivial](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/riemannzetazerofreerighthalfplane-iff-nontrivial--c3b82295be528a6604d2fd96.md) | 86 | `result-track:c3b82295be528a6604d2fd96e71ec1d67914418adc350e89923898ff8f7b253d` |
| 8 | `theorem` | [riemannZetaZeroFreeRightHalfPlane_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/riemannzetazerofreerighthalfplane-one--b4311cf934b227b19407e1de.md) | 96 | `result-track:b4311cf934b227b19407e1decd599d8dc50db90439b6676d457306ae9ee45d6b` |
| 9 | `theorem` | [riemannZetaZeroFreeRightHalfPlane_of_one_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/riemannzetazerofreerighthalfplane-of-one-le--6185637ce4a7614e13075d67.md) | 103 | `result-track:6185637ce4a7614e13075d67f0f5959368c180f2872b58852c73dc2e483f07f5` |
| 10 | `theorem` | [riemannZetaZeroFreeRightHalfPlane_half_iff_riemannHypothesis](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/riemannzetazerofreerighthalfplane-half-iff-riemannhypothesis--60709ef395f2f72a9b7bc03a.md) | 112 | `result-track:60709ef395f2f72a9b7bc03ac64d9372ae1b9b7d849252ee2e6cebb83cf09ef0` |
| 11 | `theorem` | [Target.statement_iff_riemannZetaZeroFreeRightHalfPlane_half](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/target-statement-iff-riemannzetazerofreerighthalfplane-half--12b0e3b9c64b720c500c1920.md) | 120 | `result-track:12b0e3b9c64b720c500c1920c4ab41dd2827ad63ee0e3d6a8ff792090ca61c17` |
| 12 | `theorem` | [sevenEighths_lt_elevenTwelfths](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/seveneighths-lt-eleventwelfths--14452bedd9e8b3e10697ebd5.md) | 128 | `result-track:14452bedd9e8b3e10697ebd5ceac48964482d0273d1369af1cacb446ec3de3c3` |
| 13 | `theorem` | [riemannZetaZeroFreeRightHalfPlane_sevenEighths_to_elevenTwelfths](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/riemannzetazerofreerighthalfplane-seveneighths-to-eleventwelfths--8daf41bb1fbe53fba622450d.md) | 133 | `result-track:8daf41bb1fbe53fba622450df8e2dbd454ac0aaa0c6d75ad26e5e9aba7002a78` |
| 14 | `theorem` | [half_lt_sevenEighths](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/half-lt-seveneighths--afd19bcd1ace46feecce8258.md) | 140 | `result-track:afd19bcd1ace46feecce825833bcfd5a1be2684c9c7b7640be7a38fb7e6ad436` |
| 15 | `theorem` | [half_lt_elevenTwelfths](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/declarations/half-lt-eleventwelfths--3c6fb6d77a67fa48e79d48e7.md) | 145 | `result-track:3c6fb6d77a67fa48e79d48e7c3731665260bc46f7762274157dbd23c3d000bfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
