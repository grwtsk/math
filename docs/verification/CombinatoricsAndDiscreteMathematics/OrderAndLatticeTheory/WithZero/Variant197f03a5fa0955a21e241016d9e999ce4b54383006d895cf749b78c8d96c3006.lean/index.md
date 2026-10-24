# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithZero.Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e79af2611c1653bd303b1e4ae70e09efa3761b2b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e79af2611c1653bd303b1e4ae70e09efa3761b2b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Units.GroupWithZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithZero.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Instances` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.TypeTags` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LinearOrderedCommGroupWithZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/linearorderedcommgroupwithzero--d2538f75bdad2acd8265db29.md) | 43 | `declaration-track:d2538f75bdad2acd8265db29ba94cab1f2e4264f900b49ff9a43287a10d2f932` |
| 2 | `instance` | [instLinearOrderedCommMonoidWithZeroMultiplicativeOrderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/instlinearorderedcommmonoidwithzeromultiplicativeorderdual--baac6bd37e9c01d945cc564b.md) | 51 | `declaration-track:baac6bd37e9c01d945cc564b481d842839fa9753b5d21c9e9886a8cc9531dc45` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/instance--c453c1654a12ffb379060cdb.md) | 63 | `declaration-track:c453c1654a12ffb379060cdba3f2f920dee07df3f27042be23076604ba7f15a1` |
| 4 | `instance` | [instLinearOrderedCommMonoidWithZeroWithZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/instlinearorderedcommmonoidwithzerowithzero--6fd53dc91eddc9fa15c8b10c.md) | 70 | `declaration-track:6fd53dc91eddc9fa15c8b10c8a837eb4172bcbdf55300f46cd5139764f098850` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/instance--3d758bf62cf4bb73a567189c.md) | 76 | `declaration-track:3d758bf62cf4bb73a567189c8fa11c7ac529c4aa96753691ea889d5d4396379a` |
| 6 | `def` | [Function.Injective.linearOrderedCommMonoidWithZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/function-injective-linearorderedcommmonoidwithzero--59c65234b3762d2e9a40955c.md) | 89 | `declaration-track:59c65234b3762d2e9a40955c2c1c212a0b32f795c5189276e245868ad8bed789` |
| 7 | `theorem` | [zero_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/zero-le--6fcddb3db26dec8c606b8a69.md) | 101 | `result-track:6fcddb3db26dec8c606b8a69dbfd09db10ae8d6914a0e3ff4b74ec4e2855ed40` |
| 8 | `theorem` | [not_lt_zero'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/not-lt-zero--3638277b44c8b6a40d913cb0.md) | 105 | `result-track:3638277b44c8b6a40d913cb0584259acd884ed07d3a6bd112e36275a2efe3f1a` |
| 9 | `theorem` | [le_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/le-zero-iff--3da6323352c70bd6fdab2234.md) | 110 | `result-track:3da6323352c70bd6fdab2234f17f87678193b5d81c779d8b7cdf1a9446b8abf8` |
| 10 | `theorem` | [zero_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/zero-lt-iff--ea4232398f1090d74514a0d7.md) | 114 | `result-track:ea4232398f1090d74514a0d7e4a051620b25e45b241cd9374c1d23dbabc153a3` |
| 11 | `theorem` | [ne_zero_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/ne-zero-of-lt--44e438fbcc87b0057847a97f.md) | 118 | `result-track:44e438fbcc87b0057847a97f6085d78617b96773e89d057af8a7b9dacb8c3ea7` |
| 12 | `instance` | [instLinearOrderedAddCommMonoidWithTopAdditiveOrderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/instlinearorderedaddcommmonoidwithtopadditiveorderdual--1b8838a851ed0450822aef9d.md) | 121 | `declaration-track:1b8838a851ed0450822aef9dbb5fafcb6aa674aaa91f451ffcd6dfe12ac05c95` |
| 13 | `theorem` | [mul_le_one₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/mul-le-one--2e57b9ea099a9285c317e976.md) | 135 | `result-track:2e57b9ea099a9285c317e9762ca562f9a6402633eefde740c1646876382f4cf8` |
| 14 | `theorem` | [one_le_mul₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/one-le-mul--36888ec5199f5d02fb629e66.md) | 140 | `result-track:36888ec5199f5d02fb629e66cddca1aa731a6d79457fc6ea0cdd4a7e131113fd` |
| 15 | `theorem` | [le_of_le_mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/le-of-le-mul-right--2fba93260d8d329cadb3f69a.md) | 144 | `result-track:2fba93260d8d329cadb3f69a2260a16f5d95dd753eda0caf33587d23a37c2203` |
| 16 | `theorem` | [le_mul_inv_of_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/le-mul-inv-of-mul-le--8b7b52e6c475cf43cfdcd789.md) | 148 | `result-track:8b7b52e6c475cf43cfdcd789b3f4787f7306e29cde0422b412b454f53eb924f2` |
| 17 | `theorem` | [mul_inv_le_of_le_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/mul-inv-le-of-le-mul--5bfede5d0b2e894558fd957f.md) | 152 | `result-track:5bfede5d0b2e894558fd957f8860bfa002ce0c47225a59cdfd95ad934207f967` |
| 18 | `theorem` | [inv_le_one₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/inv-le-one--2fa1e70217cb2cc825f9dbf1.md) | 158 | `result-track:2fa1e70217cb2cc825f9dbf13d704845f3c397a9c073cc8f5baf21ed9122889c` |
| 19 | `theorem` | [one_le_inv₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/one-le-inv--a6ba1ad41254a0e145056e1b.md) | 162 | `result-track:a6ba1ad41254a0e145056e1b709e84e3ba77f13b2c4cbb6c54a0e3e412eed476` |
| 20 | `theorem` | [le_mul_inv_iff₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/le-mul-inv-iff--1d0fe8a192eb3901085448d8.md) | 166 | `result-track:1d0fe8a192eb3901085448d863b765d22156a50627c62ccefe663e188b4f19c7` |
| 21 | `theorem` | [mul_inv_le_iff₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/mul-inv-le-iff--80f5337ed5cf6106ca08bd6f.md) | 170 | `result-track:80f5337ed5cf6106ca08bd6fb2f8f27b73c46da16fa8641ee4a0eb67ad9b3400` |
| 22 | `theorem` | [div_le_div₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/div-le-div--aef17fea7fad550ce7bb4f60.md) | 174 | `result-track:aef17fea7fad550ce7bb4f600d4cfc84036a15dea2e5ac9473edcf5e284763be` |
| 23 | `theorem` | [Units.zero_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/units-zero-lt--cfe40d0d07042dbb09885429.md) | 179 | `result-track:cfe40d0d07042dbb098854299faa16d5f05363a42a427493b3ddf3417fa7c2e1` |
| 24 | `theorem` | [mul_lt_mul_of_lt_of_le₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/mul-lt-mul-of-lt-of-le--f8396eb8359a6f797b877306.md) | 183 | `result-track:f8396eb8359a6f797b87730680ce806636abe839b26de510ab9cb7a287869d31` |
| 25 | `theorem` | [mul_lt_mul₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/mul-lt-mul--481d1492b6992fc915eb51a2.md) | 197 | `result-track:481d1492b6992fc915eb51a23440a898eb3b79ea0cb6b6010718cf254644bda0` |
| 26 | `theorem` | [mul_inv_lt_of_lt_mul₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/mul-inv-lt-of-lt-mul--d20b967d59fd55456a30ba3f.md) | 201 | `result-track:d20b967d59fd55456a30ba3f13d31c39b3da7e977c27aeb4f12ef37ff3c9840f` |
| 27 | `theorem` | [inv_mul_lt_of_lt_mul₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/inv-mul-lt-of-lt-mul--cd3d9ca6c621909188c184e9.md) | 206 | `result-track:cd3d9ca6c621909188c184e9c72162ca03657dc1d9759b387460ba6459fea8c5` |
| 28 | `theorem` | [mul_lt_right₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/mul-lt-right--0630de29be279e19a367c218.md) | 211 | `result-track:0630de29be279e19a367c218d433ae8a398911872cae9296d325bbfc2a252f6d` |
| 29 | `theorem` | [inv_lt_inv₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/inv-lt-inv--4f89e86b3aa55e77d9986ee3.md) | 216 | `result-track:4f89e86b3aa55e77d9986ee3b045800695ccc8d4d5b23a8de3d20c215f43f78c` |
| 30 | `theorem` | [inv_le_inv₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/inv-le-inv--9f4a583d3d6fe231176ae386.md) | 223 | `result-track:9f4a583d3d6fe231176ae386018b3e6901ca319183d0d284337cd1296b91e125` |
| 31 | `theorem` | [lt_of_mul_lt_mul_of_le₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/lt-of-mul-lt-mul-of-le--28cf63ee0694dc15b03d0433.md) | 232 | `result-track:28cf63ee0694dc15b03d0433b564bc65994be38d8d5495e7a40d27384bcec770` |
| 32 | `theorem` | [mul_le_mul_right₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/mul-le-mul-right--f41eb1765e583809558d8920.md) | 239 | `result-track:f41eb1765e583809558d8920c206d4d0809a684e082b1bfb764c2342d6c6e5ff` |
| 33 | `theorem` | [mul_le_mul_left₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/mul-le-mul-left--4c1383ecefe59149a9d0c1f6.md) | 243 | `result-track:4c1383ecefe59149a9d0c1f65345084a25e918dc364ca36bee5c7fefd47e9c86` |
| 34 | `theorem` | [div_le_div_right₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/div-le-div-right--7a8de8616e1bc3b7f5db7641.md) | 248 | `result-track:7a8de8616e1bc3b7f5db7641db87a748ec7df1fdce56c4658d01be86db91832d` |
| 35 | `theorem` | [div_le_div_left₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/div-le-div-left--444f928075e8b309eb5f9d84.md) | 252 | `result-track:444f928075e8b309eb5f9d8438dc60b1a577470bf7a645c6ce4c57e1e6c25f1d` |
| 36 | `theorem` | [le_div_iff₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/le-div-iff--e3bdad2b4d025a2be10c831a.md) | 256 | `result-track:e3bdad2b4d025a2be10c831aeefb0116c6e50610ae2969c2b5d3de1b911babd4` |
| 37 | `theorem` | [div_le_iff₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/div-le-iff--f965b82eae41d111d42608a9.md) | 260 | `result-track:f965b82eae41d111d42608a95e9ce001b7b0018249a11b5e59d18a30eacbda9a` |
| 38 | `def` | [OrderIso.mulLeft₀'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/orderiso-mulleft--040c40f4649445ec2ae53729.md) | 268 | `declaration-track:040c40f4649445ec2ae5372914ba3040eb8558b592991e20f1c2387a53003613` |
| 39 | `theorem` | [OrderIso.mulLeft₀'_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/orderiso-mulleft-symm--db53ed892ab1fabafa848010.md) | 274 | `result-track:db53ed892ab1fabafa8480104c58c9525cc82d573a9e7a34a065b6498bc7f0b6` |
| 40 | `def` | [OrderIso.mulRight₀'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/orderiso-mulright--5970d750f7bc8892e5019d41.md) | 284 | `declaration-track:5970d750f7bc8892e5019d410604bc6bb237819a1dc7e4719b9682d5b647265b` |
| 41 | `theorem` | [OrderIso.mulRight₀'_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/orderiso-mulright-symm--5317f872afb616ea943d0222.md) | 290 | `result-track:5317f872afb616ea943d02228ef9d998468944f96fbb0a2163b2fa62e54e713a` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant197f03a5fa0955a21e241016d9e999ce4b54383006d895cf749b78c8d96c3006.lean/declarations/instance--0156c8e9839cafeb1f7ca57d.md) | 296 | `declaration-track:0156c8e9839cafeb1f7ca57d26d46a2f9a48a48bd99c3bc7b09a762c7c7d4c6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
