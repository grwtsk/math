# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyOddSplitReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cfb369566b977c643a8c676df4812d5be08fc73",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cfb369566b977c643a8c676df4812d5be08fc73`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.TangentPolynomialSplitting`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyGlobalMinimalDiscriminant`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [localMod](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/localmod--2d2a13d337647b118cea2545.md) | 25 | `declaration-track:2d2a13d337647b118cea2545bdb812430105bb1356f9b8a84bae41fe64e2d3ca` |
| 2 | `theorem` | [localMod_int](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/localmod-int--fb2f33b048f3de67c0927c11.md) | 36 | `result-track:fb2f33b048f3de67c0927c11b15ccab50e8daf1471cf96594160cac2403d64e3` |
| 3 | `instance` | [localMod_isLocalHom](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/localmod-islocalhom--5bf311d2f7d9fbc16236d179.md) | 40 | `declaration-track:5bf311d2f7d9fbc16236d179663a17524fa6500beda6b8aeeac66f81e7cbdc43` |
| 4 | `def` | [residueEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/residueequiv--cd91b4e5218f0167b12a442e.md) | 60 | `declaration-track:cd91b4e5218f0167b12a442e29e8f0417dfdf13d5a3c8e92b2c1a04d7a7c8921` |
| 5 | `theorem` | [residueEquiv_int](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/residueequiv-int--82be16e6358ea91f3c53aabe.md) | 68 | `result-track:82be16e6358ea91f3c53aabe341ef3c9b71bee564fdb6596cda38a303e66ae7c` |
| 6 | `theorem` | [split_iff_residuePolynomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/split-iff-residuepolynomial--3ebbe56c1bf0b533f09bfb85.md) | 73 | `result-track:3ebbe56c1bf0b533f09bfb85befaa44077fcd2dcdcd1a5adadf3efa8a4e4ee5e` |
| 7 | `theorem` | [residue_tangent_polynomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/residue-tangent-polynomial--06fe95e21e4c25368a80098a.md) | 95 | `result-track:06fe95e21e4c25368a80098acc038340e3d46ff5e13ce893e06a56f83513957d` |
| 8 | `theorem` | [tangent_polynomial_of_dvd_a](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/tangent-polynomial-of-dvd-a--f2ee94ff3220259bc0a2384a.md) | 105 | `result-track:f2ee94ff3220259bc0a2384a8d0432e274ed7a0d301560e031fe9f6204a90024` |
| 9 | `theorem` | [tangent_polynomial_of_dvd_b](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/tangent-polynomial-of-dvd-b--e95d38fbdbb958550eb39782.md) | 116 | `result-track:e95d38fbdbb958550eb39782d064eb18aff3983b334dd179184ad4f229a8ea10` |
| 10 | `theorem` | [residue_b_of_dvd_c](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/residue-b-of-dvd-c--99157244d2af9bab5204ac1d.md) | 127 | `result-track:99157244d2af9bab5204ac1db14eb8a41e3c09d65fa02cb37c26fa94f89c390b` |
| 11 | `theorem` | [tangent_polynomial_of_dvd_c](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/tangent-polynomial-of-dvd-c--9f4b047c295d5ebc26062b3a.md) | 135 | `result-track:9f4b047c295d5ebc26062b3a2986019e9e69c32e1a1dd84bea3e540b6e60c9f7` |
| 12 | `theorem` | [split_iff_of_dvd_a](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/split-iff-of-dvd-a--5024d3ae5f38b4cad234b06e.md) | 144 | `result-track:5024d3ae5f38b4cad234b06e20541935b980617c3150aaad372472b5565a53b9` |
| 13 | `theorem` | [split_iff_of_dvd_b](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/split-iff-of-dvd-b--850aa9332f1bf47bc576990b.md) | 156 | `result-track:850aa9332f1bf47bc576990be142b2eb588c28f8ac8202b208e720cfc68d64f2` |
| 14 | `theorem` | [split_iff_of_dvd_c](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/split-iff-of-dvd-c--74d5c80a06c8ea40cd4d4f6b.md) | 168 | `result-track:74d5c80a06c8ea40cd4d4f6bb313a04f6421e6a569a10a869ffd8ae9fd320d5d` |
| 15 | `theorem` | [split_at_odd_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/split-at-odd-iff--a94a5273160d7c375f99a634.md) | 181 | `result-track:a94a5273160d7c375f99a634fc10486c45ff1fc6d5fda15e0cef9d054e101014` |
| 16 | `theorem` | [singular_at_origin_of_dvd_a](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/singular-at-origin-of-dvd-a--080ef91dc6f4a67f8b088c2b.md) | 202 | `result-track:080ef91dc6f4a67f8b088c2bc96408bcca01c003abf111ae07603f8aad2502ae` |
| 17 | `theorem` | [singular_at_origin_of_dvd_b](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/singular-at-origin-of-dvd-b--a0b6585f0a7d695634460ffc.md) | 212 | `result-track:a0b6585f0a7d695634460ffc59f7f292de91aefb914f41db9ea8529e8167dbee` |
| 18 | `theorem` | [singular_at_a_of_dvd_c](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/singular-at-a-of-dvd-c--5ad0b0d4025979267b4b169a.md) | 222 | `result-track:5ad0b0d4025979267b4b169a6640ca128a98d643bddc6ea49748672a83763037` |
| 19 | `theorem` | [expansion_of_dvd_a](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/expansion-of-dvd-a--73d21ace86f4070b0f0b02c4.md) | 234 | `result-track:73d21ace86f4070b0f0b02c4da4dc4b003478cf97c36b819dd9a336748c02eff` |
| 20 | `theorem` | [expansion_of_dvd_b](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/expansion-of-dvd-b--14ac1f38d03f652f2b734dac.md) | 242 | `result-track:14ac1f38d03f652f2b734dac46e04ea17f164e6a80e1006b103189493033e587` |
| 21 | `theorem` | [expansion_of_dvd_c](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/declarations/expansion-of-dvd-c--524379768afbf4d0255de70d.md) | 250 | `result-track:524379768afbf4d0255de70d1727c89869871680616147860d188f961f4d62b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
