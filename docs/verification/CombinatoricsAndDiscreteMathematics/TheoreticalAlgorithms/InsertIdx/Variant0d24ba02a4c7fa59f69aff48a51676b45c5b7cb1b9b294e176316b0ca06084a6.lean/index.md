# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InsertIdx.Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "479dc21cbcbf27f143fb556e35d6174fcd208d56",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `479dc21cbcbf27f143fb556e35d6174fcd208d56`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.InsertIdx` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/tolist-insertidx--8aa700dce4e442035c639543.md) | 40 | `result-track:8aa700dce4e442035c639543a4117cbe979fe118ba61a03be5ec8883a9400789` |
| 2 | `theorem` | [insertIdx_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/insertidx-zero--ebfc583106f3d98ff25146fc.md) | 46 | `result-track:ebfc583106f3d98ff25146fc36bc42bd01847ac271e1fb47f1bc70eccb1540d7` |
| 3 | `theorem` | [size_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/size-insertidx--373ae5e8f9143791ec4ef0cd.md) | 50 | `result-track:373ae5e8f9143791ec4ef0cd7ae5aa08e80e87ad75e3393d6605977640ae33ac` |
| 4 | `theorem` | [eraseIdx_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/eraseidx-insertidx-self--a75be6900cb6e256eab14e27.md) | 55 | `result-track:a75be6900cb6e256eab14e27adb20180f22d52bba93d324b1c5318526baa5de5` |
| 5 | `theorem` | [insertIdx_eraseIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/insertidx-eraseidx-of-ge--31314c97076814d342e493cc.md) | 60 | `result-track:31314c97076814d342e493cc56fbeee7f109e4586d40a958417ac17b675976ec` |
| 6 | `theorem` | [insertIdx_eraseIdx_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/insertidx-eraseidx-of-le--a9d8385e40516b9d765a2eee.md) | 67 | `result-track:a9d8385e40516b9d765a2eeefb2cdcda452bee85754f3a31ea600653272861b7` |
| 7 | `theorem` | [insertIdx_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/insertidx-eraseidx--cab1f782b0df17f9bc831390.md) | 75 | `result-track:cab1f782b0df17f9bc83139014255a1f37f1be0040d31017ee545d518d79c681` |
| 8 | `theorem` | [insertIdx_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/insertidx-comm--d9bd03bcd15886051e2c811a.md) | 86 | `result-track:d9bd03bcd15886051e2c811ad3b8260f5a08cb9a4ddac16c45aca3fe7aa93806` |
| 9 | `theorem` | [mem_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/mem-insertidx--0a39ed12a249754a62219abf.md) | 92 | `result-track:0a39ed12a249754a62219abfeb093eece211051aa4680328c11225e9be3f51e6` |
| 10 | `theorem` | [insertIdx_size_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/insertidx-size-self--f7b6a0a67f4d2943739fe4df.md) | 97 | `result-track:f7b6a0a67f4d2943739fe4df1f0255d7a101d349ac81d700af189f7b32f2a385` |
| 11 | `theorem` | [getElem_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/getelem-insertidx--c8c4862392aeb011723c041d.md) | 102 | `result-track:c8c4862392aeb011723c041d19cb9626a284d6a884c1176086d3c0a42d18a0cc` |
| 12 | `theorem` | [getElem_insertIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/getelem-insertidx-of-lt--1a8bcf3dc6f82382e9f9b852.md) | 114 | `result-track:1a8bcf3dc6f82382e9f9b852d63f6539dab287cba7f7795bff0e8b8e01b24bb4` |
| 13 | `theorem` | [getElem_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/getelem-insertidx-self--d90b7c72d16e39373324c86b.md) | 118 | `result-track:d90b7c72d16e39373324c86b6d2aa4cd1d39a136f61e6920de0938960af48011` |
| 14 | `theorem` | [getElem_insertIdx_of_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/getelem-insertidx-of-gt--9339557b24522cb198977da5.md) | 122 | `result-track:9339557b24522cb198977da59355a44ac3083ae238a1c9af2b71ebc49d02e76e` |
| 15 | `theorem` | [getElem?_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/getelem-insertidx--9701dfe8acc5e845c56e669a.md) | 128 | `result-track:9701dfe8acc5e845c56e669adba6469c99055e43453efdd80d478f02b36bb20f` |
| 16 | `theorem` | [getElem?_insertIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/getelem-insertidx-of-lt--18093471463b56ceef16c5f7.md) | 140 | `result-track:18093471463b56ceef16c5f7313f227fb8b75d754d0164584cfa09687715dbf4` |
| 17 | `theorem` | [getElem?_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/getelem-insertidx-self--15bb6712acd897e882146044.md) | 144 | `result-track:15bb6712acd897e8821460443fc3bb4cf42b8968c7afb5e861d347f0ee5f4715` |
| 18 | `theorem` | [getElem?_insertIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant0d24ba02a4c7fa59f69aff48a51676b45c5b7cb1b9b294e176316b0ca06084a6.lean/declarations/getelem-insertidx-of-ge--4da8447b6265ca2aa0ab15a5.md) | 148 | `result-track:4da8447b6265ca2aa0ab15a5132a22c26fd6870c001352225156f6f51708c09a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
