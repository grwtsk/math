# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59c1538c376ad3fceb400f8f66c11c874510ea13",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59c1538c376ad3fceb400f8f66c11c874510ea13`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pow` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Format.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Bitvec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/bitvec--ccdf88efa1ffa7bcf460dc44.md) | 31 | `declaration-track:ccdf88efa1ffa7bcf460dc44b0a723a7835f222ae9d11dbe51115a35f3e2f2ce` |
| 2 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/zero--d6ff3aa2d977a4b309c9acb3.md) | 46 | `declaration-track:d6ff3aa2d977a4b309c9acb33c21720f68e9b4e266e3c136bb11a862fe8b6509` |
| 3 | `def` | [one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/one--37f6956399f4962559ef2c65.md) | 52 | `declaration-track:37f6956399f4962559ef2c65494ae96d1617289d7dc54af252b0692e5aaebae9` |
| 4 | `def` | [cong](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/cong--442654c7d51b7a14bec85e1f.md) | 58 | `declaration-track:442654c7d51b7a14bec85e1f0d6f55069b96e516089e80e5a8b193335af6e514` |
| 5 | `def` | [append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/append--705c826e136ea4198bf06e8f.md) | 63 | `declaration-track:705c826e136ea4198bf06e8fefbc8b59d215c7700e23e02423f6b829c4090956` |
| 6 | `def` | [shl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/shl--55dd1fed74d0f273ed638bc8.md) | 76 | `declaration-track:55dd1fed74d0f273ed638bc8aa6b75efb4733ede87ad2d270f9ce7dff5cb713d` |
| 7 | `def` | [ushr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/ushr--4549667ef4f11c158e2f5c96.md) | 83 | `declaration-track:4549667ef4f11c158e2f5c961ab7dd35e58f4988dc4699892443c04acf24e63c` |
| 8 | `def` | [sshr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/sshr--0c4904285d91368eece5cec6.md) | 88 | `declaration-track:0c4904285d91368eece5cec63f548278582dbab8a0dfc0aaac849fdcb3836841` |
| 9 | `def` | [not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/not--cb58fadeba75c50e2f128fe1.md) | 104 | `declaration-track:cb58fadeba75c50e2f128fe1e7618618ccd1eeb04a70c6ffcba84128b41d8220` |
| 10 | `def` | [and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/and--da167f6fd48faeb2a85f52fe.md) | 110 | `declaration-track:da167f6fd48faeb2a85f52fed796ed3ec1809c004477c207493a3ca49aa23abd` |
| 11 | `def` | [or](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/or--f39c35cc28c3a78dc49346b3.md) | 116 | `declaration-track:f39c35cc28c3a78dc49346b3249192cdce07314f60dbc5ebc49bdf26f9b271fd` |
| 12 | `def` | [xor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/xor--6bbbcc11721063f694c29596.md) | 122 | `declaration-track:6bbbcc11721063f694c29596272d1eef4b1c1e99e07c0af901eccfa7f0708b76` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--d8c130d85f9af358194aeb48.md) | 126 | `declaration-track:d8c130d85f9af358194aeb48f8a4b44b669ce0b25ad71d013ba4f4855008c141` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--aa27f71dd3d71c3ac1391d96.md) | 129 | `declaration-track:aa27f71dd3d71c3ac1391d96006d83b66658b3c0e73b73cad6f6104ae40e1325` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--d0bd4a5aa1cb86a46a85652e.md) | 132 | `declaration-track:d0bd4a5aa1cb86a46a85652ea13b3c671768fb1c3ab4ee904cd9c19660bea69f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--909993904f98f83b902096ca.md) | 135 | `declaration-track:909993904f98f83b902096ca68bdfd05370c054a144b09d4b544511f0fa7316e` |
| 17 | `def` | [neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/neg--9fde179d35d1c79c9e526b2e.md) | 148 | `declaration-track:9fde179d35d1c79c9e526b2e1a447df473140fa59f4f2b5ed4a6ea401b12e5a1` |
| 18 | `def` | [adc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/adc--722aaf1ca7abe6172754def0.md) | 154 | `declaration-track:722aaf1ca7abe6172754def09cf8c877a9c45693809c0dd238eea72fb04dc99b` |
| 19 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/add--9e318aa7f314b65f5eb42798.md) | 161 | `declaration-track:9e318aa7f314b65f5eb427986083575a8a3ade668f42df012378968a6b5b6383` |
| 20 | `def` | [sbb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/sbb--2e118554222cd49d7798b238.md) | 166 | `declaration-track:2e118554222cd49d7798b2381be4cf560dd0df088ef636d2abab555edc2e051b` |
| 21 | `def` | [sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/sub--e8070037d712a77fffaf68e9.md) | 172 | `declaration-track:e8070037d712a77fffaf68e9d4b3fb6a875c5351f9eef55ee161dc254188ff45` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--e3dbdaced67c944b2bd77651.md) | 176 | `declaration-track:e3dbdaced67c944b2bd77651d05d59ba4d64abd477b8ac66594007833a0e3051` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--ce473500153feaca71c141a1.md) | 179 | `declaration-track:ce473500153feaca71c141a1e081d9eb5f60b5f6498e622be39aefb847e94d59` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--2a303cc6bf702f8c0768e4ea.md) | 182 | `declaration-track:2a303cc6bf702f8c0768e4ea055ede271c4c0fd013b215da741a10a92e0c95e0` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--eb9f1e01390c43f7ac479064.md) | 185 | `declaration-track:eb9f1e01390c43f7ac47906426391eacfded412bcd1677c9017f57c5c94e1c17` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--c49d20a909d63eeaf7155232.md) | 188 | `declaration-track:c49d20a909d63eeaf71552324ee2b332ef3921923f21d521e64eaff0b9030959` |
| 27 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/mul--54a6b5f1fdb6bbf022fbac45.md) | 192 | `declaration-track:54a6b5f1fdb6bbf022fbac454af6303bc83e86d34e3641696ab3a25f27a50419` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--2f810ea0c67f1f70e6f895ee.md) | 197 | `declaration-track:2f810ea0c67f1f70e6f895eecd4650f9bfa398e933f3956dfb3b5e2e295c1107` |
| 29 | `def` | [uborrow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/uborrow--e77d3369dec249922bc749a1.md) | 211 | `declaration-track:e77d3369dec249922bc749a1328eddd7e4a94ab981e8ea187374dbf51f880d9c` |
| 30 | `def` | [Ult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/ult--b4ccdd0b78f1127f1b41c81b.md) | 216 | `declaration-track:b4ccdd0b78f1127f1b41c81bd08a80686c863217b8e7cf27707216b4ef6bf142` |
| 31 | `def` | [Ugt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/ugt--d2b5291b07812beef1101473.md) | 221 | `declaration-track:d2b5291b07812beef11014736d23a454714b1e15eae3aede55c8627c510936b1` |
| 32 | `def` | [Ule](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/ule--2975e42b71354fc25491a132.md) | 226 | `declaration-track:2975e42b71354fc25491a132bbd43e7c4af3433d419bd92d9c87a19335e6cbaf` |
| 33 | `def` | [Uge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/uge--91ce44861c72cb0f7acc456b.md) | 231 | `declaration-track:91ce44861c72cb0f7acc456b19e49f52392906e2ebe06b7276bedfcc0b99a701` |
| 34 | `def` | [sborrow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/sborrow--511ed5f26d58f77a5d695f32.md) | 236 | `declaration-track:511ed5f26d58f77a5d695f32567ed672cb0764bc5a92ff88074d25c6a0dd6cac` |
| 35 | `def` | [Slt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/slt--c346791df04143d23588e6be.md) | 246 | `declaration-track:c346791df04143d23588e6be0c71c6115be6709462172371636a85770b1db403` |
| 36 | `def` | [Sgt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/sgt--ce0288c8bacf56b69ec1a467.md) | 251 | `declaration-track:ce0288c8bacf56b69ec1a4675e4fbb60962269516fbc1bb77f3b6c2e5766b577` |
| 37 | `def` | [Sle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/sle--5c603f4cbe3b1462aa489af1.md) | 256 | `declaration-track:5c603f4cbe3b1462aa489af1f262d0c163eaaa1aa395e5468bcf0ab9aa704db1` |
| 38 | `def` | [Sge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/sge--4ad486ba8694ceca98c22695.md) | 261 | `declaration-track:4ad486ba8694ceca98c22695e195e6c6a50b492ed8dd6f2f77671467906a2cd2` |
| 39 | `def` | [ofNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/ofnat--14b6865858350b297c53fa50.md) | 275 | `declaration-track:14b6865858350b297c53fa5040cd5cb1065ba472fb9743dbf8deebe6ef6d99a5` |
| 40 | `def` | [ofInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/ofint--2f993757651daa8e136f12b7.md) | 281 | `declaration-track:2f993757651daa8e136f12b7d9d137415e447fce5320bc7b28f3c56ce4600a74` |
| 41 | `def` | [addLsb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/addlsb--c3c79c1fc1c33c2da60e4cbc.md) | 286 | `declaration-track:c3c79c1fc1c33c2da60e4cbc84c160dba6d80b53bdc001b8e05d95dbb19b26e4` |
| 42 | `def` | [bitsToNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/bitstonat--1c113bbcf2fc7177a5141f94.md) | 291 | `declaration-track:1c113bbcf2fc7177a5141f9473c7838252c56234ed1d8a52bae5aac2bad59399` |
| 43 | `def` | [toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/tonat--8473f90dcc16402929fa45c7.md) | 296 | `declaration-track:8473f90dcc16402929fa45c729ca5adf4a06a21cf01a84e102c41ea395d4eb8e` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--277533417137a7152e0e3193.md) | 300 | `declaration-track:277533417137a7152e0e31937f093967e03a14980cf3637accd901a5ebb92455` |
| 45 | `def` | [ofFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/offin--799dba0f9b27cab3288f0995.md) | 304 | `declaration-track:799dba0f9b27cab3288f09952228767a53d6586ae22e4b6482dab39b1a079868` |
| 46 | `def` | [toFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/tofin--4962f46a2a508c0eff34b775.md) | 309 | `declaration-track:4962f46a2a508c0eff34b775498e4da185ae3a5a287aac6803338df3ada23527` |
| 47 | `def` | [toInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/toint--3087e4cc33af99d0e3e63d17.md) | 315 | `declaration-track:3087e4cc33af99d0e3e63d178e5dfa7c6754a6231909eab4a0046455a8cb7cac` |
| 48 | `def` | [repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/repr--c81e00dad0a1bbc5ba311124.md) | 327 | `declaration-track:c81e00dad0a1bbc5ba311124332591345e85b2dd069b31670477a4c0210b481b` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--1e00f1bf7286e2f997d4695b.md) | 330 | `declaration-track:1e00f1bf7286e2f997d4695b1d58c87394d643ae616de116b29f4f3ac74a2727` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--a2a8aa7939ac78bc6cf5f860.md) | 335 | `declaration-track:a2a8aa7939ac78bc6cf5f860bb835fa2deb01f44a1047c5bd8bd1f96a9a9de97` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--be5f6c05f6145a29f25fc92c.md) | 338 | `declaration-track:be5f6c05f6145a29f25fc92c44720ebf1977b4081336369647faeb8f5260fe97` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--02adb521af0c36db47aa3b83.md) | 341 | `declaration-track:02adb521af0c36db47aa3b83d18bb76f85e723ea4d5e20772fe246aad938649a` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--3920b0a6d9dd17edf1de3dff.md) | 343 | `declaration-track:3920b0a6d9dd17edf1de3dffe800f421f7712c0a3a161d5fc729b3e2082534f5` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--2febe7e546c9a21f9db775cc.md) | 345 | `declaration-track:2febe7e546c9a21f9db775cc31fd27ade813a33481ca1a9f2fde3bc24c2e5732` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant80b28841310130300c11f91f93bd66e267deb99c9eda92b98a93e0653c68722b.lean/declarations/instance--738a48a0003e95e904cc7ba1.md) | 347 | `declaration-track:738a48a0003e95e904cc7ba192f5549529be380f585971a79cf33f360cd32f25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
