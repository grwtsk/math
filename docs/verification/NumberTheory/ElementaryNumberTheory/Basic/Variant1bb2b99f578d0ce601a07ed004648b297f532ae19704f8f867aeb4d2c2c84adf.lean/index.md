# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51633e5745d577d3a35be26bb1f2f6978a245ce1",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51633e5745d577d3a35be26bb1f2f6978a245ce1`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Nat.Gcd` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/rat--2f06a0ad177440a6ddefb4b5.md) | 15 | `declaration-track:2f06a0ad177440a6ddefb4b538b87249bcb98510b3c2e0cbd9eb3b92a988b1d2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--3490e24c3de731abcb69839b.md) | 29 | `declaration-track:3490e24c3de731abcb69839b2d89158befa8c3971ac17d57eb1b93256fc0d9ce` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--69f9371c9c3e1a19e4c474ea.md) | 31 | `declaration-track:69f9371c9c3e1a19e4c474eab0b0c47fa78a0f416a13303cef8708974fc5f8b0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--4589c68856d0326a7dc58520.md) | 34 | `declaration-track:4589c68856d0326a7dc5852098cc5d95ab57d6a29c45cdbbee1821a5fef68c46` |
| 5 | `theorem` | [Rat.den_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/rat-den-pos--5e22e84009e5923df6590b8f.md) | 37 | `result-track:5e22e84009e5923df6590b8faad8ae908640468350af6552560ea2f66b60e01e` |
| 6 | `def` | [Rat.maybeNormalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/rat-maybenormalize--6137ac5f32d2ee2e41c58176.md) | 43 | `declaration-track:6137ac5f32d2ee2e41c58176f47dc125104cb0a055d9d731a6b19d0739ae9c70` |
| 7 | `theorem` | [Rat.normalize.dvd_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/rat-normalize-dvd-num--766cf68e10b4d76b3b480935.md) | 52 | `result-track:766cf68e10b4d76b3b480935ca8e144a0c457e6f55ba3044a50688f8dde65442` |
| 8 | `theorem` | [Rat.normalize.dvd_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/rat-normalize-dvd-den--47c3e8dd745f4faf5e6b2fe4.md) | 57 | `result-track:47c3e8dd745f4faf5e6b2fe4e96ee042d437f1f6a08a1c09fe9a265e397f03cc` |
| 9 | `theorem` | [Rat.normalize.den_nz](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/rat-normalize-den-nz--08cd697017076154d1a874df.md) | 61 | `result-track:08cd697017076154d1a874dfdec6f53ddaf70c85f8d2d1ad3d1b15d9798cd170` |
| 10 | `theorem` | [Rat.normalize.reduced](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/rat-normalize-reduced--46fcaa3c30340bf150a5d6f0.md) | 65 | `result-track:46fcaa3c30340bf150a5d6f06ea5abdcca6bd79b073a5ae04ba93436c163b81e` |
| 11 | `def` | [Rat.normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/rat-normalize--c777e6d731c4eee8ad25abfc.md) | 76 | `declaration-track:c777e6d731c4eee8ad25abfcc9c6254bde40bba9ea7035bdb54b1d29720f78bc` |
| 12 | `def` | [mkRat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/mkrat--ebb4764ba29ee8d8bac0e695.md) | 87 | `declaration-track:ebb4764ba29ee8d8bac0e6951a866b628c597b8b95972235bf915a4d873b2dd5` |
| 13 | `def` | [ofInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/ofint--1b351ac46831528e2895cc36.md) | 93 | `declaration-track:1b351ac46831528e2895cc362a0a51e713109bd08950497b0f984757af4d07a9` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--441cf0c090b74a3f19341d92.md) | 95 | `declaration-track:441cf0c090b74a3f19341d9231690b3b022096125c26950105c524f3229e0bd4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--33f57180b0191c0d83e79480.md) | 97 | `declaration-track:33f57180b0191c0d83e7948005bba909b775990e19b3da18cba1d1b6319c71ba` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--d36e47548a0b4e77e34acda5.md) | 99 | `declaration-track:d36e47548a0b4e77e34acda5c18b54c7dd7d651a7e8198d96164907f8f1bc254` |
| 17 | `def` | [isInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/isint--f50f6001a3443bc98ba8780c.md) | 102 | `declaration-track:f50f6001a3443bc98ba8780c2533009d6639cfbffab056a3f44c14d45bcf6240` |
| 18 | `def` | [divInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/divint--102edde26a4495c85dd4e748.md) | 105 | `declaration-track:102edde26a4495c85dd4e748095e0a2e0b975ef7b58ca2bb5943d0fbd5e20eec` |
| 19 | `def` | [ofScientific](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/ofscientific--ad887300cb82e3a42d4fc8e0.md) | 114 | `declaration-track:ad887300cb82e3a42d4fc8e05eeb19a0d15797d07fe96581f11924fc203bab64` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--11e12dba137ee16a8cd30dec.md) | 120 | `declaration-track:11e12dba137ee16a8cd30dec41e0f822805d5901ee972094017da0caaf5b415f` |
| 21 | `def` | [blt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/blt--52582d12f0f8050d77ed6acc.md) | 124 | `declaration-track:52582d12f0f8050d77ed6acca6155c3d26dc08c5a0fcabcf346f4451725ac99c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--c587079dc846551d8c5a3175.md) | 135 | `declaration-track:c587079dc846551d8c5a3175f357e7ccf60c169975be62f377ce9d71ea262b48` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--22ed837daae50f2dadf06ae5.md) | 137 | `declaration-track:22ed837daae50f2dadf06ae5fea6e9ce717ed2e2c62bd16bd69067c5ff09f219` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--122ee8f2e348d86c1c05ab28.md) | 140 | `declaration-track:122ee8f2e348d86c1c05ab2868599e02a5ebdaafec2d3a32171bb2982ecc6592` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--e538e76be79374e1c374d829.md) | 142 | `declaration-track:e538e76be79374e1c374d829ce78f717b0d5b05f8159c9a05c0bb1034853494d` |
| 26 | `def` | [mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/mul--04e5cc3da69f27f1e4056039.md) | 147 | `declaration-track:04e5cc3da69f27f1e40560398e1e218528c89ffd83be4403c0544fe20e294421` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--bd8beda49d337ed4a5153006.md) | 164 | `declaration-track:bd8beda49d337ed4a51530064702be5374cd2ca5d79791dafacfa92e42987b0a` |
| 28 | `def` | [inv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/inv--f26b07b8eba31e6fc0ff0c31.md) | 170 | `declaration-track:f26b07b8eba31e6fc0ff0c3173d479e0eff334eb945f4eadacadeb55830fec88` |
| 29 | `def` | [div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/div--501b610f54764b67562cf21b.md) | 183 | `declaration-track:501b610f54764b67562cf21b1b029525d95c99c6f53dd896114a86394d947bac` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--7bf8eb7442827550d55afa86.md) | 187 | `declaration-track:7bf8eb7442827550d55afa86ac8a6d5ee64ab519806a87a62ba80e313e7f7bfb` |
| 31 | `theorem` | [add.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/add-aux--3217c60990ccd31bfb49e4b3.md) | 189 | `result-track:3217c60990ccd31bfb49e4b3215ee8afd2be155385a8e994822f786bb4d3234c` |
| 32 | `def` | [add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/add--6800b7fec9536f5d6015432b.md) | 221 | `declaration-track:6800b7fec9536f5d6015432b9268b500a4892565d19d61088214be0db9170c04` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--00edbb1caff388326b9e2676.md) | 237 | `declaration-track:00edbb1caff388326b9e26764bf3ec4f33f8da8152484af3bf813c632d3a13d4` |
| 34 | `def` | [neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/neg--18676367db3b5a9cf245b55f.md) | 240 | `declaration-track:18676367db3b5a9cf245b55feeb5e8b33f2215530984dc2ea6b99ce9406eb964` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--a1386a4a38812a0b8f6faa3a.md) | 243 | `declaration-track:a1386a4a38812a0b8f6faa3a7929040e2f644373ef9ba7d80d7f4a9e888a1b19` |
| 36 | `theorem` | [sub.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/sub-aux--3c886dc1c04e849f70495a1e.md) | 245 | `result-track:3c886dc1c04e849f70495a1e8dd6a1221ea535ca38fe38831f541add21c6c06b` |
| 37 | `def` | [sub](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/sub--115137a55f4eee414123e04e.md) | 256 | `declaration-track:115137a55f4eee414123e04efa38889182485023ae33096639d54bb9080199ec` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/instance--78b0019986442450638ff54c.md) | 272 | `declaration-track:78b0019986442450638ff54c12031ab3499dfe8f5f5b00ba16ce64c714584113` |
| 39 | `def` | [floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/floor--5aea540f05f1d8e401b98b4f.md) | 275 | `declaration-track:5aea540f05f1d8e401b98b4f72aa7145d498e2c255214d73c87ae64b11e6f42e` |
| 40 | `def` | [ceil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/declarations/ceil--88bcb2461d18c6004255aaba.md) | 282 | `declaration-track:88bcb2461d18c6004255aaba3c64881c3579ccbcbbe376a92fd8bc5cdd28e2a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
