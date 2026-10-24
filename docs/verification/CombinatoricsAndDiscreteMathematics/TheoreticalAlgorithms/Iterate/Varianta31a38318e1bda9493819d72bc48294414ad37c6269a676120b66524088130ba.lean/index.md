# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterate.Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "408258e8ae28f70f3b3a17f53ad353fc595a326f",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `408258e8ae28f70f3b3a17f53ad353fc595a326f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Collect` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PosIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/positerator--9b93e51338cadc7378432265.md) | 23 | `declaration-track:9b93e51338cadc737843226566f58762a8bc57ebfa322224dd8a2f3ef3fe7b23` |
| 2 | `def` | [positionsFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/positionsfrom--7f463256e36004e82503ee5c.md) | 31 | `declaration-track:7f463256e36004e82503ee5c35aefa3cf9bf85107bba8e0ac11d04816e202768` |
| 3 | `def` | [positions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/positions--d2e61e0ba766b9cd81c9ce5a.md) | 45 | `declaration-track:d2e61e0ba766b9cd81c9ce5a1cd4d83431be24345252c2388752a741fd4b7596` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--5bf6483f11f87416f8f7f67f.md) | 52 | `declaration-track:5bf6483f11f87416f8f7f67f2d79ce87793fb2cc2ceb3e479d0e7d6adeb2bd94` |
| 5 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/finitenessrelation--88ac853b2a6dd3ba23852021.md) | 67 | `declaration-track:88ac853b2a6dd3ba23852021664aedb4bf5d1be3a6bf83c8b6f517feda7941b5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--62709ab0c9924495bbfac0fa.md) | 85 | `declaration-track:62709ab0c9924495bbfac0fa6f571782e9617e43a32ee4ac10c7ed24d33418ad` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--b7d4748a77b16876ba9c64b7.md) | 88 | `declaration-track:b7d4748a77b16876ba9c64b76c340ee967ecc3c7dbe243218add6ce63934c818` |
| 8 | `def` | [chars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/chars--ddb2406bb8f76f5ecaaae953.md) | 103 | `declaration-track:ddb2406bb8f76f5ecaaae9534b58da1da791ad76cdb0697de2009f9ab500cf5a` |
| 9 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/length--b292ad4db58ce23dc23663b4.md) | 107 | `declaration-track:b292ad4db58ce23dc23663b4d2b716d88722ba2c763860023656f898e0c8cf6b` |
| 10 | `structure` | [RevPosIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/revpositerator--fb7b72fbf9175d3fdcad9df3.md) | 110 | `declaration-track:fb7b72fbf9175d3fdcad9df3ed99a31b4d42a7eee2ecb5d46dc5e873885f7f71` |
| 11 | `def` | [revPositionsFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/revpositionsfrom--c2267fbdb9d1dd306d38bf9b.md) | 118 | `declaration-track:c2267fbdb9d1dd306d38bf9bcb6f6ca77e0586418eea92da326ba625e7100c23` |
| 12 | `def` | [revPositions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/revpositions--da26233984ff2e4d3ad0735b.md) | 132 | `declaration-track:da26233984ff2e4d3ad0735b9a62e93ef34c0125e169c793e94c8bdec0d87a55` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--664ea796f7a01df1bbcdf739.md) | 139 | `declaration-track:664ea796f7a01df1bbcdf739070a5d467789491158394e1d5c4b307de7cd79b3` |
| 14 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/finitenessrelation--60e4737265993db04c17b808.md) | 155 | `declaration-track:60e4737265993db04c17b808399968d08e493de84c0cd29d7e93b37b1e8e86b3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--eaf5f7b18aaaa77ed92e968f.md) | 172 | `declaration-track:eaf5f7b18aaaa77ed92e968fa9f67d55b5f73bc8062b027c3e004242a19af1b4` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--44d569de2f440568c9b05159.md) | 175 | `declaration-track:44d569de2f440568c9b051592649d342fc3295f18ec2013a23722a392f21bb7e` |
| 17 | `def` | [revChars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/revchars--6914f4d0ae45b29c20556865.md) | 191 | `declaration-track:6914f4d0ae45b29c2055686504081c9defd731f609b8b8c267e9da4796e8c680` |
| 18 | `structure` | [ByteIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/byteiterator--e2472c06420026928676fae9.md) | 194 | `declaration-track:e2472c06420026928676fae9a284cf70341273e2114bde71412d9d909df03c10` |
| 19 | `def` | [bytes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/bytes--cf6725f6b4aae2947b8292a9.md) | 207 | `declaration-track:cf6725f6b4aae2947b8292a9d7aa1747ae16ee2397fe51e24172827809ef977c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--7d87e227cf09d66bf42f2ca8.md) | 214 | `declaration-track:7d87e227cf09d66bf42f2ca87888ca28473d5c1091c2292fdb5a51eaa34d2066` |
| 21 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/finitenessrelation--a276581f8b58c18aeaf2ecd6.md) | 229 | `declaration-track:a276581f8b58c18aeaf2ecd6bb8d7306cecb6f678b722289cdd5c9c7a52beeb1` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--1e0fff6e829044f805972ab5.md) | 248 | `declaration-track:1e0fff6e829044f805972ab57b24c9dd1e3ccdaa2c6ce137446b8aee26259dbd` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--5a162b3a3241552feca34da3.md) | 251 | `declaration-track:5a162b3a3241552feca34da365573fe0045af8a5349e50838613238d563a688d` |
| 24 | `structure` | [RevByteIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/revbyteiterator--0990263c9e58abf809cebf5f.md) | 258 | `declaration-track:0990263c9e58abf809cebf5f20ab7d5dfff2bf631aa33ce6803588b12241c298` |
| 25 | `def` | [revBytes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/revbytes--423ac05da7d2167e4006ba61.md) | 272 | `declaration-track:423ac05da7d2167e4006ba61d77dd8cc7716f86692b494a4a5cbf9c02f2310d9` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--4b6e2250a2a628ab8689af93.md) | 277 | `declaration-track:4b6e2250a2a628ab8689af935afda9622dd323effa53b88d25a60d848f0fa21e` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--eb1dea4ccdb91fc405c13628.md) | 284 | `declaration-track:eb1dea4ccdb91fc405c1362881e9c87b4dd109754055bb8c6faeb4a192ae38df` |
| 28 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/finitenessrelation--3d80425bdb84b6fbf8c51afb.md) | 308 | `declaration-track:3d80425bdb84b6fbf8c51afb7188f276491202dfff15d7644a02ce10ece399d4` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--bd8ffea4e86de4a0f758766c.md) | 325 | `declaration-track:bd8ffea4e86de4a0f758766cfbdcd115f5da70e7ba2fb5b1fbb95725b99d2248` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--b0c89c66eb93c1fb6659fe80.md) | 328 | `declaration-track:b0c89c66eb93c1fb6659fe80d84336fccd8fbe671505adea2ad02faeeb0239a1` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--bbacc01ebfd756a213e45ccc.md) | 333 | `declaration-track:bbacc01ebfd756a213e45ccc031e356a99bebd20afb5412351919a20ee5b9a53` |
| 32 | `def` | [foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/foldl--00e6e674a6529b1464a76553.md) | 348 | `declaration-track:00e6e674a6529b1464a7655327115c8f27756ba6e07946d9e48202fb488d120a` |
| 33 | `def` | [foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/foldr--158ba031786acbb6fd58e567.md) | 361 | `declaration-track:158ba031786acbb6fd58e56782cac62ae4bce03476e664a5aa3406013f04912c` |
| 34 | `def` | [Internal.ofToSliceWithProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/internal-oftoslicewithproof--9a5b10c28294831657c5edad.md) | 367 | `declaration-track:9a5b10c28294831657c5edaddfd25902453293570a894716b3c3643a18252578` |
| 35 | `def` | [positionsFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/positionsfrom--9ba249a559a4db7703078506.md) | 374 | `declaration-track:9ba249a559a4db7703078506d44937d52662fef92b49fd982ba1981186962ebe` |
| 36 | `def` | [positions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/positions--15c61f46d3696fdb8a999599.md) | 388 | `declaration-track:15c61f46d3696fdb8a999599d2e92157d3319712291a98927a59356a4c0c4d72` |
| 37 | `def` | [chars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/chars--808ec78a33eff7648744fbff.md) | 399 | `declaration-track:808ec78a33eff7648744fbff48058b4240e730f8d1ca75c1ffe67346cc6a1312` |
| 38 | `def` | [revPositionsFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/revpositionsfrom--064190f7539db763b219c2e4.md) | 406 | `declaration-track:064190f7539db763b219c2e4fa5c880b30f6726534a66f9a8e8a5286aa8d94bf` |
| 39 | `def` | [revPositions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/revpositions--9200203ae81eb73cd29ad420.md) | 421 | `declaration-track:9200203ae81eb73cd29ad420585b84bf78b2f3492971a95118ecb333e5a7e8ac` |
| 40 | `def` | [revChars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/revchars--7897b0ab7adac9c2e99ca891.md) | 433 | `declaration-track:7897b0ab7adac9c2e99ca891f7e1adda752697f87077409c6c6d05bb6e55d460` |
| 41 | `def` | [byteIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/byteiterator--3f64954f7c628f68adb5f530.md) | 444 | `declaration-track:3f64954f7c628f68adb5f530483210701c50b0c20efe75700b8571d7aa06ddc9` |
| 42 | `def` | [revBytes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/revbytes--a9dd1934561e750c4d1ed327.md) | 456 | `declaration-track:a9dd1934561e750c4d1ed327cb5b516f03308ab1cbb9d27c253d5e718845e8af` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/instance--6226392320291ce07495649d.md) | 459 | `declaration-track:6226392320291ce07495649d552a87719b76e0d6e5fead2da46c884ab97f90d6` |
| 44 | `def` | [foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/foldl--acc6e43467ba075660e0107c.md) | 471 | `declaration-track:acc6e43467ba075660e0107c0245defb68a10dedd8558e4d5f531f36d14bb175` |
| 45 | `def` | [Internal.foldlImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/internal-foldlimpl--db213656617fd024e7b488c6.md) | 475 | `declaration-track:db213656617fd024e7b488c6d05e617ed42ae88993d0a6ca1b5f175158634e89` |
| 46 | `def` | [foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta31a38318e1bda9493819d72bc48294414ad37c6269a676120b66524088130ba.lean/declarations/foldr--1f7ab85a34c66eb06410b0c7.md) | 487 | `declaration-track:1f7ab85a34c66eb06410b0c715cd5bdefa64fc4066d92ff238000d728b0eb26f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
