# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorPower.Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ee1d1f78ae639d9f45edde0f9c8570f8bc1d0a0",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ee1d1f78ae639d9f45edde0f9c8570f8bc1d0a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.PiTensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TensorPower](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/tensorpower--5c45cea2b44ef240735233c0.md) | 46 | `declaration-track:5c45cea2b44ef240735233c0c25433a1f95c61ecf52055b16d95bf406c66de34` |
| 2 | `theorem` | [gradedMonoid_eq_of_reindex_cast](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/gradedmonoid-eq-of-reindex-cast--ef2e0cff086e522edf0b1471.md) | 60 | `result-track:ef2e0cff086e522edf0b1471ecf5fd1b5aefbfedfddcc4ea493bde9dcb502922` |
| 3 | `instance` | [gOne](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/gone--f5dcd1aa5b9c1bafcdb8d9b3.md) | 77 | `declaration-track:f5dcd1aa5b9c1bafcdb8d9b33a4bd89ea53d719f8a0e22095aee5cf7c1431523` |
| 4 | `theorem` | [gOne_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/gone-def--74b4af3c7f996bb113d8fa29.md) | 82 | `result-track:74b4af3c7f996bb113d8fa29e14f4716e440cb87046cdcc50f1f8b59b5192908` |
| 5 | `def` | [mulEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/mulequiv--c978166326094a8bd94c3866.md) | 87 | `declaration-track:c978166326094a8bd94c386634f4cd8602e00de7df48d1a21245408b8717fa21` |
| 6 | `instance` | [gMul](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/gmul--816a880cc5e8f5bc1a0c6d6f.md) | 92 | `declaration-track:816a880cc5e8f5bc1a0c6d6fc000dadbc264bc3de5674ce9a6b9c1871d80f051` |
| 7 | `theorem` | [gMul_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/gmul-def--3b23c698603b87e336e67aa3.md) | 99 | `result-track:3b23c698603b87e336e67aa38506ca9e4c30ce7c65b75d0208649590085e94b2` |
| 8 | `theorem` | [gMul_eq_coe_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/gmul-eq-coe-linearmap--010171be244d55cad99aaec8.md) | 104 | `result-track:010171be244d55cad99aaec89e6ab6cc4ab591c9a16aa49e9f0cb810c911f664` |
| 9 | `def` | [cast](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/cast--dcbd39f7baf4ca2aabd89b22.md) | 113 | `declaration-track:dcbd39f7baf4ca2aabd89b227b680807596c4c3604e1c0437c77d80689d93d70` |
| 10 | `theorem` | [cast_tprod](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/cast-tprod--c767d292e072024d47472ffd.md) | 117 | `result-track:c767d292e072024d47472ffdf51ff68f301996754952374da95002a8882ee443` |
| 11 | `theorem` | [cast_refl](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/cast-refl--e534ddffb72d253ca0e5915e.md) | 123 | `result-track:e534ddffb72d253ca0e5915ea2292723d469fd2864a29775bea2726af8815c5a` |
| 12 | `theorem` | [cast_symm](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/cast-symm--5498a47ab4a7d7dd63cea2f2.md) | 128 | `result-track:5498a47ab4a7d7dd63cea2f2e4b27a17c9f093b9af62e4b88a2de115b3fb6c20` |
| 13 | `theorem` | [cast_trans](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/cast-trans--394386801a6f155856ec3618.md) | 133 | `result-track:394386801a6f155856ec3618a8033ab3622662776cc3588d8d098d9199338b46` |
| 14 | `theorem` | [cast_cast](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/cast-cast--def986f2af2affdb1641959c.md) | 141 | `result-track:def986f2af2affdb1641959cc323db0941eb7273f6b8141161d8e334f1bca8f3` |
| 15 | `theorem` | [gradedMonoid_eq_of_cast](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/gradedmonoid-eq-of-cast--7ff85c613dc53a3abecb9e56.md) | 147 | `result-track:7ff85c613dc53a3abecb9e564a49a314e5722ce4c8419d7540786c958b71acf9` |
| 16 | `theorem` | [cast_eq_cast](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/cast-eq-cast--e008fc9ba26f7b9450b57ca6.md) | 155 | `result-track:e008fc9ba26f7b9450b57ca69af1b1b1261c01c62ada1d9918eeafed9359d639` |
| 17 | `theorem` | [tprod_mul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/tprod-mul-tprod--7439bc4fc06b64a9a0ea9bc9.md) | 164 | `result-track:7439bc4fc06b64a9a0ea9bc955f8499ef164300d87aa299d7669b92af85db6e3` |
| 18 | `theorem` | [one_mul](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/one-mul--cb7fa8216c9f40cb49394140.md) | 177 | `result-track:cb7fa8216c9f40cb49394140def2774b8bce3ec7319c8323007e3fce7d692ddb` |
| 19 | `theorem` | [mul_one](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/mul-one--d35767851cb59f67722ac62d.md) | 189 | `result-track:d35767851cb59f67722ac62d827e24e53267cdeddb7bffce4da31c9225f8ad96` |
| 20 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/mul-assoc--519ad2402592fe9847f966ef.md) | 201 | `result-track:519ad2402592fe9847f966efcf50c5fdbeba0f37c372f139ed79864ab871948d` |
| 21 | `instance` | [gmonoid](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/gmonoid--9b8e2192c23cb416005d4f9e.md) | 226 | `declaration-track:9b8e2192c23cb416005d4f9e24a845be7def0e589946daca3c8a540737db931b` |
| 22 | `def` | [algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/algebramap--28e5136d9c90e94464e36fce.md) | 235 | `declaration-track:28e5136d9c90e94464e36fce49d16549c7bffb4d7796bba74a30cd5913ba2ed1` |
| 23 | `theorem` | [algebraMap₀_eq_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/algebramap-eq-smul-one--4397942a3c39a4ef7e4157f0.md) | 239 | `result-track:4397942a3c39a4ef7e4157f0a9f657493173b24e3fed532cd3d3f2ff8470c499` |
| 24 | `theorem` | [algebraMap₀_one](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/algebramap-one--2453823ce7634bf199890dae.md) | 243 | `result-track:2453823ce7634bf199890daef6bbc5bc7c559b8534ee48ab9430d56c8f80a2d7` |
| 25 | `theorem` | [algebraMap₀_mul](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/algebramap-mul--4bf4ec6236c2dedd7e18242a.md) | 247 | `result-track:4bf4ec6236c2dedd7e18242a76d890095fb41265ac8a4e110f8ad83f7d7866bc` |
| 26 | `theorem` | [mul_algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/mul-algebramap--2b3980a2746d045840d618d8.md) | 253 | `result-track:2b3980a2746d045840d618d8a5fb3b5a6cf91af7344ca911586a5e83569cf80a` |
| 27 | `theorem` | [algebraMap₀_mul_algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/algebramap-mul-algebramap--2778c465baae150d6aec1092.md) | 259 | `result-track:2778c465baae150d6aec1092064d812db52a10a98e2253e30e0adddfa60566b7` |
| 28 | `instance` | [gsemiring](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/gsemiring--bd37cc74bb1cf08ea311d685.md) | 266 | `declaration-track:bd37cc74bb1cf08ea311d685b02ff3a8ecdb48eb10f1d89291a392339db5d933` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/example--1f73f07e99b31ea272630f2d.md) | 277 | `declaration-track:1f73f07e99b31ea272630f2dcd639dfba55bc2cc7f4af3713eea212ad1c3740b` |
| 30 | `instance` | [galgebra](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/galgebra--4961b58e295eb5258d9016c4.md) | 282 | `declaration-track:4961b58e295eb5258d9016c4ccbf8673c0e71bdb87784a5594c4fd79b0504b5f` |
| 31 | `theorem` | [galgebra_toFun_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/galgebra-tofun-def--1bc790c9c47404678e4b6feb.md) | 299 | `result-track:1bc790c9c47404678e4b6feb8b00d95b4f0bb0a8d22d1a7ef8c3d8295ec9a0a5` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/declarations/example--baaa85fe727e95e192c2e74d.md) | 304 | `declaration-track:baaa85fe727e95e192c2e74d23f3ed4b2cb36dd6b8c60934884d21c0043ebcef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
