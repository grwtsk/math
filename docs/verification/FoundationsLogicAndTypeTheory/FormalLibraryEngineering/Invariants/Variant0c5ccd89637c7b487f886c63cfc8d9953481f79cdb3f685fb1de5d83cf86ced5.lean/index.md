# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Invariants.Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64d5b28f478352b819e42be6451555b9e5f0ef6e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64d5b28f478352b819e42be6451555b9e5f0ef6e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.FDRep` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [average](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/average--b756d99b639ffe9d2d90a715.md) | 44 | `declaration-track:b756d99b639ffe9d2d90a71562d2c1fea03ac02b541043c5d821a4d7e716e53d` |
| 2 | `theorem` | [mul_average_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/mul-average-left--c805d51c5204ed56dbc89074.md) | 50 | `result-track:c805d51c5204ed56dbc89074264e7aa70acb99fc7bb0a9108ee1eda25890addf` |
| 3 | `theorem` | [mul_average_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/mul-average-right--a6ce2fef8701f586fb3440ed.md) | 60 | `result-track:a6ce2fef8701f586fb3440edb794c48c9c45ca0a7d6cca5ec36460f0e67785a5` |
| 4 | `def` | [invariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/invariants--005fc809012e52d087883609.md) | 80 | `declaration-track:005fc809012e52d0878836097e29d6731e8949ec42c2ee207d9ee3a7ccf22c61` |
| 5 | `theorem` | [mem_invariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/mem-invariants--2064b6261ae63063d475b250.md) | 87 | `result-track:2064b6261ae63063d475b250c16a90bdcf8568deb4e01efca69e640ff9f14e55` |
| 6 | `theorem` | [invariants_eq_inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/invariants-eq-inter--f80d15081ccfed6e89211328.md) | 89 | `result-track:f80d15081ccfed6e89211328f24c4de923adc9f65b06781013dafd6892679875` |
| 7 | `theorem` | [invariants_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/invariants-eq-top--7d55d56612f3e514a3f09e28.md) | 92 | `result-track:7d55d56612f3e514a3f09e285e91a9daef2ec2bb0785068676fa40372b39c181` |
| 8 | `def` | [averageMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/averagemap--a6206e611b668bc0c9f905a7.md) | 103 | `declaration-track:a6206e611b668bc0c9f905a7f6bb4e623ed93708605466d6d57aa38af42884e9` |
| 9 | `theorem` | [averageMap_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/averagemap-invariant--62a93cddb9e84fdd3d199e31.md) | 108 | `result-track:62a93cddb9e84fdd3d199e3173877d8efa59684f2cd20569d14f740128658745` |
| 10 | `theorem` | [averageMap_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/averagemap-id--9c3ed2a810681321c32f0b09.md) | 114 | `result-track:9c3ed2a810681321c32f0b094ae748778b86e9b2f65d79d78aa137960c378326` |
| 11 | `theorem` | [isProj_averageMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/isproj-averagemap--3454d29f3190b846a68062a5.md) | 118 | `result-track:3454d29f3190b846a68062a569d7430db30d3a51c17e521e1815079e075c890a` |
| 12 | `lemma` | [le_comap_invariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/le-comap-invariants--85f7767422b04a625841ea92.md) | 127 | `result-track:85f7767422b04a625841ea929f54e67a1fe14c229550421be8dcaed799c91e19` |
| 13 | `abbrev` | [toInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/toinvariants--2ad23f9547028643955f99fc.md) | 135 | `declaration-track:2ad23f9547028643955f99fcc313d4ebb1cb9a5275f3f87ea5392ae7ef6bab10` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/instance--cd38d119a724deb799ce93d7.md) | 139 | `declaration-track:cd38d119a724deb799ce93d72c4931391b3381cfb6241a29cb1a97215c80c2fc` |
| 15 | `abbrev` | [quotientToInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/quotienttoinvariants--88181f4a4ff4d2cd538c75ac.md) | 144 | `declaration-track:88181f4a4ff4d2cd538c75ac37279ece143abe4f1d82d20eba9f7d50cc799030` |
| 16 | `theorem` | [mem_invariants_iff_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/mem-invariants-iff-comm--699530049e6b266e1e77e049.md) | 159 | `result-track:699530049e6b266e1e77e049f3c1b4889a86d6a4a2c290d9023bab3a2ce2e0f6` |
| 17 | `def` | [invariantsEquivRepHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/invariantsequivrephom--17ee136e469fb1887f26ad54.md) | 172 | `declaration-track:17ee136e469fb1887f26ad548d662f3b24be4817b43b27ec189cdccf36b0e8c1` |
| 18 | `def` | [invariantsEquivFDRepHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/invariantsequivfdrephom--f43a3c165525505e8a3649e1.md) | 190 | `declaration-track:f43a3c165525505e8a3649e1cc9c0452b1dca3b9a86533708fa08b0c0192833b` |
| 19 | `abbrev` | [toInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/toinvariants--588fa0286fcd3b030b98c2c6.md) | 211 | `declaration-track:588fa0286fcd3b030b98c2c6c64efe9bcb3270021787ec6f605e3027c4c4d91c` |
| 20 | `abbrev` | [quotientToInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/quotienttoinvariants--a0e779244d8e2c7d0f5797bd.md) | 215 | `declaration-track:a0e779244d8e2c7d0f5797bd1061b368407a8c99043c330538fe2bda1e112abe` |
| 21 | `def` | [invariantsFunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/invariantsfunctor--70437c457a9b6827b421b773.md) | 221 | `declaration-track:70437c457a9b6827b421b773494100f17870346e5de5e1cf12aaf27e7fb5ed4a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/instance--0baa2ba4c7bb7d21b4fe5282.md) | 228 | `declaration-track:0baa2ba4c7bb7d21b4fe5282078efa966babf852c633ab91671e04188dc7cdb4` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/declarations/instance--500bc488ffa8859392d64b73.md) | 230 | `declaration-track:500bc488ffa8859392d64b731e3ba1c1ae285338cdfdd841e5dc580e77de4644` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
