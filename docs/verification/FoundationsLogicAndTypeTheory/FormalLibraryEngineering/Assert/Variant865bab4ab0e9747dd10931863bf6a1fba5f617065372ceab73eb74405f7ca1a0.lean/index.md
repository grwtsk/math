# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Assert.Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fa365256ec5393e9e5fb507f4d59c842f974b0a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fa365256ec5393e9e5fb507f4d59c842f974b0a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Propagator` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Grind.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.PropagatorAttr` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.Util` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.Proof` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkProofForPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/mkproofforpath--7ffe02bb76e15a48cfa6c09a.md) | 27 | `declaration-track:7ffe02bb76e15a48cfa6c09a7c9f5f4b95f57ab3577d8a2995f0ef8f7aaddefe` |
| 2 | `def` | [setUnsat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/setunsat--e26b6c909d4888316426b174.md) | 42 | `declaration-track:e26b6c909d4888316426b1743f0562419cbc8734c4e6c5a54bd57c5bc80c313f` |
| 3 | `def` | [setDist](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/setdist--4f6ed689f7059369efc88ed9.md) | 50 | `declaration-track:4f6ed689f7059369efc88ed99d7597a07c4f1a1fc10457c1e76f76c77c452a6a` |
| 4 | `def` | [setProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/setproof--8bcf8a40ccbc3268cb94d153.md) | 56 | `declaration-track:8bcf8a40ccbc3268cb94d153a8912e6ff8d06f18cb3fd8eda28279d791753b41` |
| 5 | `def` | [forEachSourceOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/foreachsourceof--0698ed7caeff7fd9965c14e3.md) | 61 | `declaration-track:0698ed7caeff7fd9965c14e3dc4bfd44f2c40653166a3b0d9631e5057b3f90ab` |
| 6 | `def` | [forEachTargetOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/foreachtargetof--54a5fdd3186980fdfcab0f61.md) | 64 | `declaration-track:54a5fdd3186980fdfcab0f61c7bed509f5831088d0a6f959171999f242fb3b26` |
| 7 | `def` | [isShorter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/isshorter--7a98c269fb66af3f90199ccf.md) | 68 | `declaration-track:7a98c269fb66af3f90199ccf1c585c261a96ea9290f28971cf5be5343a971bd4` |
| 8 | `def` | [pushToPropagate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/pushtopropagate--b66ba6d5967c24625af30a54.md) | 75 | `declaration-track:b66ba6d5967c24625af30a548bdbf1648ab90221b4010b86a83380a3fdf50d2e` |
| 9 | `def` | [propagateEqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/propagateeqtrue--d76cee685b6d36f8f1324246.md) | 79 | `declaration-track:d76cee685b6d36f8f132424640afbf39904698b5fe90e3625ffddfba8f449998` |
| 10 | `def` | [propagateSelfEqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/propagateselfeqtrue--90cb1268b0b6f8b336bd92e3.md) | 92 | `declaration-track:90cb1268b0b6f8b336bd92e38b114c7ec2c368c32a5c67a9ebaff1ffdfc8c4a2` |
| 11 | `def` | [propagateEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/propagateeqfalse--7d609951f0cd6f2f1db23801.md) | 104 | `declaration-track:7d609951f0cd6f2f1db23801641a9f9a3cbb82fa3e077b6f4365525f53630244` |
| 12 | `def` | [propagateSelfEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/propagateselfeqfalse--0e4e1cc07628a5929643f8d7.md) | 117 | `declaration-track:0e4e1cc07628a5929643f8d746f5f06fd531d4ad6c914c57c0eebcb077e4d4b0` |
| 13 | `def` | [propagatePending](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/propagatepending--1fc331cf7bce3f6a54390e2d.md) | 130 | `declaration-track:1fc331cf7bce3f6a54390e2d457888d7b207152daafc93363606ce00fc2f58d1` |
| 14 | `def` | [isAlreadyTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/isalreadytrue--abd1283232afd11946a42dce.md) | 179 | `declaration-track:abd1283232afd11946a42dcec78aa542493c139c173a6ee63a815118bf74420d` |
| 15 | `def` | [checkEqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/checkeqtrue--5afa39799b8b775c08327ac5.md) | 190 | `declaration-track:5afa39799b8b775c08327ac5ccd392ab384f39fef0c899607e93db7598af7d3e` |
| 16 | `def` | [isAlreadyFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/isalreadyfalse--951737e0b5e14f91bd0c1061.md) | 201 | `declaration-track:951737e0b5e14f91bd0c1061b34d28e38c8e89e7d7e7958708de02fbd9119562` |
| 17 | `def` | [checkEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/checkeqfalse--038a327870ec4d9035de7235.md) | 212 | `declaration-track:038a327870ec4d9035de7235fc321d930a1135c2c8a81e0b61d5401e3ecd0c64` |
| 18 | `def` | [forEachCnstrsOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/foreachcnstrsof--a6dd82cc61da0ca820f7f4de.md) | 224 | `declaration-track:a6dd82cc61da0ca820f7f4dea67782bd1d2bac03ff0fde4b83d86b180aa6b455` |
| 19 | `def` | [checkEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/checkeq--f7d480f26a616da0b798a3e2.md) | 229 | `declaration-track:f7d480f26a616da0b798a3e2511cce07563736bc9d13751d08833dae0285b121` |
| 20 | `def` | [checkToPropagate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/checktopropagate--732fcaebb48fea06f8bbc05d.md) | 255 | `declaration-track:732fcaebb48fea06f8bbc05d19c5e90b793697f602f9bcb2842fc2f4d944a20f` |
| 21 | `def` | [updateIfShorter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/updateifshorter--7e05f40b4312dba11d84688e.md) | 264 | `declaration-track:7e05f40b4312dba11d84688e1f9a3446cf83cc5cea850905773e26c725cb8c54` |
| 22 | `def` | [addEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/addedge--40f49f1d1157412e1dff0da2.md) | 275 | `declaration-track:40f49f1d1157412e1dff0da242b05f60f1ece9121127fa6230e44b1744cf913f` |
| 23 | `def` | [assertIneqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/assertineqtrue--17a2d8f927771ca84ac0a9d0.md) | 307 | `declaration-track:17a2d8f927771ca84ac0a9d005d80feddb75e5b81d8f9f1915487cbde3cea9d7` |
| 24 | `def` | [assertIneqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/assertineqfalse--0dacc3ca9ff566eac7a707fd.md) | 319 | `declaration-track:0dacc3ca9ff566eac7a707fd9f38fe07cd6b28c5cbeb4027e7c069e95115700c` |
| 25 | `def` | [getStructIdOf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/getstructidof--47bf113b5f0e78a97366dfb1.md) | 353 | `declaration-track:47bf113b5f0e78a97366dfb1445a6a1369e5c1a85fc9700d0e576266e440ca1c` |
| 26 | `def` | [propagateIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/propagateineq--7bee50c896d2719d1be8c7a5.md) | 356 | `declaration-track:7bee50c896d2719d1be8c7a5541887f9a8207eeb43dd8ad21bc199ce16716018` |
| 27 | `def` | [processNewEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/declarations/processneweq--58539efaeaffa00e445a4f36.md) | 380 | `declaration-track:58539efaeaffa00e445a4f3628a90ac3a5e0a2b6ac74b3b2b6a042a375570b00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
