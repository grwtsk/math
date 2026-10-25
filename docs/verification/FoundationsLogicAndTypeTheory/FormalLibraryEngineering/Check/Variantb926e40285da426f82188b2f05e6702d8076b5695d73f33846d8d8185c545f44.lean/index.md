# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3796de18422be472bddb3d8e6e7710ede519f4c7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3796de18422be472bddb3d8e6e7710ede519f4c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.OriginalConstKind` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ensureType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/ensuretype--af905001358f3d1157b0e2c8.md) | 22 | `declaration-track:af905001358f3d1157b0e2c886b7ef36ff705aa63842c06671ea0aa95b8ea90b` |
| 2 | `def` | [checkConstant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/checkconstant--cd1af29b47501168ab47d658.md) | 25 | `declaration-track:cd1af29b47501168ab47d658ca4935959cf50adc8a5edcb552583c8dc7a0acd8` |
| 3 | `def` | [getFunctionDomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/getfunctiondomain--d01f1b307a619eeab4feafb3.md) | 30 | `declaration-track:d01f1b307a619eeab4feafb3cae6d3f4046194d2bcf0fc35dea2e6d15bee901b` |
| 4 | `def` | [addPPExplicitToExposeDiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/addppexplicittoexposediff--73f473078527d30d61c4516c.md) | 73 | `declaration-track:73f473078527d30d61c4516c868e563aa79125badbede15b1f4138d945e336b8` |
| 5 | `def` | [throwLetTypeMismatchMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/throwlettypemismatchmessage--0a7c3be45a76bd1a16a7188c.md) | 188 | `declaration-track:0a7c3be45a76bd1a16a7188c0a90dc468ab6aa6e677256fc3904ff0c355b2312` |
| 6 | `def` | [mkUnfoldAxiomsNote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/mkunfoldaxiomsnote--8681baa015e0cefd827782e2.md) | 199 | `declaration-track:8681baa015e0cefd827782e28c77ded95c1e937da67679c9e8a38957fb7d16d8` |
| 7 | `def` | [mkHasTypeButIsExpectedMsg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/mkhastypebutisexpectedmsg--db450bf8581ea5f3916a18d0.md) | 224 | `declaration-track:db450bf8581ea5f3916a18d0896cb3748d31b23d2b93ed65495671c1940ba3ca` |
| 8 | `def` | [throwAppTypeMismatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/throwapptypemismatch--45e23521ff55248dd1bc8f18.md) | 250 | `declaration-track:45e23521ff55248dd1bc8f189a767b45737dd16a0de2e004a29bd52ef7cc04fc` |
| 9 | `def` | [checkApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/checkapp--1e1ec7af9cb51c01a152fa95.md) | 272 | `declaration-track:1e1ec7af9cb51c01a152fa95b28bcffa7ec5e8a194309b6c5c6078371f99a266` |
| 10 | `def` | [checkProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/checkproj--53ba47d10df14679698d5be5.md) | 282 | `declaration-track:53ba47d10df14679698d5be5bd1f384e8035579cf4ce2937173186d4beb36ba0` |
| 11 | `def` | [checkAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/checkaux--15da3eba6fea537a45ce3110.md) | 288 | `declaration-track:15da3eba6fea537a45ce31101dee600ef6178dcb2efe7982c017ffa5014aade9` |
| 12 | `def` | [check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/check--f70310a88cc46f0a5388bf27.md) | 331 | `declaration-track:f70310a88cc46f0a5388bf27efe66dd86984a2590ab410f3ea30a300fbe40960` |
| 13 | `def` | [withInstancesTypeCheckNote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/withinstancestypechecknote--e9b96a76c4046a1fcc77cb43.md) | 348 | `declaration-track:e9b96a76c4046a1fcc77cb43e44ae588b4064f962963ebd0c39aea194cd58358` |
| 14 | `def` | [isTypeCorrect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/istypecorrect--1516b58401ddca8b20024d12.md) | 365 | `declaration-track:1516b58401ddca8b20024d12e6eb492118e32a35507b2db324e57487fbc078da` |
| 15 | `def` | [checkWithKernel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/checkwithkernel--31bd90f8f1d340bde65a7bfe.md) | 377 | `declaration-track:31bd90f8f1d340bde65a7bfe93ffc5d1a2d3886be6705bd2c5bbde05516518a3` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/declarations/builtin-initialize--526f9c929feb19dd525635a7.md) | 383 | `declaration-track:526f9c929feb19dd525635a795c15e8ed5692b98f026c98532c969ce2d908de7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
