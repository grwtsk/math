# Verification target: GRWTSK.Algebra.Module.Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5acee07ccc5b3afe67c3355153deb5dd9007a877",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Module/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/index.md) · [Full source](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5acee07ccc5b3afe67c3355153deb5dd9007a877`.

Source path: `GRWTSK/Algebra/Module/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Module/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--c8b7aab311591bcf888504b4.md) | 24 | `declaration-track:c8b7aab311591bcf888504b48218108b62b65e9feb540f94e34a5a2519eccfdb` |
| 2 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--1dc397ed26e231805905d687.md) | 25 | `declaration-track:1dc397ed26e231805905d6878fb2572de1f2f4c5cc2e12cc9f24af3d42ed9293` |
| 3 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--f613dc57f820deab3ef046ca.md) | 26 | `declaration-track:f613dc57f820deab3ef046cab2262a763fe673d8fbb201253cb94c0ad1fb053d` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--dcdccd5f71eb5609320549ca.md) | 27 | `declaration-track:dcdccd5f71eb5609320549ca176e72f672e57273457aff9880d8dd50ea173c01` |
| 5 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--627d743601a52e1173dcc92e.md) | 28 | `declaration-track:627d743601a52e1173dcc92e06463944afe715b6a331237c6dc5c718fd68bedd` |
| 6 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--453a0f91f2b16ae92f682c75.md) | 29 | `declaration-track:453a0f91f2b16ae92f682c7552700f8f7ef34fc6465096599e7e53dd0f657e78` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--7a90449c07ce78256fd7ae87.md) | 30 | `declaration-track:7a90449c07ce78256fd7ae87e792694dc355c0b3a4af27ef2fb77fb0e28fc309` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--0afc34743f4a488f381c6844.md) | 31 | `declaration-track:0afc34743f4a488f381c68440c8ea3033c7eb787ae76dd1e9830dea8e9467a98` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--f5c8075668c0994732074306.md) | 33 | `declaration-track:f5c8075668c09947320743065c3150d673c66515f3749abce2e88071c91430de` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--462da6df532d3b83f1349ced.md) | 54 | `declaration-track:462da6df532d3b83f1349cedd004f94dae20bbb6968416e26b1cb28f6f241146` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--598c177c77014181b9a15a5b.md) | 66 | `declaration-track:598c177c77014181b9a15a5bc75c998623e8b5ef52a961347112a17eb7964337` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--8280e13e699e3f4a0ce9cff7.md) | 70 | `declaration-track:8280e13e699e3f4a0ce9cff7e678b0637723ccfb68e16008db671b4d739753f8` |
| 13 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--562e5c0b367766e451cf379e.md) | 78 | `declaration-track:562e5c0b367766e451cf379e1f18c742176dec9a939423cdfae1f6ef744d111f` |
| 14 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--e885a615c811878a51cee369.md) | 79 | `declaration-track:e885a615c811878a51cee369ac615f208ef3bd87462fd3d31205226fc2ee32ea` |
| 15 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--1495d2b90fb746f372485341.md) | 80 | `declaration-track:1495d2b90fb746f3724853410452e84d10d3b83a9dcabddec617d834a254fd91` |
| 16 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--263918f9e0f6ea28d55c89c5.md) | 81 | `declaration-track:263918f9e0f6ea28d55c89c5dce4a4d4d67951dc73edc76d5f24a18d8916f89a` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--d5e5fc76c361d4fd05b4f560.md) | 82 | `declaration-track:d5e5fc76c361d4fd05b4f56019a036dfb1b1af7ba1bae7897c69a51013ccd72b` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--73fccaf05b2bf5d22eb2c35e.md) | 83 | `declaration-track:73fccaf05b2bf5d22eb2c35ea4aa90c898f3d30f1cfbea43ae051dbcd8adb186` |
| 19 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--7cc2176294d6018e33672234.md) | 84 | `declaration-track:7cc2176294d6018e33672234e06821be04c41f29d220cdb21190a0e983f91269` |
| 20 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--ec852ed88494b86f38ee564f.md) | 85 | `declaration-track:ec852ed88494b86f38ee564fbdacf824cff1208f6068c89f16c966684a935f77` |
| 21 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--bc7d1653110a5876bd30be4c.md) | 86 | `declaration-track:bc7d1653110a5876bd30be4cec637a15a072813544872a46a9b9eb36b7c22e86` |
| 22 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--67611197f6984de0a82cb844.md) | 87 | `declaration-track:67611197f6984de0a82cb844460982db69eb160fcb7e8d3e8f13b64a2de40e9d` |
| 23 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--a81872e9e188edaeeeaf4024.md) | 88 | `declaration-track:a81872e9e188edaeeeaf4024cd5aadc314c2904a0f00cd5d7423953bd59ad6b8` |
| 24 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--99c17df71eaaff54259d9a8e.md) | 90 | `declaration-track:99c17df71eaaff54259d9a8ecdf5df3708ed74ec6f30585496ae1956862d625e` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--beef838e2752ae7a9bbdb07b.md) | 97 | `declaration-track:beef838e2752ae7a9bbdb07b1facddc7e425c8c266c5b542be3a7aae23232e0f` |
| 26 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--20209a4359130b66f5ac4973.md) | 103 | `declaration-track:20209a4359130b66f5ac4973e2e1dbf2227903ee39fbf7acc5ba2e0483ef04ec` |
| 27 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--7af8638147ea71b3542c8d3d.md) | 114 | `declaration-track:7af8638147ea71b3542c8d3da8e207ba77176777a317cebae8281c0d5e4a6c7d` |
| 28 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--88893685be1881b65f16f0dc.md) | 118 | `declaration-track:88893685be1881b65f16f0dc08abd7f169bd7507c4a740fbbc5c0f8d30f0beaa` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--fc9831dfde1eafc1c6a0cc01.md) | 132 | `declaration-track:fc9831dfde1eafc1c6a0cc014c8f11477a6f9b31fea340c5a9e7315d5f540ee2` |
| 30 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--69d563c6117cd5a4fceaedd0.md) | 140 | `declaration-track:69d563c6117cd5a4fceaedd0685515c86253e3830d9c181e3e8cefb2b0b0482f` |
| 31 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--520ad057cd67cd72a1e8d7c1.md) | 141 | `declaration-track:520ad057cd67cd72a1e8d7c1f1f00b1d3fe90541212514226ffb3127686893e0` |
| 32 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--c8ab26f267ad533011822064.md) | 142 | `declaration-track:c8ab26f267ad53301182206445f8a216f2f69639fc6e99b415d717af9e37327a` |
| 33 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--ea1eec0af7557030d622ac41.md) | 143 | `declaration-track:ea1eec0af7557030d622ac41abbac49a0ecb37821d08d6dc68d374708ad17204` |
| 34 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--e6f2a19f3ddf6c0d862eacbb.md) | 144 | `declaration-track:e6f2a19f3ddf6c0d862eacbb2a181fca48d0e96f9e33015110c14e903378b3de` |
| 35 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--e1a8a03abf4ed3cc7f556856.md) | 145 | `declaration-track:e1a8a03abf4ed3cc7f556856708c0a4c5ce58e328474ff650612b109b22ff98a` |
| 36 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--6e5667116fd4bcbc821c6f28.md) | 146 | `declaration-track:6e5667116fd4bcbc821c6f289d73175f8e81b41176822edea10647227dade741` |
| 37 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--4e404b936e106dc2b923bb0f.md) | 149 | `declaration-track:4e404b936e106dc2b923bb0f8eefcc70b6150b252f479f37f927ff71ae79d17c` |
| 38 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--ed22d1ecfc3f41428e72cd94.md) | 150 | `declaration-track:ed22d1ecfc3f41428e72cd94b4f4c347926ca64e978ef3df24bc44c45a8c06b6` |
| 39 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--be436b0273d1d2a74e23827f.md) | 153 | `declaration-track:be436b0273d1d2a74e23827fd332b746c89702febe20c535242082927ad3af02` |
| 40 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--60259946f27d2cbce3f723fc.md) | 155 | `declaration-track:60259946f27d2cbce3f723fcf320c3237f9a176ed1b08bcb393d013677a7fbde` |
| 41 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--800db34f0cbb2d2aea60b81d.md) | 159 | `declaration-track:800db34f0cbb2d2aea60b81d1a71dbc2c5bfeba642446c3a6d351774fa8aeb6d` |
| 42 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--50e162cc27da3b88a052a219.md) | 162 | `declaration-track:50e162cc27da3b88a052a219abe468d3a9e8f51f40d0b60e83cef78d65245e4f` |
| 43 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--e97cd86298696da0f4a63bb0.md) | 167 | `declaration-track:e97cd86298696da0f4a63bb0b5bedf9ab7c29fe400f7e7415f944560807130ef` |
| 44 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--1937c137900a68e2ad6ba0a8.md) | 170 | `declaration-track:1937c137900a68e2ad6ba0a81c432b00a891ece7077b63614291dc2447d5c8af` |
| 45 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--ff694e8f685093beb839b6e6.md) | 176 | `declaration-track:ff694e8f685093beb839b6e6fc94559b3ceffb982cdb8cb4d739aaff43351e08` |
| 46 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--7ce88c75995660e1230652a6.md) | 180 | `declaration-track:7ce88c75995660e1230652a6fb5d45c9a6a28e7965f879cfcaa122412b2c9d42` |
| 47 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--197f6416f1d9dc4462566930.md) | 203 | `declaration-track:197f6416f1d9dc44625669307e4dce0b3d4c8694111f5f65ef8f4e096dbb0429` |
| 48 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--614178b768d7c62d54e18239.md) | 212 | `declaration-track:614178b768d7c62d54e182390753d73b7d04a21d42fdd15f135e1cb84781d7c4` |
| 49 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--ad76ca73c349cf7de4111987.md) | 216 | `declaration-track:ad76ca73c349cf7de4111987dde57d1f8117637dbde16271a4571f7b810ea6cd` |
| 50 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--602a398e2bf571cd4a90abcc.md) | 220 | `declaration-track:602a398e2bf571cd4a90abcc4f9b3b1a765d24f5568b2419a616408dd3d1330e` |
| 51 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--a2c262f65718539c07dfb473.md) | 224 | `declaration-track:a2c262f65718539c07dfb473d40413b0baf4ee4ce4f00775976f4dcd1ef513a5` |
| 52 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--101db4a40f0a9751634cac54.md) | 235 | `declaration-track:101db4a40f0a9751634cac541284d1def1be22b1e4a2c86f82d216b7d31fbb95` |
| 53 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--effbf9cf1b20bb04c8fe65b8.md) | 237 | `declaration-track:effbf9cf1b20bb04c8fe65b836ee4f23176055117a241400cf87ad0ec1c5da96` |
| 54 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--1bf8583ea78dadee96612b2e.md) | 247 | `declaration-track:1bf8583ea78dadee96612b2ecbec1760e514aa2289a128167a1b64d9e0e3ee8f` |
| 55 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--f212b3101c2678f0452bb84c.md) | 256 | `declaration-track:f212b3101c2678f0452bb84c0adc6b8ed44c4c40b904b64fa703f9fdc5defd09` |
| 56 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--d96b89e277092783d700b20d.md) | 267 | `declaration-track:d96b89e277092783d700b20de1b7a75bd2346bcbb3b52cf47a0668211cd1a0fe` |
| 57 | `example` | [(anonymous)](../../../../mathematics/Algebra/ModuleTheory/Variant95c3906ea3081fc331e5edc516fbafd9d53231ed4b4cae6b56f0477149ffec4d.lean/declarations/example--8cbaca59416178cfe8382210.md) | 278 | `declaration-track:8cbaca59416178cfe8382210c25ed71af826b4a9b05a50ea2b3f88f278c5d462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
