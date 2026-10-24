# Verification target: GRWTSK.Algebra.UInt.Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c49a27e02b09ac09f1358d3694697daa620a4a06",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/index.md) · [Full source](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c49a27e02b09ac09f1358d3694697daa620a4a06`.

Source path: `GRWTSK/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [UInt8.val_eq_of_lt](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/uint8-val-eq-of-lt--257e54bd61ed8fca4ce426ef.md) | 16 | `result-track:257e54bd61ed8fca4ce426ef137c249d57fd57c87d51f7a9127dded3c7b77d58` |
| 2 | `lemma` | [UInt16.val_eq_of_lt](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/uint16-val-eq-of-lt--ee9050789b6a2602ff359d76.md) | 18 | `result-track:ee9050789b6a2602ff359d76043cafdac8df46fe466d20ae364b118fcd1bd636` |
| 3 | `lemma` | [UInt32.val_eq_of_lt](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/uint32-val-eq-of-lt--852c1dcb7b54dac7e9cd7524.md) | 20 | `result-track:852c1dcb7b54dac7e9cd7524cc09291d2d1590e527dbfbfa11be21fb455be089` |
| 4 | `lemma` | [UInt64.val_eq_of_lt](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/uint64-val-eq-of-lt--913b67d193fae2db113b6771.md) | 22 | `result-track:913b67d193fae2db113b67716c9c68a9e34cdd0e9bd35275744a482165184811` |
| 5 | `lemma` | [USize.val_eq_of_lt](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/usize-val-eq-of-lt--f7fc1608eec53cd4a7ef0f69.md) | 24 | `result-track:f7fc1608eec53cd4a7ef0f69e59d9212fc9381ff578e4662ffe890f55b097222` |
| 6 | `instance` | [UInt8.neZero](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/uint8-nezero--788e90ca965f458b95dae2ea.md) | 26 | `declaration-track:788e90ca965f458b95dae2ea9e2c720335a4338e27cea797497ceb223ed4dcb0` |
| 7 | `instance` | [UInt16.neZero](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/uint16-nezero--6e931ed9913edb2c0beb3962.md) | 28 | `declaration-track:6e931ed9913edb2c0beb3962867ec01633a5dd3e3f5a089bb41d46d481fdaa45` |
| 8 | `instance` | [UInt32.neZero](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/uint32-nezero--7abccf799e3fc474edb5ba8e.md) | 30 | `declaration-track:7abccf799e3fc474edb5ba8ece2f4ba3d03e366b0e0fb8a35e0887ff588f9739` |
| 9 | `instance` | [UInt64.neZero](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/uint64-nezero--520e883a4690d9b8c1a3a969.md) | 32 | `declaration-track:520e883a4690d9b8c1a3a96921962e4e145de760bacc8ab019e2212acf0430c0` |
| 10 | `instance` | [USize.neZero](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/usize-nezero--dbbb193153f719b27849834d.md) | 34 | `declaration-track:dbbb193153f719b27849834d6039d9f542970ada608a8714be6f0a40ef7d7932` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/example--d0415d10d29fc57ce9415e51.md) | 36 | `declaration-track:d0415d10d29fc57ce9415e51f9f83a17e4d75066de3dbae6d09b191c5eeb1fac` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/instance--3aed205e4212669c1ba1b53e.md) | 43 | `declaration-track:3aed205e4212669c1ba1b53e252aa0f435f4200ffa2a1ffb4f21fb74ffac392a` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/instance--0babb66cc30c8db57f461056.md) | 46 | `declaration-track:0babb66cc30c8db57f46105636f88689857a51f4a003e2a51dc28ebfd757ae3c` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/instance--d9c1fb657f9a5569b0d7b822.md) | 49 | `declaration-track:d9c1fb657f9a5569b0d7b8221e0aa85f97c7c0e6bab8d45febdaa34595201352` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/instance--d2b3c7dd5c7b0fd31298299c.md) | 52 | `declaration-track:d2b3c7dd5c7b0fd31298299c20eebde1af6a0d646f6eb4cf55071b222a417713` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/instance--54bc4919006d80a68b6f9d14.md) | 55 | `declaration-track:54bc4919006d80a68b6f9d1426fa79065bbe421edbff2c79893cec2b8772a1de` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/instance--cf9ce5a1cc979996fbab41b0.md) | 58 | `declaration-track:cf9ce5a1cc979996fbab41b0d2c230b4a6dfb3f3c0929cf97047b0a2c2c96440` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/instance--7c83b4db5d60d30727997f6e.md) | 61 | `declaration-track:7c83b4db5d60d30727997f6e601dd0614e34ffffa8336b613eafee54e6118b08` |
| 19 | `lemma` | [zero_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/zero-def--7143ba12d7896960fb21dc9c.md) | 64 | `result-track:7143ba12d7896960fb21dc9c11449d74f714164225f144a4a6021c2877b6f52f` |
| 20 | `lemma` | [one_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/one-def--344f04e1521ee17a1a9a423a.md) | 66 | `result-track:344f04e1521ee17a1a9a423a72b8c2776358e047b4748c69efe7a53cf447d9d7` |
| 21 | `lemma` | [neg_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/neg-def--7e7cd374a4006c34b5030a01.md) | 68 | `result-track:7e7cd374a4006c34b5030a012210fb1ff679fc2ed3e135ee399af310c99bbfa7` |
| 22 | `lemma` | [sub_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/sub-def--15b921d6f88266876a8f8b44.md) | 70 | `result-track:15b921d6f88266876a8f8b44892f47a5b5e6839f1f72ca26fca37d7a53ba152e` |
| 23 | `lemma` | [mul_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/mul-def--1105f311940f014ebcf81345.md) | 72 | `result-track:1105f311940f014ebcf8134562182a91d625901d019d963c51fdccce7a8fe6f8` |
| 24 | `lemma` | [mod_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/mod-def--ef92c6e8b7211700d9995778.md) | 74 | `result-track:ef92c6e8b7211700d99957782efe7c2edc479e925f2998b2fa94893e5db1fd25` |
| 25 | `lemma` | [add_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/add-def--efabf2fefbe4f0026ee4450d.md) | 76 | `result-track:efabf2fefbe4f0026ee4450db2df5f2d134e5e25d794ee0af6b10a9096738ed2` |
| 26 | `lemma` | [pow_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/pow-def--3e55194e28958618e338ed32.md) | 78 | `result-track:3e55194e28958618e338ed328c959c7e7dd402e32d9b97ec41ee4b9a0b854027` |
| 27 | `lemma` | [nsmul_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/nsmul-def--26cde65b4b0fb2eb18ab9352.md) | 80 | `result-track:26cde65b4b0fb2eb18ab93523320f0c5de9619695d0beeabd033ccba8d863f25` |
| 28 | `lemma` | [zsmul_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/zsmul-def--d74d07dfdea877a9a9e0d654.md) | 82 | `result-track:d74d07dfdea877a9a9e0d654725bf0feba89e84235d9b5346ca8b4b6af67ae21` |
| 29 | `lemma` | [natCast_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/natcast-def--e80cddbe2aa13074e9313870.md) | 84 | `result-track:e80cddbe2aa13074e93138704790d33b35018dd4ebcc81135fbc16de054c467f` |
| 30 | `lemma` | [intCast_def](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/intcast-def--642aa601a9b5b259858f4fb0.md) | 86 | `result-track:642aa601a9b5b259858f4fb09fb2b26c40892c45e48291312c4cf6390de213be` |
| 31 | `lemma` | [eq_of_val_eq](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/eq-of-val-eq--db87ad76377b67b37097816a.md) | 88 | `result-track:db87ad76377b67b37097816a5c9d30c76f4f16f14cf484d94fe2d3c1395229a6` |
| 32 | `lemma` | [val_injective](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/val-injective--6e49a1b835a3bfd9f70130f3.md) | 91 | `result-track:6e49a1b835a3bfd9f70130f3cf4237c32ab53466f681050044e86f845219fe39` |
| 33 | `lemma` | [val_eq_of_eq](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/val-eq-of-eq--7ee99246739a65d1014aed20.md) | 93 | `result-track:7ee99246739a65d1014aed2081d37627c805339485f5a0d731ff6f893d068523` |
| 34 | `lemma` | [mk_val_eq](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/mk-val-eq--2b1424ef34ca81b34efaecbb.md) | 96 | `result-track:2b1424ef34ca81b34efaecbb9197a48ad0006416b763f6ef597376e25292ab39` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/instance--177b1a1cf3d3dc0477f9bb29.md) | 99 | `declaration-track:177b1a1cf3d3dc0477f9bb295f6de293f16a315b9bf9a1dcccf4dac8a6557e10` |
| 36 | `def` | [isUpper](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/isupper--a6141474b9f8b19939f8a2d4.md) | 110 | `declaration-track:a6141474b9f8b19939f8a2d40d25a63c554ca70ffbe022db34b5823be3b612a4` |
| 37 | `def` | [isLower](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/islower--a6486d37de15474a6b46198a.md) | 114 | `declaration-track:a6486d37de15474a6b46198ab56ce51124e5582b5150cf3100655fa1192e5322` |
| 38 | `def` | [isAlpha](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/isalpha--78422684c0ec63a90e98f544.md) | 118 | `declaration-track:78422684c0ec63a90e98f54414117dd2ba0fcb63c6f7349439fe9945f0a2a73a` |
| 39 | `def` | [isDigit](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/isdigit--583663d88d422ac922dac1fc.md) | 122 | `declaration-track:583663d88d422ac922dac1fc589ea9e7928af816c28da19348e709919d3858d8` |
| 40 | `def` | [isAlphanum](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/isalphanum--e5a75863e19d9ee02a101081.md) | 126 | `declaration-track:e5a75863e19d9ee02a1010815639573df79e60809690c3bcc5ed56f06d08c55f` |
| 41 | `theorem` | [toChar_aux](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/tochar-aux--0e073db982647a9a2cfc7d55.md) | 129 | `result-track:0e073db982647a9a2cfc7d5587c910cb6586ba80bab1cfa8f286278cb120a8d1` |
| 42 | `def` | [toChar](../../../../mathematics/Algebra/UInt/Variant0a572d4cddfdf8507ac1e26624e0111f41c27fbfa98a278a374d8fb3040dccd0.lean/declarations/tochar--d25e81f3ff4f5ad47b8fd653.md) | 135 | `declaration-track:d25e81f3ff4f5ad47b8fd653e7d717e95549be9eb519323bebd83654a8c4e99f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
