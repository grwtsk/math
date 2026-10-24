# Verification target: GRWTSK.Algebra.LinearAlgebra.ULift.Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbcb9eae8a531123740efa3b49cdbf94d0703b31",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbcb9eae8a531123740efa3b49cdbf94d0703b31`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smulLeft](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/smulleft--cfba7b4bf4b65463429cca89.md) | 29 | `declaration-track:cfba7b4bf4b65463429cca89550f8d957a0d875de03431b08fcb821e7c863b96` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/smul-def--78353ebc8fbdafc81d2ba4d3.md) | 33 | `result-track:78353ebc8fbdafc81d2ba4d3d3206f30770e08e662565e0e5fc20226d945e634` |
| 3 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/isscalartower--ba5f9c90c0393fa7081c9eba.md) | 36 | `declaration-track:ba5f9c90c0393fa7081c9ebaeb6ab0edaaab9cbe54f152fe574dce5657904a4e` |
| 4 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/isscalartower--2a21228c61d4e51694add5c9.md) | 40 | `declaration-track:2a21228c61d4e51694add5c9e755d3e3c7b1e8a7ee63ccd432a6c7dcf5d8bc6d` |
| 5 | `instance` | [isScalarTower''](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/isscalartower--4df58867c64ac837098d142f.md) | 44 | `declaration-track:4df58867c64ac837098d142f8c813a7f323e01261a91cf932fbf33647cda13da` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/instance--99d26b562f411968c68153d5.md) | 48 | `declaration-track:99d26b562f411968c68153d51192f78e5858dfd0d3a928b027199ea5e81b3013` |
| 7 | `instance` | [mulAction](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/mulaction--3d443ff2008c68772c79847d.md) | 52 | `declaration-track:3d443ff2008c68772c79847d9b52cd1bf1f657d8c2f5a8e718172bc2483d9673` |
| 8 | `instance` | [mulAction'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/mulaction--160c6ef20c43ff6ba4d435a5.md) | 58 | `declaration-track:160c6ef20c43ff6ba4d435a5fee5789615845e6359ffcc56c8dc1c117395b5e1` |
| 9 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/smulzeroclass--2da1b90ccc0df422825d5d97.md) | 63 | `declaration-track:2da1b90ccc0df422825d5d972b9615f24bf48bcdf5238a4177c542b17334ad8f` |
| 10 | `instance` | [smulZeroClass'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/smulzeroclass--9e7f0935ada7de6eebd53eb9.md) | 66 | `declaration-track:9e7f0935ada7de6eebd53eb9e70e4b7fcbb99e9d077878725eb98fbc480369d6` |
| 11 | `instance` | [distribSMul](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/distribsmul--3f77cbcc943fe68254f58f69.md) | 69 | `declaration-track:3f77cbcc943fe68254f58f69282f365903c8ae098e0f084623e4cd6bc074fe15` |
| 12 | `instance` | [distribSMul'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/distribsmul--a8f75e4651ac281d747fc3d1.md) | 72 | `declaration-track:a8f75e4651ac281d747fc3d16adf04de70ae57c6b6cf11c1ce784dbbf7cc741b` |
| 13 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/distribmulaction--13f2299674d1c89f80345adb.md) | 77 | `declaration-track:13f2299674d1c89f80345adbe7761e1bc1d1d102e5bd6120ecea49706ade1c37` |
| 14 | `instance` | [distribMulAction'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/distribmulaction--a1bc783441c55df19d08485d.md) | 81 | `declaration-track:a1bc783441c55df19d08485d8b990f34813b41a762e93d3158cd26f2b207edf5` |
| 15 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/muldistribmulaction--ce21879f2353fd5c2735a4e2.md) | 85 | `declaration-track:ce21879f2353fd5c2735a4e2f2f6f518405a86310e415382327ffcd3f04a8e14` |
| 16 | `instance` | [mulDistribMulAction'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/muldistribmulaction--88d37e7f44a81082c6fcb183.md) | 90 | `declaration-track:88d37e7f44a81082c6fcb1831e4688173d4ffcd9a6b45e1395b3b4acf409cff9` |
| 17 | `instance` | [smulWithZero](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/smulwithzero--45faf27d967c75374ff3153d.md) | 100 | `declaration-track:45faf27d967c75374ff3153d6f0edb0e4584036fda473667b30b746d3297f119` |
| 18 | `instance` | [smulWithZero'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/smulwithzero--b89bb27c717849c44dfccefc.md) | 105 | `declaration-track:b89bb27c717849c44dfccefc3e6ec545d953add9b6bb6f25d7e1820240e36b9b` |
| 19 | `instance` | [mulActionWithZero](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/mulactionwithzero--e0b8ad5d5cacafad9d437fb3.md) | 109 | `declaration-track:e0b8ad5d5cacafad9d437fb32ef3eed76c179f932645df517821c1ea54ddad3d` |
| 20 | `instance` | [mulActionWithZero'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/mulactionwithzero--17098fcadc128293b7158f8d.md) | 115 | `declaration-track:17098fcadc128293b7158f8d72af617344306d5bf9d633fe93b37b9c963e04c6` |
| 21 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/module--8a6e1e92b73ed1f11deccf2f.md) | 121 | `declaration-track:8a6e1e92b73ed1f11deccf2f28e70d0056402a1c1af0a7e96201ca72f10dc8db` |
| 22 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/module--8df693b89fd26fea9b677a34.md) | 128 | `declaration-track:8df693b89fd26fea9b677a34b0c4bfc4691ce3dd75de1626d69c3e028f4836ac` |
| 23 | `def` | [moduleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/declarations/moduleequiv--00c4dd86bd537e1abba2fa52.md) | 139 | `declaration-track:00c4dd86bd537e1abba2fa525c89498c137e8b08668aa15013b3a075f9f2f29c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
