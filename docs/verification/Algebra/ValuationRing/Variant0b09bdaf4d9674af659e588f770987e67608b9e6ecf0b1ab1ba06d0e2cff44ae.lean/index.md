# Verification target: GRWTSK.Algebra.ValuationRing.Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e8ece665efaf8d2d37fa86e246c44a78e60a49b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/index.md) · [Full source](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e8ece665efaf8d2d37fa86e246c44a78e60a49b`.

Source path: `GRWTSK/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Bezout` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Integers` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/prevaluationring--73672b4d149f68f024673d6a.md) | 58 | `declaration-track:73672b4d149f68f024673d6af8e6e4bf136a01e5c4b0ac4e7c386391057daefe` |
| 2 | `lemma` | [PreValuationRing.cond](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/prevaluationring-cond--40c7fa3a50ee3788332a922d.md) | 61 | `result-track:40c7fa3a50ee3788332a922dcdea6d7dfa6eb76dd2c5fc9d074d295ad1d1d1e0` |
| 3 | `class` | [ValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/valuationring--5d2337c080a95e7d9aae6e25.md) | 66 | `declaration-track:5d2337c080a95e7d9aae6e25f22cdb05e067c781d50c1187d0cb469e540b8579` |
| 4 | `lemma` | [ValuationRing.cond](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/valuationring-cond--a7b421faeef5f47590a20723.md) | 69 | `result-track:a7b421faeef5f47590a20723d9f3955f4701205c7fd16ced6e4fbcc3ac644380` |
| 5 | `def` | [ValueGroup](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/valuegroup--3cb73d3ff882163f6a98b00e.md) | 80 | `declaration-track:3cb73d3ff882163f6a98b00ecd402289f80700f8e4ac56739c8504db8b1fa389` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--0b8d0edc105eaa2d03549bac.md) | 82 | `declaration-track:0b8d0edc105eaa2d03549bac89d89a9e904d4a3a948f62a8c1a9372acf0ae8cb` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--4f9791aaecdd7b5b347f2bde.md) | 84 | `declaration-track:4f9791aaecdd7b5b347f2bde22f06e0957441e70f8b31fffe531bcb057696b83` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--13150eb7523f836a50a85c9a.md) | 98 | `declaration-track:13150eb7523f836a50a85c9a98e947d00afc17cada1625990c0520055c1a2e1f` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--82622fdb272037077158041f.md) | 100 | `declaration-track:82622fdb272037077158041fb93bee9d6154de30a07923085d6d8aae62684ee0` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--79e1b21160867497868b9b9c.md) | 102 | `declaration-track:79e1b21160867497868b9b9c20e1dbde115efbd79ae4d0e6d5bdd2db53d4c39c` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--b2895e37bdff1a0622afebca.md) | 113 | `declaration-track:b2895e37bdff1a0622afebcad3e0b1cc714053045ca632745b1e7eb3576e831a` |
| 12 | `theorem` | [le_total](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/le-total--fd5cf8fb3a7dc8f1925b4955.md) | 126 | `result-track:fd5cf8fb3a7dc8f1925b495533c649cc5265fe06c39012f567a1a02aced7f91b` |
| 13 | `instance` | [linearOrder](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/linearorder--07edce9475a08b2057cae92f.md) | 146 | `declaration-track:07edce9475a08b2057cae92fcc6556c2ed75b572ff5e8373229fe03995740e40` |
| 14 | `instance` | [commGroupWithZero](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/commgroupwithzero--416250b150e8f18199e34db5.md) | 165 | `declaration-track:416250b150e8f18199e34db57f9172dc38bb3fbe7b363e9046d89574c372423a` |
| 15 | `instance` | [linearOrderedCommGroupWithZero](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/linearorderedcommgroupwithzero--6873a64c909aca8ff01db5de.md) | 190 | `declaration-track:6873a64c909aca8ff01db5ded0012783f606665c2d6bc52d427f8b7c1a12803a` |
| 16 | `def` | [valuation](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/valuation--1e54e8ae15bf40143685222b.md) | 206 | `declaration-track:1e54e8ae15bf40143685222bb2a2090bea34c6e528b5fa2ed62368f714dd6675` |
| 17 | `theorem` | [mem_integer_iff](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/mem-integer-iff--cfaf541792a3fc0fbb9973e4.md) | 231 | `result-track:cfaf541792a3fc0fbb9973e455a97aa9bd9525334b8d195124fdee37e2328a93` |
| 18 | `def` | [equivInteger](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/equivinteger--b01db0d38f155927a6ddf0d7.md) | 241 | `declaration-track:b01db0d38f155927a6ddf0d7171a4b249cd25765f186dabed87b467b3c46ad7d` |
| 19 | `theorem` | [coe_equivInteger_apply](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/coe-equivinteger-apply--c9bd16ed4202fdd864dc2034.md) | 259 | `result-track:c9bd16ed4202fdd864dc20341ef237cdcaed0f94fb140432afd4689fab45e0fb` |
| 20 | `theorem` | [range_algebraMap_eq](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/range-algebramap-eq--6271d2272ebf5835f1c9339d.md) | 261 | `result-track:6271d2272ebf5835f1c9339d966d8ee96eb42dbaeb0b6ec47e9c83c0ce1a96de` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--02af5c5eafc25bd0a9d44650.md) | 270 | `declaration-track:02af5c5eafc25bd0a9d4465056c0c8942802b644617b1f743db471be0cf5dbe0` |
| 22 | `instance` | [le_total_ideal](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/le-total-ideal--460d753f2f39f9339fc3db9f.md) | 282 | `declaration-track:460d753f2f39f9339fc3db9f8b387f939b3b275f0cd1e96f497ab5ff25420e5f` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--025e7d614795c8f7c5b2d3d9.md) | 296 | `declaration-track:025e7d614795c8f7c5b2d3d9d47879cb94f81df4c6c4af28dd943e8309b4e6fd` |
| 24 | `theorem` | [_root_.GRWTSK.Algebra.PreValuationRing.Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.PreValuationRing.iff_dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/root-grwtsk-algebra-prevaluationring-variant9aa1c6f3bc29fc2251c03f1e441e--56891b9f046b58547a7edde4.md) | 309 | `result-track:56891b9f046b58547a7edde41f6214af87793b3273bbb9cca48fe72f8a1f5c6b` |
| 25 | `theorem` | [_root_.GRWTSK.Algebra.PreValuationRing.Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.PreValuationRing.iff_ideal_total](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/root-grwtsk-algebra-prevaluationring-variant9aa1c6f3bc29fc2251c03f1e441e--d99c85a643c013a27031a8fe.md) | 316 | `result-track:d99c85a643c013a27031a8fe65027f625fd9da399e7e46240dcefdfb42478abf` |
| 26 | `theorem` | [dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/dvd-total--4124ae25c20deb6383cc3f14.md) | 326 | `result-track:4124ae25c20deb6383cc3f147069c8ecbbbf4ce46d2219a0e8294eeb3b0ba6fd` |
| 27 | `theorem` | [iff_dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/iff-dvd-total--426fc78d1298ff819f0eb3e3.md) | 334 | `result-track:426fc78d1298ff819f0eb3e37b2a7794b25a6008df265212c7a406d4241310e4` |
| 28 | `theorem` | [iff_ideal_total](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/iff-ideal-total--058b6421b3cc3a49d9e95f96.md) | 338 | `result-track:058b6421b3cc3a49d9e95f9661668d42873e643a896ee36bb2ab6d7a9ed0eb29` |
| 29 | `theorem` | [unique_irreducible](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/unique-irreducible--b857d0ee055d3cf7e1d7b2b1.md) | 342 | `result-track:b857d0ee055d3cf7e1d7b2b10c38667f44b0d093176c07b12866207fc0848fb2` |
| 30 | `theorem` | [iff_isInteger_or_isInteger](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/iff-isinteger-or-isinteger--1b60541d9515baf29ba80c0c.md) | 350 | `result-track:1b60541d9515baf29ba80c0c0d35e20a210457ce73c7428448d312a120d9bb9e` |
| 31 | `theorem` | [isInteger_or_isInteger](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/isinteger-or-isinteger--1bb098b53d64dc812a3aaf85.md) | 376 | `result-track:1bb098b53d64dc812a3aaf85ed10a305de614e3ffa2aa5c0f858c830181de476` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--f8ad246426b4201858a11fe1.md) | 383 | `declaration-track:f8ad246426b4201858a11fe15d0021b672bb6b51e5eb0521b5e981acfb95badd` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--7f9c3bc90d211763f4bcc392.md) | 392 | `declaration-track:7f9c3bc90d211763f4bcc392dcb19bb4af7214815fd59c7004b01127b83cdd0f` |
| 34 | `theorem` | [iff_local_bezout_domain](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/iff-local-bezout-domain--81f64de4a9c9027fb03b2e88.md) | 409 | `result-track:81f64de4a9c9027fb03b2e889ecfd50951577bfe336ba1ffede6f33979b1ca5d` |
| 35 | `theorem` | [TFAE](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/tfae--18f5df6df4aa91735191794f.md) | 412 | `result-track:18f5df6df4aa91735191794ff5caabae7c7b633c5b5de62c5d36ee6211e2dd59` |
| 36 | `theorem` | [_root_.GRWTSK.Algebra.PreValuationRing.Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.Function.Surjective.preValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/root-grwtsk-algebra-prevaluationring-variant9aa1c6f3bc29fc2251c03f1e441e--49f862ec3ad65e26261e1a6e.md) | 425 | `result-track:49f862ec3ad65e26261e1a6e2c834bca973bc3b03aeb2f3290fce3323d8cdf86` |
| 37 | `theorem` | [_root_.GRWTSK.Algebra.PreValuationRing.Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.Function.Surjective.valuationRing](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/root-grwtsk-algebra-prevaluationring-variant9aa1c6f3bc29fc2251c03f1e441e--6cbf3b144a22b5ad473deac2.md) | 433 | `result-track:6cbf3b144a22b5ad473deac210739b4f526ab459f71e45b26bf5b091f9e3fd74` |
| 38 | `theorem` | [of_integers](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/of-integers--2deace6619bffc973e22b4cd.md) | 446 | `result-track:2deace6619bffc973e22b4cdc6921a4e03084ca0167b9398ebf559f2ccc149d7` |
| 39 | `instance` | [instValuationRingInteger](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instvaluationringinteger--47098a69112eac7a0cf7f0b0.md) | 456 | `declaration-track:47098a69112eac7a0cf7f0b07323b77d4868234eab84bc0addf958b1a21c1d23` |
| 40 | `theorem` | [isFractionRing_iff](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/isfractionring-iff--ee8cd4cff673b83608f5094b.md) | 459 | `result-track:ee8cd4cff673b83608f5094b132d7de524b35d90b6d198dc2c35c847ffb5ba3e` |
| 41 | `instance` | [instIsFractionRingInteger](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instisfractionringinteger--203fc1ea8576b1373a66d54a.md) | 481 | `declaration-track:203fc1ea8576b1373a66d54a1d3615dc3641fc068341b35a0833a3992dfa6c8f` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/declarations/instance--0c206b2088a408582dee64cc.md) | 493 | `declaration-track:0c206b2088a408582dee64ccfa795b8d64ab04bf1835613dcc873e863720e78d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
