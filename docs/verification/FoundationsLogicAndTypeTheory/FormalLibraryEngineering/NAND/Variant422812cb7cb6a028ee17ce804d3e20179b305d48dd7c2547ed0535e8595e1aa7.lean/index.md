# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NAND.Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e94425057421593d296503a47f66ae303586aa7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e94425057421593d296503a47f66ae303586aa7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Boolean.Semantics` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NandExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/nandexpr--abe4857739f5cb6cd44810ea.md) | 27 | `declaration-track:abe4857739f5cb6cd44810ea83fa3b9886af7ded91d488bd0c763893c78ee947` |
| 2 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/eval--885d058736c23b40f0c744c2.md) | 34 | `declaration-track:885d058736c23b40f0c744c2fd5abe0d98ac833ce02cb72f021f1a4a7389102e` |
| 3 | `theorem` | [eval_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/eval-var--1a9a3c62b375975e34272fce.md) | 39 | `result-track:1a9a3c62b375975e34272fce8536719b323db57063dc4aabf29954924bee7fc3` |
| 4 | `theorem` | [eval_nand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/eval-nand--be479e8c065c320cd5e60bc7.md) | 44 | `result-track:be479e8c065c320cd5e60bc7f79cdff2bbe663f05fed2afbf03702690382b32f` |
| 5 | `def` | [nandNot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/nandnot--d9fdcfc9e29c66cab5b6276d.md) | 50 | `declaration-track:d9fdcfc9e29c66cab5b6276d793151565823ff4618549706684c6672afd8a932` |
| 6 | `def` | [nandAnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/nandand--24b47387bd2baf3b3b2fcda0.md) | 53 | `declaration-track:24b47387bd2baf3b3b2fcda02db32722c2e14c9c33d36796019e145b9fce23d2` |
| 7 | `def` | [nandOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/nandor--dad3073553396cfab5d2cd15.md) | 56 | `declaration-track:dad3073553396cfab5d2cd15b86445eaad2749efa43105b5ccd18f554de00ede` |
| 8 | `def` | [nandTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/nandtrue--78e8e3bd3c4c13bbdbc80877.md) | 59 | `declaration-track:78e8e3bd3c4c13bbdbc80877cfc2b808efc5ebbacb3598f2933b4bb2a8f8f398` |
| 9 | `def` | [nandFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/nandfalse--fb1618c1b04dfb4760be1b20.md) | 62 | `declaration-track:fb1618c1b04dfb4760be1b2063c808a12bcb1de45d48d93a89ecd17d77f83c08` |
| 10 | `def` | [nandXor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/nandxor--fb65cb1a89d34d4d24ed70f6.md) | 65 | `declaration-track:fb65cb1a89d34d4d24ed70f69be85b2fae40dd76c1d4d96ede48aacdac95990a` |
| 11 | `theorem` | [eval_nandNot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/eval-nandnot--b8f86150c5bf808b0c74828d.md) | 69 | `result-track:b8f86150c5bf808b0c74828d4d2567037da0885fff9582920db6f1d00e272731` |
| 12 | `theorem` | [eval_nandAnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/eval-nandand--fecaf8f6a3357e7dfc445bd8.md) | 74 | `result-track:fecaf8f6a3357e7dfc445bd832ba288983cef34330b3f3a8d4544423c26c5f3b` |
| 13 | `theorem` | [eval_nandOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/eval-nandor--d2c2e3544a74bf4d0ecb67c9.md) | 80 | `result-track:d2c2e3544a74bf4d0ecb67c9df3468f3f06eb02e1a50c8dd834751b913e3fdfc` |
| 14 | `theorem` | [eval_nandTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/eval-nandtrue--55fbbf0147a61906c850ed95.md) | 86 | `result-track:55fbbf0147a61906c850ed95be9a9b19d98ca99401d08545b38bbc4660abc490` |
| 15 | `theorem` | [eval_nandFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/eval-nandfalse--448ba6dd8947ba80e18ec6fc.md) | 91 | `result-track:448ba6dd8947ba80e18ec6fce02db7a3b317e64f60dc0c39487006916c379d01` |
| 16 | `theorem` | [eval_nandXor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant422812cb7cb6a028ee17ce804d3e20179b305d48dd7c2547ed0535e8595e1aa7.lean/declarations/eval-nandxor--141e66818b69bf2db9ef1cc6.md) | 96 | `result-track:141e66818b69bf2db9ef1cc6f59a2cfa4590750b0cca1c11d7681b084a08230f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
