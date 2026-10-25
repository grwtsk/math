# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Precheck.Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ae20abd959efcb78b1449ed643500823dbfdf9e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ae20abd959efcb78b1449ed643500823dbfdf9e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.DeprecatedSyntax` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Precheck.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheck-context--2aa6071a152e4d8cf39b6a60.md) | 18 | `declaration-track:2aa6071a152e4d8cf39b6a60f57134a9044a8b1440e0bddd56ac05f64d6ae7a8` |
| 2 | `abbrev` | [PrecheckM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckm--8938e05d98d75ec14565366c.md) | 21 | `declaration-track:8938e05d98d75ec14565366cc78737fec5ed9fff0c2221655d133fb3c0ebed7a` |
| 3 | `abbrev` | [Precheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheck--bf894245aa79e313d99c36c0.md) | 22 | `declaration-track:bf894245aa79e313d99c36c00fba261699916b0281c79f14cc999085f5617dff` |
| 4 | `def` | [withNewLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/withnewlocal--96d48f791b4dc4bb62457f81.md) | 24 | `declaration-track:96d48f791b4dc4bb62457f81006a9793cd30a5d196c6fe7d71c2af6f48fac8fc` |
| 5 | `def` | [withNewLocals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/withnewlocals--a162a0f4b893a1e147ecd07c.md) | 27 | `declaration-track:a162a0f4b893a1e147ecd07c5bf6403a708faaec149b9c401a3204434decc8d8` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/builtin-initialize--f42a9c57c75ff8bd4b078b69.md) | 51 | `declaration-track:f42a9c57c75ff8bd4b078b693d3cc86b12dd678c404d2fb5c1e2d1c83210efa8` |
| 7 | `def` | [precheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheck--ba8aa281670c10477831cdcf.md) | 59 | `declaration-track:ba8aa281670c10477831cdcf1be100b77f6e9ae9e41783c90d15e2a6ebd20618` |
| 8 | `def` | [runPrecheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/runprecheck--324aa26aee0d10217dd9af32.md) | 91 | `declaration-track:324aa26aee0d10217dd9af32d7c32061f9c6a11c350b1f43be2bf4d749469ef9` |
| 9 | `def` | [isSectionVariable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/issectionvariable--10a1e0bf176e59d895f3640a.md) | 96 | `declaration-track:10a1e0bf176e59d895f3640a61792b38e3938bb0c07f2897686b2889b55707f2` |
| 10 | `def` | [precheckIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckident--f1dfd1d2c9ac8053da654008.md) | 99 | `declaration-track:f1dfd1d2c9ac8053da654008edf2b90f1e1436ef0d02d86f16e58761c4c1762d` |
| 11 | `def` | [precheckApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckapp--834ef87541ef4b4e523e708c.md) | 126 | `declaration-track:834ef87541ef4b4e523e708c8849e2600acf0b8d4c7ca9a2242531c0ccc5a769` |
| 12 | `def` | [precheckTypeAscription](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/prechecktypeascription--c083236e97a868e0853e8474.md) | 136 | `declaration-track:c083236e97a868e0853e84747efe6b63ee1fcfdca70945d01ba5c75802a4262b` |
| 13 | `def` | [precheckExplicit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckexplicit--c5311f49e11f531c1ac82c0d.md) | 143 | `declaration-track:c5311f49e11f531c1ac82c0d9521676179d7386b10e5d7b9fa7b3ba55fa5c9c0` |
| 14 | `def` | [precheckChoice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckchoice--7546e7c6dd68931f7cd820bc.md) | 148 | `declaration-track:7546e7c6dd68931f7cd820bc9c688a79662bbc4d09c8d1e1a9cf49bf379c49be` |
| 15 | `def` | [elabPrecheckedQuot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/elabprecheckedquot--5b4c200970a917dabb59a325.md) | 156 | `declaration-track:5b4c200970a917dabb59a325eae8774ae36bae2d3dae46eb12164c25497ee7bf` |
| 16 | `def` | [precheckBinrel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckbinrel--24dab2776b75bafdf2978148.md) | 163 | `declaration-track:24dab2776b75bafdf297814895e8499c0b88bae7e14fa8184137167b1512f262` |
| 17 | `def` | [precheckBinrelNoProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckbinrelnoprop--cd6535b68b86540476fab846.md) | 167 | `declaration-track:cd6535b68b86540476fab84667a25a300582291895d9d6d9d43e6263d5c72509` |
| 18 | `def` | [precheckBinop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckbinop--45f65738bf2c7c0ab9951eb9.md) | 171 | `declaration-track:45f65738bf2c7c0ab9951eb98c8865771bbf914fa157a49a96eceffa5b79a2dd` |
| 19 | `def` | [precheckBinopLazy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckbinoplazy--14d5504049289a02325bbdaa.md) | 175 | `declaration-track:14d5504049289a02325bbdaa8160f66ee2f46b1db05a56c933ba05ce5d7e6462` |
| 20 | `def` | [precheckLeftact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckleftact--cacb7efb20adbe06b2a36dbf.md) | 179 | `declaration-track:cacb7efb20adbe06b2a36dbfb70089583bd56409d71c67056946d7ff06aac619` |
| 21 | `def` | [precheckRightact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckrightact--b7e24a2e3c1898ae841b8d50.md) | 183 | `declaration-track:b7e24a2e3c1898ae841b8d503cde3e9c44b915c233da42e56d52b80607f2d446` |
| 22 | `def` | [precheckUnop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckunop--6ff3471365e18b244267c473.md) | 187 | `declaration-track:6ff3471365e18b244267c47381b440bdb105944223a6c5de31fe1bd6725ec26a` |
| 23 | `def` | [precheckHygieneInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/declarations/precheckhygieneinfo--737f58455cf56883acbc357f.md) | 191 | `declaration-track:737f58455cf56883acbc357ff32e78b75c796cc415aa6e55076b92c6ae1a368d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
