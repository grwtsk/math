# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PowerSeries.Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6fd78b79602e68bf8a99d83fba6e25671361fc2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6fd78b79602e68bf8a99d83fba6e25671361fc2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries.Multiplication` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.NoZeroDivisors` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.PWO` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/topowerseries--b675395ccd9d19da4107614b.md) | 50 | `declaration-track:b675395ccd9d19da4107614be1f3c4a0335775137b3d66a280799a284d9e4e06` |
| 2 | `theorem` | [coeff_toPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/coeff-topowerseries--1938ebda25fb05dbe2914514.md) | 74 | `result-track:1938ebda25fb05dbe2914514b8e1d498b96a39ec736bfcdadab159a4510b2d10` |
| 3 | `theorem` | [coeff_toPowerSeries_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/coeff-topowerseries-symm--41dc1f114ed998202c2d01e1.md) | 78 | `result-track:41dc1f114ed998202c2d01e167ec1c5d15b614141d6d7d35e5a75f0cb00f1bbd` |
| 4 | `def` | [ofPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/ofpowerseries--bc235266b827b0bf6249e29f.md) | 85 | `declaration-track:bc235266b827b0bf6249e29fd67d0f4a44f2ce327a18b2f605afc86853e308d9` |
| 5 | `theorem` | [ofPowerSeries_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/ofpowerseries-injective--b2620f698e6bee82823f6e8d.md) | 92 | `result-track:b2620f698e6bee82823f6e8d98e9a30cf7d648415f3128ea2bddf74f280d8d06` |
| 6 | `theorem` | [ofPowerSeries_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/ofpowerseries-apply--ffffb30566d822254e23e91d.md) | 97 | `result-track:ffffb30566d822254e23e91dbd530cacbfab4f883a35a86de109fc902eec8534` |
| 7 | `theorem` | [ofPowerSeries_apply_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/ofpowerseries-apply-coeff--4c9d8d7efe7f74b191064a1f.md) | 106 | `result-track:4c9d8d7efe7f74b191064a1f6e4d7fdf116012dc66fae588a6c5322cc954d947` |
| 8 | `theorem` | [ofPowerSeries_C](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/ofpowerseries-c--69f7de664c03b76e275beb5b.md) | 110 | `result-track:69f7de664c03b76e275beb5b22ada50c27ecfd55eb273c3f183099a286205e8c` |
| 9 | `theorem` | [ofPowerSeries_X](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/ofpowerseries-x--4ba6f477084330ac51eb318f.md) | 124 | `result-track:4ba6f477084330ac51eb318f09fbbf68048011c0dccff57548ffd6cab5a9b91f` |
| 10 | `theorem` | [ofPowerSeries_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/ofpowerseries-x-pow--5bf90e623b5f221e9f09948b.md) | 136 | `result-track:5bf90e623b5f221e9f09948b8fb93cdd7aa30b0badbc71ab64d6ca612626ea0d` |
| 11 | `def` | [toMvPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/tomvpowerseries--b83cdc304d4503fc371acec8.md) | 148 | `declaration-track:b83cdc304d4503fc371acec86b11613a9a626eda35acea374232cd48a490f02d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/instance--160625fa1216e12ce44e6fe0.md) | 178 | `declaration-track:160625fa1216e12ce44e6fe04a968de7906f22cb0aa5758b6653044aa066b697` |
| 13 | `theorem` | [coeff_toMvPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/coeff-tomvpowerseries--430cff13ababc5dea0c77ab8.md) | 181 | `result-track:430cff13ababc5dea0c77ab846a698913d9560bf1055191990f6c67978614075` |
| 14 | `theorem` | [coeff_toMvPowerSeries_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/coeff-tomvpowerseries-symm--4d300b7666a4f81ebe082966.md) | 185 | `result-track:4d300b7666a4f81ebe082966335eba11f17f314ec36c2d154b74e944f9128ca3` |
| 15 | `def` | [toPowerSeriesAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/topowerseriesalg--ffc85e2830f35e4f36f65636.md) | 197 | `declaration-track:ffc85e2830f35e4f36f656361c5cff49cd9aeca621792b3a85b1c7c143852fbb` |
| 16 | `def` | [ofPowerSeriesAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/ofpowerseriesalg--a7ed2658b94859adcca1fd9b.md) | 208 | `declaration-track:a7ed2658b94859adcca1fd9b0eab5c9a3b4c7b8399e997a7fa53f563dd013081` |
| 17 | `instance` | [powerSeriesAlgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/powerseriesalgebra--d0b7f0b7707e94ea0c63f2c3.md) | 213 | `declaration-track:d0b7f0b7707e94ea0c63f2c3bc052de0e58648e5427fc680f6aa746161469dd4` |
| 18 | `theorem` | [algebraMap_apply'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/algebramap-apply--9f71358857a6aafa9f750d7d.md) | 220 | `result-track:9f71358857a6aafa9f750d7decaf7b3f64990cd4e6db96ce4951bca710450e92` |
| 19 | `theorem` | [_root_.Polynomial.algebraMap_hahnSeries_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/root-polynomial-algebramap-hahnseries-apply--888397d910482c5aaa679100.md) | 225 | `result-track:888397d910482c5aaa679100b4c7e31117f059b9d0712614a850b3c8dc4bf5be` |
| 20 | `theorem` | [_root_.Polynomial.algebraMap_hahnSeries_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/declarations/root-polynomial-algebramap-hahnseries-injective--10db26a8fe4dd86e95955f25.md) | 229 | `result-track:10db26a8fe4dd86e95955f25ff7ae3d60d39571cc6a56c46c07f8b8fa3cd6b88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
