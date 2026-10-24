# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ring.Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27effbad673b197074869cd2f2d11ae1069e5363",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27effbad673b197074869cd2f2d11ae1069e5363`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/test-sorry--b17101acca46f8ccf6dabcef.md) | 13 | `declaration-track:b17101acca46f8ccf6dabcef50132db8b6af9de5f086a87d6d71f11ea4f8ede4` |
| 2 | `axiom` | [Real](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/real--55b389df44c06ef77994dfdb.md) | 17 | `declaration-track:55b389df44c06ef77994dfdb05c1161987d120ebf89509cb69d83b792d203c27` |
| 3 | `axiom` | [Real.field](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/real-field--a96417e9664f6c68803d139f.md) | 19 | `declaration-track:a96417e9664f6c68803d139f87541ef215da74112e295e35947306d40279b55c` |
| 4 | `axiom` | [Real.linearOrder](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/real-linearorder--30436f49c73dfe3788ef6a73.md) | 20 | `declaration-track:30436f49c73dfe3788ef6a73b682f31341bd0f75ae3c530f2095a3e87c49f260` |
| 5 | `axiom` | [Real.isStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/real-isstrictorderedring--98d87e3c3e1e9d7cef6d11f8.md) | 21 | `declaration-track:98d87e3c3e1e9d7cef6d11f8903ae07b42758df8b2fe26a618c6464ed6bac663` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--4f4947b0137f1ec3c4b4e054.md) | 23 | `declaration-track:4f4947b0137f1ec3c4b4e054d565e218022358f42d26fc9213d63b2d8f7d1eff` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--398087e149b83fd0c3ecc148.md) | 24 | `declaration-track:398087e149b83fd0c3ecc148299cb2dd8521a94b095f9da0edfd20544bd5efb6` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--b6eb858c6135dda42fa55e1d.md) | 25 | `declaration-track:b6eb858c6135dda42fa55e1d5da0a35f9a753c6e8ea249562fe886f773231141` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--a0d7729402f66791757607d1.md) | 26 | `declaration-track:a0d7729402f66791757607d14bfeea82827c716010eca70ed3445551f8e6c432` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--e0985bbf438710e82e559484.md) | 27 | `declaration-track:e0985bbf438710e82e5594842409e645b4f206cb690b70f98b6d0571499a6437` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--85a4fc22c9ab2b8e111af132.md) | 28 | `declaration-track:85a4fc22c9ab2b8e111af132f262304bdf4d470ed0a738746f98e8fbadfe62f9` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--c8434ceb19d0d5ca135286a8.md) | 30 | `declaration-track:c8434ceb19d0d5ca135286a87163b746d373a4ff55c6b2562ed53fa72b76fbda` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--01381d5e7f6d5b7ab83f1394.md) | 31 | `declaration-track:01381d5e7f6d5b7ab83f1394c46dce92a0f984b633f7297a54c878d36878a262` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--91bbdb47fed8fb28e5d2eeed.md) | 32 | `declaration-track:91bbdb47fed8fb28e5d2eeeded6326bd34900e9dfc102e12f0066091fdd13e5a` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--c2fa7a190f64b35473cec4d1.md) | 33 | `declaration-track:c2fa7a190f64b35473cec4d136e180f80b4de931fd3fe0783565e9c7ac307d92` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--387422d6ee1d243e1da5c26a.md) | 34 | `declaration-track:387422d6ee1d243e1da5c26adec279113f1ae4e804990044ae8ff25f4620f374` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--f3ef572cb462d1bb0d3eca8d.md) | 35 | `declaration-track:f3ef572cb462d1bb0d3eca8dd147ae1f3fa4f85a2fa3ffb0b3763ead44d44f55` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--305999c8e20f88ade4f8288d.md) | 36 | `declaration-track:305999c8e20f88ade4f8288d64b207f2ebec42697ebf4ad611176d9a709a168d` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--7683cdd198bb4e8807566f1e.md) | 38 | `declaration-track:7683cdd198bb4e8807566f1e676e1281062d434c41e63bb6baab4494cd8b3dab` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--f3aaa5d28fad2b0fd96b2c66.md) | 40 | `declaration-track:f3aaa5d28fad2b0fd96b2c66ec76c48ad608303153a35b32a08f3aa318a7357c` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--3bb7e6d64f7e1878c72626ed.md) | 41 | `declaration-track:3bb7e6d64f7e1878c72626edb593b912485c593faa5f0e6ef40f7f66d81aeadc` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--9668558887cef64cc466bd28.md) | 42 | `declaration-track:9668558887cef64cc466bd28a883603a52b375a33f2a23816a1ca1159d29b77f` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--e410f40fc5c9a0d044e0bbb1.md) | 44 | `declaration-track:e410f40fc5c9a0d044e0bbb1e58acf79c4bb08c3faff33199555c70cc5810811` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--468ac8931f67e2a2ed64659e.md) | 46 | `declaration-track:468ac8931f67e2a2ed64659e68eba843a79a54190ad9c886b64c7fdccb50ce17` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--b5411176e02c609f785c04ee.md) | 48 | `declaration-track:b5411176e02c609f785c04ee75606ec4e6da463e3f9b28d872632274c5ab2f4d` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--ea6c07901847ee5c9a6eda2f.md) | 52 | `declaration-track:ea6c07901847ee5c9a6eda2f97472341ca99ed770a0099aa3c9c8d1c6c4781d4` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--87cc7c6e88ba374901fb75bc.md) | 54 | `declaration-track:87cc7c6e88ba374901fb75bcfffe5b090d422ac7fc3ba210cccfcc1c1a8b4322` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--941d7cbf6c00e0f428fef09e.md) | 60 | `declaration-track:941d7cbf6c00e0f428fef09e83ac6655542dc69ceb1505810cdc2ddb03d3fada` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--4e7109935f808d0804dcd843.md) | 61 | `declaration-track:4e7109935f808d0804dcd84351eeadbaaebcefad9d579366951e9f9f1fe50196` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--311357020a85385679089850.md) | 62 | `declaration-track:311357020a853856790898500882d7edd42d770b179dc892b6a8618afb9a9de3` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--d02424e447d750cac44e8417.md) | 63 | `declaration-track:d02424e447d750cac44e84173446fbfb0e53d332a01ededbb2694026d4356657` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--39be3349cf06b4e1b0710834.md) | 64 | `declaration-track:39be3349cf06b4e1b071083481264864deff6291744fb1197974f121aa954e0d` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--5c5ae43d145592bede7d2754.md) | 65 | `declaration-track:5c5ae43d145592bede7d2754580b1346ec0e16e50968d0d415eb652489363f0e` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--759d26b26db3bbb291a6527c.md) | 67 | `declaration-track:759d26b26db3bbb291a6527c61ac7e11e78bc5dc5ee097594db43c5442aa0792` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--a6ef93aedccded87c73508c1.md) | 68 | `declaration-track:a6ef93aedccded87c73508c1f07f8d5253b10bb46285cc7c74652dd4f396156e` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--21245b473549580fffde3ef3.md) | 69 | `declaration-track:21245b473549580fffde3ef37a4e36db7742b690d36a93b0bb2f0e4d5c31c8b0` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--f19146e12c1422b2a9b885fb.md) | 73 | `declaration-track:f19146e12c1422b2a9b885fb01a812c5576f3320b9ebc6494dd3478fe4e5fb3a` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--03b90013216c33af61198fa2.md) | 74 | `declaration-track:03b90013216c33af61198fa29312adb5392e41a286f9f576844ec067ec38f60e` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--aa425c89b4f38bf162c2457c.md) | 78 | `declaration-track:aa425c89b4f38bf162c2457ce2c78e1566a12b6b596a1c5cb795ac64a41f3f60` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--7563ccdd30cfafc0a474d38e.md) | 80 | `declaration-track:7563ccdd30cfafc0a474d38e7e79cdac91cf5d0fe0f107068f6ac50d663a2a3d` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--fd3e2593a311d2e35452528d.md) | 85 | `declaration-track:fd3e2593a311d2e35452528d04a4786473d8ab961e4414912ab572a6a2ee53b4` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--b9482e585f7e3cc97fff4313.md) | 90 | `declaration-track:b9482e585f7e3cc97fff4313825c93fca3ce8845059727c7e15d239eaa1e7097` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--2f5ceb8522f24f101f0669f1.md) | 92 | `declaration-track:2f5ceb8522f24f101f0669f1b5a128c80a20ddddc3e77d21263d630f2684f6eb` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--f6146cb263a189870968cf8e.md) | 99 | `declaration-track:f6146cb263a189870968cf8e611ac854039e1983719a7b09cb0ca28a3f1cfc6c` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--bad5c44e325990361157e04b.md) | 104 | `declaration-track:bad5c44e325990361157e04b69b0d7c5074cf902a2ea47f1d4738f2d7dce2a01` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--f7f9b2d28a4eddf146f263c3.md) | 106 | `declaration-track:f7f9b2d28a4eddf146f263c341d5cfcc1eec11693eeb478c539e4a092bfaf1db` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--e871b37d2c1343e5c86e8841.md) | 109 | `declaration-track:e871b37d2c1343e5c86e884121b39478f9563a909d189874ac8a62a59d791f98` |
| 48 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--fdafd5114a95b488345bb1ff.md) | 110 | `declaration-track:fdafd5114a95b488345bb1ff66c42f61ca500cb75e9abcde0b650b3cdfe46972` |
| 49 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--c1d3538da37c593bb38429c0.md) | 111 | `declaration-track:c1d3538da37c593bb38429c0a108c83f3516a2e3651de1fda53e9207fda96a4e` |
| 50 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--a90bd5840fe351df08d766a8.md) | 114 | `declaration-track:a90bd5840fe351df08d766a8988c3618262713c84d39303e7b0eb67f66ac8525` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--d07475a69ae6d41448ee9b7d.md) | 123 | `declaration-track:d07475a69ae6d41448ee9b7d85471d5e65d074cc4f24a3a555b3be08f16eecc9` |
| 52 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--f2e7b525b47b29002665efb4.md) | 128 | `declaration-track:f2e7b525b47b29002665efb4e3a58d2a2cff17322b319eae8a19219ab50b3be0` |
| 53 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--f82915ba73245f9fd64385c3.md) | 137 | `declaration-track:f82915ba73245f9fd64385c3620b89c7fe35369f2abf353c844dfecf9c5af3d8` |
| 54 | `def` | [f](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/f--2aae98c30d7b7cd0a87724ac.md) | 143 | `declaration-track:2aae98c30d7b7cd0a87724acfe2f4d8562577a06dcf26f61600996f8fe83b067` |
| 55 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--ae2415b16c22243050a796f6.md) | 145 | `declaration-track:ae2415b16c22243050a796f6f4293c331699dfb92ba19f236062e728d7c625a9` |
| 56 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--9dce00592f67bd6b03a9da32.md) | 151 | `declaration-track:9dce00592f67bd6b03a9da3232f215c07b56963069c5bdcd0128a7bc0418d2ae` |
| 57 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--1c44fa1acb6a3d7b266df574.md) | 156 | `declaration-track:1c44fa1acb6a3d7b266df57490d7fdf10a705cb6cd9ae1b4832a90830e5428cd` |
| 58 | `def` | [R](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/r--a370e8b260d3160b05d4dc6f.md) | 159 | `declaration-track:a370e8b260d3160b05d4dc6fdb7573223c6e67f507690250987d39fcacfef938` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/instance--c6d6f1a34a4e4980b1b4bd7b.md) | 160 | `declaration-track:c6d6f1a34a4e4980b1b4bd7b7963e8c796697e1fbde5cb48ff397f41735b9f6d` |
| 60 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--9225c6b5aedb0460a70ee3cc.md) | 162 | `declaration-track:9225c6b5aedb0460a70ee3cc87262b6cc571bc4f791ed9b9ba952fb50469b64f` |
| 61 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--2895bbb497c879a4e5fb20aa.md) | 164 | `declaration-track:2895bbb497c879a4e5fb20aaf34c2cfeb34063d85fdb7ae8a81284a104f4f20c` |
| 62 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--e010e318b04cb9fdbb2c58fa.md) | 168 | `declaration-track:e010e318b04cb9fdbb2c58fa11e3b8afd0f6c081f40c6bf4512beff3f4c48620` |
| 63 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--1a532aefa99b986ade2ce2e8.md) | 170 | `declaration-track:1a532aefa99b986ade2ce2e8ac81610e650d5f44f65aeba5f63292f279178362` |
| 64 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--178ea8745acccc32d9d9cde3.md) | 174 | `declaration-track:178ea8745acccc32d9d9cde399f577cd10d9158a7715caadd310e8fe3d8e9dab` |
| 65 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--fbe7b7f35fcb1191d053a521.md) | 187 | `declaration-track:fbe7b7f35fcb1191d053a521e7181eb8af9864ae1eaadf22b345bb27eb5aa26c` |
| 66 | `abbrev` | [myId](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/myid--20685b17df72befe4b34b85e.md) | 193 | `declaration-track:20685b17df72befe4b34b85e0b528adc20b6f25d45ba7331e247e5e6177ae5a3` |
| 67 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--8dbee181ec019cc7a073125f.md) | 209 | `declaration-track:8dbee181ec019cc7a073125f6b8eaf23020b1e6622969d2697696a756c45293c` |
| 68 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--7bdf10e31bba4aae9b11c91a.md) | 219 | `declaration-track:7bdf10e31bba4aae9b11c91af1f400e0a5ecee126fae4d2c5e88ba7fe40a39a3` |
| 69 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/declarations/example--173503094421731fae67645a.md) | 240 | `declaration-track:173503094421731fae67645a4c3eb22646587df3faf86fa8691dff6ad223bc68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
