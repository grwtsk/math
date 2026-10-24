# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PowerSeries.Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e13cc2ad00678c03bcf37147c17ff0a4599643cd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e13cc2ad00678c03bcf37147c17ff0a4599643cd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries.Multiplication` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.NoZeroDivisors` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.PWO` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/topowerseries--64b2b25e733f395cf59d32ce.md) | 58 | `declaration-track:64b2b25e733f395cf59d32ce817dbc00fed7595e2c4a2be93273f22d7339d873` |
| 2 | `theorem` | [coeff_toPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/coeff-topowerseries--86dd818c5341728c185a8cd3.md) | 82 | `result-track:86dd818c5341728c185a8cd3955d61ddd81e228ac62631912f1a2921d26a6045` |
| 3 | `theorem` | [coeff_toPowerSeries_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/coeff-topowerseries-symm--a73a176be987a330b61a964d.md) | 86 | `result-track:a73a176be987a330b61a964d1383c2cda776bb8a03c6df20b9a4b250d4684e3d` |
| 4 | `def` | [ofPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/ofpowerseries--5b0d496a3ca3726537b541f6.md) | 93 | `declaration-track:5b0d496a3ca3726537b541f6f68dbd032d78dca60c0f0f88202ba7fdfcd64fb1` |
| 5 | `theorem` | [ofPowerSeries_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/ofpowerseries-injective--07940824393b79b26fb5a0d0.md) | 100 | `result-track:07940824393b79b26fb5a0d0e23039249059a208cb7b10d6ff04911af446a4fe` |
| 6 | `theorem` | [ofPowerSeries_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/ofpowerseries-apply--ca0f2d30341438cd83af53b3.md) | 105 | `result-track:ca0f2d30341438cd83af53b3e356bb94a769ae7007a88e9926e7443346aa9e57` |
| 7 | `theorem` | [ofPowerSeries_apply_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/ofpowerseries-apply-coeff--0a33f3362afa5ca8a6de7217.md) | 114 | `result-track:0a33f3362afa5ca8a6de72172e32a4bd01fd0cfb2754d91317f47c23cf98f888` |
| 8 | `theorem` | [ofPowerSeries_C](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/ofpowerseries-c--35f776894609063893b7a7e8.md) | 118 | `result-track:35f776894609063893b7a7e8d015baae8f852c050ed2ceeea552e9cf335636fe` |
| 9 | `theorem` | [ofPowerSeries_X](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/ofpowerseries-x--aa2ba73322eaf485d15d5fe5.md) | 132 | `result-track:aa2ba73322eaf485d15d5fe546a288c3a975a545ec84f72d35f8e7824d0d5a4e` |
| 10 | `theorem` | [ofPowerSeries_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/ofpowerseries-x-pow--77b047b3a24e368e612cdd3c.md) | 144 | `result-track:77b047b3a24e368e612cdd3cd217b1dddbc582914b8d5ee24225d2e05e8c9706` |
| 11 | `def` | [toMvPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/tomvpowerseries--e9d6ba20495cb798a40c74e4.md) | 156 | `declaration-track:e9d6ba20495cb798a40c74e48e776de9e8156c9b78cf7adfac8edced10856141` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/instance--90570ce246ad21129ba6ba96.md) | 186 | `declaration-track:90570ce246ad21129ba6ba960e5aa6432a06cb2060f15be6fad9240dd83c5b57` |
| 13 | `theorem` | [coeff_toMvPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/coeff-tomvpowerseries--28c123ef4db459dd59f35c5f.md) | 189 | `result-track:28c123ef4db459dd59f35c5fbbf000ca6389334c1170f04983c9445a37f25792` |
| 14 | `theorem` | [coeff_toMvPowerSeries_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/coeff-tomvpowerseries-symm--6b2b3deff3fd5dfba1857dc9.md) | 193 | `result-track:6b2b3deff3fd5dfba1857dc9e518a5a2be2c5d048ce055046691ab2d46dadff2` |
| 15 | `def` | [toPowerSeriesAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/topowerseriesalg--3b7db18c94c0221f9f1c9397.md) | 205 | `declaration-track:3b7db18c94c0221f9f1c9397949e5114f59db8a5c3fd48da7de089f16fc7b61b` |
| 16 | `def` | [ofPowerSeriesAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/ofpowerseriesalg--863393ef26be53f461074a30.md) | 216 | `declaration-track:863393ef26be53f461074a306ef00041476131c530bc77b48e4b94cacf03b831` |
| 17 | `instance` | [powerSeriesAlgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/powerseriesalgebra--ad27816ae063f301b4f2be2b.md) | 221 | `declaration-track:ad27816ae063f301b4f2be2b0b052fff351a19d7579d3243eac85a07c93f5561` |
| 18 | `theorem` | [algebraMap_apply'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/algebramap-apply--a7779fdcdca609893d03c115.md) | 228 | `result-track:a7779fdcdca609893d03c1152011c8ed8819d351437b7f40f297091e9591dae3` |
| 19 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.ToPowerSeries.Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.Polynomial.algebraMap_hahnSeries_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/root-grwtsk-algebra-commutativealgebra-topowerseries-variant1055c050cc86--e167c2f3290a213308b6b2f0.md) | 233 | `result-track:e167c2f3290a213308b6b2f0a77afe01c7f654512e15cb32a7137187c88b7cd3` |
| 20 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.ToPowerSeries.Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.Polynomial.algebraMap_hahnSeries_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant54c05141b80b5595f024bd53822244411e4bfc56c2bf441c3ba80e9cb575108e.lean/declarations/root-grwtsk-algebra-commutativealgebra-topowerseries-variant1055c050cc86--aaab9f718ecb16763d01a02b.md) | 237 | `result-track:aaab9f718ecb16763d01a02b1c1982047811a8a1c3a5a2e41b1c3880edb1b2bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
