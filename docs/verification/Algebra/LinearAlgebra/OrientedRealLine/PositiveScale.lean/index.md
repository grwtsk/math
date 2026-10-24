# Verification target: GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4c5cba89981ecebfd3506653fd07c766a7dca31",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/OrientedRealLine/PositiveScale.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4c5cba89981ecebfd3506653fd07c766a7dca31`.

Source path: `GRWTSK/LinearAlgebra/OrientedRealLine/PositiveScale.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/OrientedRealLine/PositiveScale.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Finrank` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Line](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/line--6ba8f3627d0eb0ba909e9bd8.md) | 26 | `declaration-track:6ba8f3627d0eb0ba909e9bd8ab8eb782d50e224fdf449c7a899c78ed7b5d875c` |
| 2 | `theorem` | [finrank_one](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/finrank-one--a3165af468432b7ede0fe00d.md) | 34 | `result-track:a3165af468432b7ede0fe00d1133e5c5bf26afc4b50daa793a676f6c3cc67345` |
| 3 | `def` | [CoordLE](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/coordle--45dc7d591bd52a7dcc7bcb18.md) | 39 | `declaration-track:45dc7d591bd52a7dcc7bcb18b23ef17abde53ada34915bd7f8b01d5d1be797fb` |
| 4 | `structure` | [PositiveScaleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/positivescaleequiv--a105c4f326d55b2bee6d7b0f.md) | 42 | `declaration-track:a105c4f326d55b2bee6d7b0fe0a6c88ef89f0dc237fabd2de094d835bc2fefbf` |
| 5 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/refl--c9a5e6bca5922d036cf3e395.md) | 52 | `declaration-track:c9a5e6bca5922d036cf3e3950063f04605075d8191423b19f43db9f6ad3b702b` |
| 6 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/trans--7bbcdd5fb38bcfd7419ba440.md) | 59 | `declaration-track:7bbcdd5fb38bcfd7419ba440aa17367e2b9d67de26153a0846a733c4dcde50c8` |
| 7 | `theorem` | [scale_trans](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/scale-trans--9c57abe505ac0aecc52d6f29.md) | 69 | `result-track:9c57abe505ac0aecc52d6f2900ca192102a46026140995d9ac5f9a2a82b72100` |
| 8 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/symm--7f843ce2dbdf96d74313ad9d.md) | 72 | `declaration-track:7f843ce2dbdf96d74313ad9d9e103fb52a4ea0f3cb77c85d735dd75d0966b7f8` |
| 9 | `theorem` | [scale_symm](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/scale-symm--acc948642fe758aa7a283e59.md) | 82 | `result-track:acc948642fe758aa7a283e5948b967974307b58b556c86bc0601f6c44220750a` |
| 10 | `theorem` | [preserves_order](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/preserves-order--04ae6b19aeb60542fb10c608.md) | 84 | `result-track:04ae6b19aeb60542fb10c608ac635966bb3bd4c82d54efe2ecdd72eee70520db` |
| 11 | `theorem` | [scale_eq_of_linearEquiv_eq](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/scale-eq-of-linearequiv-eq--085ef1fc0ee67746296c905e.md) | 89 | `result-track:085ef1fc0ee67746296c905edda1cb165a098e5c4952442279dff7f9d3daa2a0` |
| 12 | `theorem` | [scale_eq_one_of_identity](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/scale-eq-one-of-identity--1bb2eeb1d5a3d3137fbc7cbb.md) | 96 | `result-track:1bb2eeb1d5a3d3137fbc7cbb2c932ae7b0d894f428be222ae97e5d160f5cbe9b` |
| 13 | `def` | [realLine](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/realline--ab5a0ee84b74747c8b6f5ed6.md) | 101 | `declaration-track:ab5a0ee84b74747c8b6f5ed6a3f72aea4cd1f2f257e64d4fa918dfaef32d2f31` |
| 14 | `def` | [dilation](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/dilation--7a52db0c67fa4aa097d386b0.md) | 108 | `declaration-track:7a52db0c67fa4aa097d386b0bcd67deff0bea09acb14675d5ca759fd24dd7de8` |
| 15 | `theorem` | [dilation_scale](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/dilation-scale--797e3891b9e42535b2c6f97f.md) | 114 | `result-track:797e3891b9e42535b2c6f97ff9fdea6505265899a1ca298aa129feb4e8c3c815` |
| 16 | `structure` | [Chain](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/chain--078bd6fe37761fa82455c1e1.md) | 121 | `declaration-track:078bd6fe37761fa82455c1e15b550405396a2d4c6ac401524bcab573641f62f7` |
| 17 | `def` | [transport](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/transport--a40c64a4d4c6bb8757bc95ef.md) | 127 | `declaration-track:a40c64a4d4c6bb8757bc95efc9a08d6ce174b19d5c9e10678f574d70fff7ced7` |
| 18 | `theorem` | [scale_transport](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/scale-transport--ce7d10a69857d3b4209a9f4f.md) | 132 | `result-track:ce7d10a69857d3b4209a9f4f4c2c2a5d39ba24b316ae5f0606592d164eb7a77f` |
| 19 | `theorem` | [cycle_scale](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/cycle-scale--7ae8ceeb3719c4c690213f14.md) | 141 | `result-track:7ae8ceeb3719c4c690213f14bb2680f8fe671601e994d2cc08c974751395f64d` |
| 20 | `structure` | [ComparisonCocycle](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/comparisoncocycle--8654380341ce41b81cfc5953.md) | 152 | `declaration-track:8654380341ce41b81cfc5953ec48862466ecd65bbca2a8eefe6d0c72c0cf28e5` |
| 21 | `theorem` | [scale_cocycle](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/scale-cocycle--e0f9ff4eaff9e4b8ec037a85.md) | 159 | `result-track:e0f9ff4eaff9e4b8ec037a859e561ce04cbb1d711f6f3c5f6503ffbbe8c00eed` |
| 22 | `theorem` | [triangle_scale](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/triangle-scale--596db65203580ea39b6545ac.md) | 164 | `result-track:596db65203580ea39b6545ac83b02263d01cf90692b5f4e376c00c3d648b848e` |
| 23 | `structure` | [CommonComparison](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/commoncomparison--b6dcfa329f8bfa4a37b3aa8c.md) | 173 | `declaration-track:b6dcfa329f8bfa4a37b3aa8caa7eaee1975c2d2fe8c7075c4a54878cae0e95a1` |
| 24 | `def` | [toCocycle](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/tococycle--c7a22f1751ad7485f15ad2ce.md) | 180 | `declaration-track:c7a22f1751ad7485f15ad2ce4a6a267142f2363ef4b0683e95806efd16cb2ee8` |
| 25 | `theorem` | [toCocycle_scale](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/declarations/tococycle-scale--8a16860f3363e061f843ea1d.md) | 192 | `result-track:8a16860f3363e061f843ea1de463314ffc309d45ba6700eb7c8e16ed365c30b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
