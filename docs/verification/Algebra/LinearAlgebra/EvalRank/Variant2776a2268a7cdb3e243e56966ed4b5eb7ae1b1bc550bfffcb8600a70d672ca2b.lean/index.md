# Verification target: GRWTSK.Algebra.LinearAlgebra.EvalRank.Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "827baf59e6c11c1310044232803cf83fb0dd32d1",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `827baf59e6c11c1310044232803cf83fb0dd32d1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormRank` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.ZMod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Basic.Real.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Cartan.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.GaussianInt` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Echelon.Zsqrtd` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.NatFib` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.NatSqrt` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--77f87246324223c44a6b9525.md) | 26 | `declaration-track:77f87246324223c44a6b9525f51c453ed38984e4fb1605a2cd4c110fe9d2cbe0` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--e28835cc30a30f507cb16284.md) | 30 | `declaration-track:e28835cc30a30f507cb16284c143de1e5e45e1bafefbb2c379c97ab1b4c1b08b` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--d9f95680a14588950a406592.md) | 34 | `declaration-track:d9f95680a14588950a4065926f85d9b0fb77c18ac62166cfc07a192fe689cba8` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--a179d2d3bd11c91e2b7d423c.md) | 40 | `declaration-track:a179d2d3bd11c91e2b7d423cfbcdca6a4213b0e47b115b2b06f9c4de96cf7584` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--450314c5ab00b4d31c9c2e5d.md) | 44 | `declaration-track:450314c5ab00b4d31c9c2e5dcbe8b54dd920538bffd698e0d0151efc8aab81d2` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--d37fdcee679fc221b370cd78.md) | 48 | `declaration-track:d37fdcee679fc221b370cd789f1adcd1e8b2ff41d1e59a101125266f73839976` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--e01b70f490b91ed98f19c626.md) | 52 | `declaration-track:e01b70f490b91ed98f19c62637bd303b23bb7bac9620712f8ec44109fc741884` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--4735f359927d0242ef525e51.md) | 57 | `declaration-track:4735f359927d0242ef525e511eba2144d62d07c7b36ab03aab7be5e620814053` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--cbb2d4d934b622265821d552.md) | 62 | `declaration-track:cbb2d4d934b622265821d5527e74c352cc53031e1a819e48ce207c81da297a92` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--0d61c0ab2de15841c5ee3c48.md) | 70 | `declaration-track:0d61c0ab2de15841c5ee3c488a55c6d771309a1c93c7d482febbb0e045e2ef95` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--eb2a28ac63ad289f94e70e61.md) | 77 | `declaration-track:eb2a28ac63ad289f94e70e6178400e35ccb510bbbc1e5200528e8a8b0186625e` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--21ed759153cfe16b90fcae13.md) | 82 | `declaration-track:21ed759153cfe16b90fcae13a220ac30ebbb33ea6a86156cd8ff74c17ab95015` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--971622aeea24a8a385edc059.md) | 88 | `declaration-track:971622aeea24a8a385edc059d42648154ae7ff09f19820f32d6ebbbb91f6da8b` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--5edfa3195f8c8027b9a0e391.md) | 94 | `declaration-track:5edfa3195f8c8027b9a0e3915df0c9ace7a478bb24c89d31c35908c8b95dae6a` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--4dfcc49b2172cb2b21f25ea4.md) | 97 | `declaration-track:4dfcc49b2172cb2b21f25ea4e0744e685e0b9b3a1bf4449735e727e0597b9d94` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--bcf1ed7ef71f53451e794d28.md) | 102 | `declaration-track:bcf1ed7ef71f53451e794d286f4672e393e8983883b9a0b28c13c7e95629d272` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--ecd43551702546571ffc4c22.md) | 105 | `declaration-track:ecd43551702546571ffc4c2273892a5893dda807f84a9d54247ce6d7308c4f70` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--839c1c68ad4a7291189ea22c.md) | 113 | `declaration-track:839c1c68ad4a7291189ea22ce9f36cea4def61788146ad16b4e5dbe5d20d88e0` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/instance--974559f37c4515b3a951f224.md) | 117 | `declaration-track:974559f37c4515b3a951f224936b9a1f781cd4c13931df1a4ab6cde033a4c1f9` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--329c20b4e60d082d06784f78.md) | 119 | `declaration-track:329c20b4e60d082d06784f780f884d84638a8d21070091b8966a19daad9d6e4a` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--b52e0f032b01ddd20903abaa.md) | 122 | `declaration-track:b52e0f032b01ddd20903abaa4286d9080a7769666cadff31308461bb9dbf23e4` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--260882af609fcb58eac0fff8.md) | 125 | `declaration-track:260882af609fcb58eac0fff8f86ef30b34c7223795146154831be9457d6e03a0` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--0fb76ae998d8da181499180a.md) | 128 | `declaration-track:0fb76ae998d8da181499180aee8728d7fa610fee4b1108005a68b8da1658b55d` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--e7d6cf422d41f76a3885c892.md) | 131 | `declaration-track:e7d6cf422d41f76a3885c8925a900479f359fe696c6b8e1f3b47fe04b3555eff` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--e4a043c89a3cf66a14dd00f9.md) | 134 | `declaration-track:e4a043c89a3cf66a14dd00f9d14458b40976c0cc1b4cbe426603ce767c5f7322` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--a516b4fd616a7f991fc1ea09.md) | 137 | `declaration-track:a516b4fd616a7f991fc1ea09d332ba82ff178dac8be46ace8f9653709caed604` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--8d2170dc44fddb0c977786be.md) | 140 | `declaration-track:8d2170dc44fddb0c977786be038b4e9b35d103ffac6a0994725ee5981066fbf0` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--4343afeff8efbffcfc203bd6.md) | 145 | `declaration-track:4343afeff8efbffcfc203bd6e172516c72aae85c8f913ac73afa31187e901a7e` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--ca6bba5235ce9bc6403f3398.md) | 151 | `declaration-track:ca6bba5235ce9bc6403f33989c4cfb46c543b36cc0275665a03f486344b7654a` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/instance--1d6921938cfcdaad65d60206.md) | 157 | `declaration-track:1d6921938cfcdaad65d6020629ff76fa6d3cc19db640faf08e6baeb803016685` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/instance--fb215279d8c2ebbc49b43d2c.md) | 161 | `declaration-track:fb215279d8c2ebbc49b43d2c13395cb08ed8b6cbaa70dbf9e6009d811a7eb9fe` |
| 32 | `theorem` | [mul_def](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/mul-def--74c7aa7837d27ba55b10b26f.md) | 167 | `result-track:74c7aa7837d27ba55b10b26f489d4ca834cabd8d1f2ee34120ff632494b12286` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--c8b35d5c68eea51af2185e30.md) | 174 | `declaration-track:c8b35d5c68eea51af2185e3020e7aeca47ba9b7bc0d6265501b114c3dd7d0b93` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--a060ed0ab64edd24afc00960.md) | 189 | `declaration-track:a060ed0ab64edd24afc009608d1fbc7371e39a769fb6306cc9a41a86782a53d4` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--8fad2be7120483fbb8034629.md) | 196 | `declaration-track:8fad2be7120483fbb803462986e36fb778dba209fcce2cbd89b8f05ce8f14e4a` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--011467492275e53f5ec9659b.md) | 202 | `declaration-track:011467492275e53f5ec9659b661716ce58f968e0594e1775c6da4a3e72a609d9` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--32c996f8a57dfbe1a2aaea43.md) | 210 | `declaration-track:32c996f8a57dfbe1a2aaea431d220a7ae73c56f4e38b7ba5598cd52c3decec19` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--68d272dfc9e4ee93f267a7fc.md) | 237 | `declaration-track:68d272dfc9e4ee93f267a7fc903bb7d3b45fdb1eb45dcf2175442f0a619193dd` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--b62c92b52845ee88ea78699d.md) | 247 | `declaration-track:b62c92b52845ee88ea78699dd781c34cbfc3fd2edf1d3a1fefc3666ef5563636` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--8f3555a88b8b0139cb4e34ee.md) | 259 | `declaration-track:8f3555a88b8b0139cb4e34eef5c139cd3ef5e98eb4725fac142e3ab65a5f0707` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--5afa3273ad32ca3ae1a8324f.md) | 269 | `declaration-track:5afa3273ad32ca3ae1a8324f7e536498a7307dde3b6a1a93a67ba93926c9e6fe` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--da2298a08089ec1df68dabc8.md) | 285 | `declaration-track:da2298a08089ec1df68dabc8f1a0ba24f8b341a72936c99a56bf573bc3ca4c7d` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--27d93a425cb93722347c553a.md) | 298 | `declaration-track:27d93a425cb93722347c553a71a67c8475c3cf948806e6e6e5d49a1abf88c703` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--86eb1edbb189d3b1ffac72ca.md) | 309 | `declaration-track:86eb1edbb189d3b1ffac72caeeb361f6b852450e5742163f54c7b582b43eba54` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/EvalRank/Variant2776a2268a7cdb3e243e56966ed4b5eb7ae1b1bc550bfffcb8600a70d672ca2b.lean/declarations/example--f14bac59da961fe37dc51682.md) | 319 | `declaration-track:f14bac59da961fe37dc51682f66ab90bf95f2f6e5a94b51b1c00783c318ca5d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
