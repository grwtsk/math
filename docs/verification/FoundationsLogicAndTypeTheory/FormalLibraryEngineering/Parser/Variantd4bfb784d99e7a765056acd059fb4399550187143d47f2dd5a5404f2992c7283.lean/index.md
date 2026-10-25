# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parser.Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "480d3a1339bbb314f64c5b7bc4f5977b73178c94",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `480d3a1339bbb314f64c5b7bc4f5977b73178c94`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getPivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/getpivot--2be72200d725282f1a664b3f.md) | 35 | `declaration-track:2be72200d725282f1a664b3f515fc4d32a28dc1a09fd401efba0a71becccb6ae` |
| 2 | `def` | [skipNewline](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/skipnewline--a00eb7ef4ee8947c0f55ad7a.md) | 49 | `declaration-track:a00eb7ef4ee8947c0f55ad7a19c01d4c4871b5fd1876f0d52c4d00ffb88fc9b2` |
| 3 | `def` | [parsePos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parsepos--a160352235b1fb0aa2665d73.md) | 61 | `declaration-track:a160352235b1fb0aa2665d739825176833285dfd54bff43da9338a2f4f51e27b` |
| 4 | `def` | [parseNeg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseneg--00f567f8ab8b858fc554246e.md) | 69 | `declaration-track:00f567f8ab8b858fc554246e17968527c63472c06d9b62ca49074a75bf9a4cd4` |
| 5 | `def` | [parseId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseid--dd20cc140b18be1c46b38176.md) | 75 | `declaration-track:dd20cc140b18be1c46b3817691aa12088bed829e59cf547b3706831d616fa441` |
| 6 | `def` | [parseZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parsezero--3d118624ffc43f2dd0463209.md) | 78 | `declaration-track:3d118624ffc43f2dd0463209611a6c27b6f23a56e4ba6499f8e2f7880b73d478` |
| 7 | `def` | [parseIdList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseidlist--7980bc5c6b0c54597489972b.md) | 80 | `declaration-track:7980bc5c6b0c54597489972bd19280bfeac466beca09ec0455191d145f45f896` |
| 8 | `def` | [parseDelete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parsedelete--3a4d3dce5b05de902a264e9e.md) | 89 | `declaration-track:3a4d3dce5b05de902a264e9e65909c5444cf1f24e5edd94341dcdd34e8826025` |
| 9 | `def` | [parseLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parselit--10c7ef2d48e524a489fc8940.md) | 97 | `declaration-track:10c7ef2d48e524a489fc89404069fc0e36c0b3f868d89a974d9bf561e1b24fdb` |
| 10 | `def` | [parseClause](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseclause--acfb9ed9aa667e6c78de3b4d.md) | 103 | `declaration-track:acfb9ed9aa667e6c78de3b4dd6b5ee32acca728eb3df22489034028f7312e920` |
| 11 | `def` | [parseRes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseres--c791d1be7c917ccecde9e829.md) | 114 | `declaration-track:c791d1be7c917ccecde9e82920118e58e1dd5291c4404f9a0e2a80119ad23899` |
| 12 | `def` | [parseRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parserat--15618b5e5b9e6d59210922ac.md) | 120 | `declaration-track:15618b5e5b9e6d59210922accc5f0c0a33d4eb8cafe4bf22bb91d2373f33a183` |
| 13 | `def` | [parseAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseaction--5e264a325ee96f1476c26e9c.md) | 132 | `declaration-track:5e264a325ee96f1476c26e9cd5e4671c9c9a11844167efd5d9c4ee99d81f28e9` |
| 14 | `def` | [parseActions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseactions--d54945958ad00d699dd9d620.md) | 140 | `declaration-track:d54945958ad00d699dd9d6205ed70930898201d0faa343def3b695c6ea805f17` |
| 15 | `def` | [parseZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parsezero--e1416f266ada77469487b366.md) | 165 | `declaration-track:e1416f266ada77469487b366fa4ef652db084cffc109344b2057d9eeb264697d` |
| 16 | `def` | [parseLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parselit--538c3b5b8b25b4deed66be38.md) | 169 | `declaration-track:538c3b5b8b25b4deed66be380f20058139d585eba1fd300e708b0a0b768b1392` |
| 17 | `def` | [parseNeg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseneg--916958255bba9d26c3465b61.md) | 190 | `declaration-track:916958255bba9d26c3465b6179c052377026e157d03a879cd3628a50821f31a5` |
| 18 | `def` | [parsePos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parsepos--69daab7ad01ccbe81e755266.md) | 198 | `declaration-track:69daab7ad01ccbe81e755266eb748c342da73ce056ac8050f7cbf98bfb595a42` |
| 19 | `def` | [parseId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseid--f352b0e1e56fd04e90c136e2.md) | 206 | `declaration-track:f352b0e1e56fd04e90c136e29b43922318c34ae31dbc0255b4ea42af38404ed0` |
| 20 | `def` | [manyTillZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/manytillzero--ab479922e373d67013fbb0e9.md) | 209 | `declaration-track:ab479922e373d67013fbb0e9f13225bdc3fe30fd370058bc3ac1950cbedc7535` |
| 21 | `def` | [manyTillNegOrZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/manytillnegorzero--71f01db9e50e5c2b6ac57764.md) | 221 | `declaration-track:71f01db9e50e5c2b6ac57764d2bf20682c044651fef0dbae7ccb9a0902c7559b` |
| 22 | `def` | [parseIdList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseidlist--58f4d6a5dc906a1a6216ef1f.md) | 234 | `declaration-track:58f4d6a5dc906a1a6216ef1f37dacbbc60ef5c9d0c7acefa9a662d3923eb8667` |
| 23 | `def` | [parseClause](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseclause--1a1adc58fcc48dd926f3e988.md) | 238 | `declaration-track:1a1adc58fcc48dd926f3e9888124919d4cc53e8a20c351f50cbcad93d7e95e1e` |
| 24 | `def` | [parseRes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseres--af0a58620aff3e153348821a.md) | 241 | `declaration-track:af0a58620aff3e153348821a43db3ebdb3c7617eddcc3b4f44fe08a215cc953f` |
| 25 | `def` | [parseRatHints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parserathints--4acffc1f37df7fe81bd68c6a.md) | 247 | `declaration-track:4acffc1f37df7fe81bd68c6aeb4ef1ec6fe5580c0570cfec768ebb66e33a421e` |
| 26 | `def` | [parseAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseaction--a38e149aa4291827b0dac08c.md) | 250 | `declaration-track:a38e149aa4291827b0dac08cf3b3b1a44222c832db43db89c743b93c7bd014fa` |
| 27 | `def` | [parseActions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseactions--d0d9fa460b0d56e58adf0d0e.md) | 277 | `declaration-track:d0d9fa460b0d56e58adf0d0e173ec1c2bfd109384a64e9582d54e422abb0bfcd` |
| 28 | `def` | [parseActions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parseactions--d0f819e59f200a478c91563d.md) | 287 | `declaration-track:d0f819e59f200a478c91563de68890e9f5f358a89bba874f499a966608cb25df` |
| 29 | `def` | [loadLRATProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/loadlratproof--285fb66b7e92c318c035b8ba.md) | 300 | `declaration-track:285fb66b7e92c318c035b8ba394ce4ea5f89bb1ba6c36223119a7003820683ef` |
| 30 | `def` | [parseLRATProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/parselratproof--d051de623d21efe093f9b7b8.md) | 309 | `declaration-track:d051de623d21efe093f9b7b8c5c277d8cf87335a56f60a37e561ba8c8de3788c` |
| 31 | `def` | [lratProofToString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/lratprooftostring--8511e9265f965039744c6eca.md) | 315 | `declaration-track:8511e9265f965039744c6ecae705ea9c6fb5d092d608cce35fa867738394cebc` |
| 32 | `def` | [lratProofToBinary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/lratprooftobinary--a3f25963e5b07ddf06c74dbc.md) | 345 | `declaration-track:a3f25963e5b07ddf06c74dbca76de4e212a7cebc9e249975b8cc6d885620fd9b` |
| 33 | `def` | [dumpLRATProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/declarations/dumplratproof--88655de8ebc0efe931c814da.md) | 428 | `declaration-track:88655de8ebc0efe931c814dad81e508a4bdecb2207171e073793abf082c891ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
