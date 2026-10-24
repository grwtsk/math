# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17d98019bfcac40d82ae9757197786149814a85f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17d98019bfcac40d82ae9757197786149814a85f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Semiquot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.Rat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Int.shift2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/int-shift2--4dff2a0819dc071f136d4b52.md) | 21 | `declaration-track:4dff2a0819dc071f136d4b5238b5e9b890ac20a704f2685577bf442cb5951d67` |
| 2 | `inductive` | [RMode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/rmode--d530a427791e266528a76f2c.md) | 28 | `declaration-track:d530a427791e266528a76f2cdf0d994ad6c5ac3414a862212c3b141135bac9b8` |
| 3 | `class` | [FloatCfg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/floatcfg--f824583d7ffe7fe95eab8db7.md) | 33 | `declaration-track:f824583d7ffe7fe95eab8db78a494c1d0478e010541300e97634c2eefb4b3f3c` |
| 4 | `def` | [prec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/prec--c88a4725675750a4c9c425b1.md) | 42 | `declaration-track:c88a4725675750a4c9c425b176df4ceeb1c07c380ccb238ae6859b27a89a9fe7` |
| 5 | `def` | [emax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/emax--ca162f4e390c26770a576687.md) | 46 | `declaration-track:ca162f4e390c26770a57668724ac9e63d69279fad99eedcdb17304514e30d0ed` |
| 6 | `def` | [emin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/emin--8a4b189c531ffc9422d35de9.md) | 50 | `declaration-track:8a4b189c531ffc9422d35de922807c1fb07c6a45ba7c93c5076188b23d80b829` |
| 7 | `def` | [ValidFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/validfinite--76de0ed2b14cb942edc1cc9e.md) | 54 | `declaration-track:76de0ed2b14cb942edc1cc9e213563fa5ca5aee21fad6a4a21a3286ac1ac7ee8` |
| 8 | `instance` | [decValidFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/decvalidfinite--de67f7a05f53be49e379fb7c.md) | 57 | `declaration-track:de67f7a05f53be49e379fb7c23d2f56af8c8a61771e8c4bc3f0cee874ccd1872` |
| 9 | `inductive` | [Float](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/float--69c5c828fec5c8c8b34c3081.md) | 61 | `declaration-track:69c5c828fec5c8c8b34c3081ccb0b9a1fefa586157a2e980b518650be4599cba` |
| 10 | `def` | [Float.isFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/float-isfinite--85d64c576ce565728951e608.md) | 67 | `declaration-track:85d64c576ce565728951e6082354526c46b510cc16596d5d44fc7b3319706bac` |
| 11 | `def` | [toRat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/torat--a10d1191e0844eec3021d95d.md) | 72 | `declaration-track:a10d1191e0844eec3021d95d7ce57c24214602279fe1e7b6182401cd7171715d` |
| 12 | `theorem` | [Float.Zero.valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/float-zero-valid--070e449ab8a0d45f96f8d2b9.md) | 78 | `result-track:070e449ab8a0d45f96f8d2b9bf166e855c075677b5cc65858a65deef10fc8c08` |
| 13 | `def` | [Float.zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/float-zero--00d30ccf43a7983996937c6e.md) | 94 | `declaration-track:00d30ccf43a7983996937c6e8d6be0691b06a581d79f395feab7ec324b960805` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/instance--93a41f65ca7a61ef388bae2e.md) | 97 | `declaration-track:93a41f65ca7a61ef388bae2e672d3846e7adae3486926b0ac1c1237efd06d001` |
| 15 | `def` | [Float.sign'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/float-sign--20b42ced854b761a005bdb24.md) | 101 | `declaration-track:20b42ced854b761a005bdb240be591953414cc4c21c40db22fa766a0dc30ae5c` |
| 16 | `def` | [Float.sign](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/float-sign--45902ae802cd25f4096e9f45.md) | 107 | `declaration-track:45902ae802cd25f4096e9f45dc0df9cc0804d7431a8ccdfeb8004042fc4b8d51` |
| 17 | `def` | [Float.isZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/float-iszero--0686cd4036bb56e00471098c.md) | 113 | `declaration-track:0686cd4036bb56e00471098ce663a60cd208550fd08847f4ca8d95fa9c546155` |
| 18 | `def` | [Float.neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/float-neg--f7c9c23476da641f2c85a0c5.md) | 118 | `declaration-track:f7c9c23476da641f2c85a0c556fc57c49e45e11f85a226a4783e9ce72749df20` |
| 19 | `def` | [divNatLtTwoPow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/divnatlttwopow--559867a7895c228308039980.md) | 124 | `declaration-track:559867a7895c228308039980636a49fe128888c443fbfec2564880b1724d4beb` |
| 20 | `def` | [ofPosRatDn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/ofposratdn--f5eda8c2e215e4c71911af26.md) | 131 | `declaration-track:f5eda8c2e215e4c71911af2695e6d54e6adc68da0b3a204d9cface67f4b55dab` |
| 21 | `def` | [nextUpPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/nextuppos--b42f2ee03ea1e6380c688653.md) | 145 | `declaration-track:b42f2ee03ea1e6380c688653b5f3a5e6e0382fe406d478fd0493cb139fb139a3` |
| 22 | `def` | [nextDnPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/nextdnpos--b70baa9716b74e5f12803c71.md) | 154 | `declaration-track:b70baa9716b74e5f12803c719b92e219f763072685240ca75529f05e89f1f362` |
| 23 | `def` | [nextUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/nextup--daaf8ca5ddd53e7c9fffb185.md) | 166 | `declaration-track:daaf8ca5ddd53e7c9fffb1854c95342975cfb7d213b2e0f0ce79e19d7812d7d4` |
| 24 | `def` | [nextDn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/nextdn--9ee587a7b342d58fa0898c67.md) | 172 | `declaration-track:9ee587a7b342d58fa0898c671633963b7a127d3ed422db1ad9748aa0c4904a6c` |
| 25 | `def` | [ofRatUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/ofratup--2beba8debec76f7b17c1fb6b.md) | 178 | `declaration-track:2beba8debec76f7b17c1fb6bbc010c77010b6c1057414acffa7ecd321e3d22ae` |
| 26 | `def` | [ofRatDn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/ofratdn--366b64cc1231a22e31280cd4.md) | 186 | `declaration-track:366b64cc1231a22e31280cd48a1926b687e7f943fc28c65565b33a6e145df0af` |
| 27 | `def` | [ofRat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/ofrat--2203ba0c52c34ac526d43881.md) | 190 | `declaration-track:2203ba0c52c34ac526d4388105a544eb721143ce51b2cf67186ab26db8ae07fd` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/instance--15246737b4675687fdbec19f.md) | 209 | `declaration-track:15246737b4675687fdbec19f41b5b8c207505944174302f6804c876f614c26ba` |
| 29 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/add--03b7a61a39de39f7e03232a5.md) | 213 | `declaration-track:03b7a61a39de39f7e03232a5fc52009fc1f596937e122def062c0c89f09c0f82` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/instance--daae1bd2729219fafed2e3ad.md) | 225 | `declaration-track:daae1bd2729219fafed2e3aded1564eff9560cf0fb75f52cdbccfc729b841711` |
| 31 | `def` | [sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/sub--e136b8fc9e6a3c5e3521f173.md) | 229 | `declaration-track:e136b8fc9e6a3c5e3521f1731ed5917d237ac3cb72fee6d26e8df169d289ca02` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/instance--5a5a48019dd30665af10511e.md) | 232 | `declaration-track:5a5a48019dd30665af10511e257c8f2c133ffd494feeee1f76adae15d4d985c9` |
| 33 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/mul--3445ae5a2b5c687384bc1d9b.md) | 236 | `declaration-track:3445ae5a2b5c687384bc1d9b9020e3bd70ec51243ea2ce0c3ce581d9d5c581b2` |
| 34 | `def` | [div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean/declarations/div--1f62adae0ba53a122415d2ba.md) | 247 | `declaration-track:1f62adae0ba53a122415d2bad9c3aa92b58bc1edac9afcd381b2dcbb66a6d5f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
