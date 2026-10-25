# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fin.Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbe16791f5a55c6ec3196b5999107e7dcb0c60b9",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbe16791f5a55c6ec3196b5999107e7dcb0c60b9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--bd1d689b8cc9a82e280cfe4b.md) | 31 | `declaration-track:bd1d689b8cc9a82e280cfe4bae8bc7d8cfa981e3650844880db6dcfb7790aba9` |
| 2 | `theorem` | [pRangeSucc?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/prangesucc-eq--a721a4a218b162c1cae00323.md) | 36 | `result-track:a721a4a218b162c1cae00323b1b0463e95c6c0e84525df7947de8fcdc206762a` |
| 3 | `theorem` | [pRangeSuccMany?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/prangesuccmany-eq--60c7b46ccc984bf69f9ca017.md) | 39 | `result-track:60c7b46ccc984bf69f9ca017239fe38d79ec39569c56e75326177742fb81f681` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--9a175c9af453602706e7de55.md) | 42 | `declaration-track:9a175c9af453602706e7de55f4d0ac2acb4967ecc82bc76fa9d85f1537b2fa33` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--3f3bcbf4efc338cf577e87c0.md) | 47 | `declaration-track:3f3bcbf4efc338cf577e87c02258d2feedbd5e731c99b06f4545fb9bb9358772` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--f9b591cd659440de474fd388.md) | 53 | `declaration-track:f9b591cd659440de474fd3880044fca09b560bf4def9f0f9e337a65bcc87099d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--08d1d1231edebab6c0ad197b.md) | 56 | `declaration-track:08d1d1231edebab6c0ad197bb34169da901cff6b3bbcfa7a5fbae98079d83460` |
| 8 | `theorem` | [least?_eq_of_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/least-eq-of-zero--84b359b398f645e60ed40db3.md) | 60 | `result-track:84b359b398f645e60ed40db38e71347755b1e6cfd40d5362bc11a4d1705b23a6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--79374350eb56f09e94201f1a.md) | 62 | `declaration-track:79374350eb56f09e94201f1accc926f025248c39e2e6fb87115b061cc84d250f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--b9e3baac67c0a4a05b0cf4a2.md) | 65 | `declaration-track:b9e3baac67c0a4a05b0cf4a20f7e0c54d9c928d479f3fb99e958b3f681a31ccc` |
| 11 | `theorem` | [least?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/least-eq--1ed45d79fcb6219dd4e900ce.md) | 69 | `result-track:1ed45d79fcb6219dd4e900ce843d13fd05a55e069433c5f2cc3435afabba04fc` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--96b9fc387d7bd056c310552c.md) | 71 | `declaration-track:96b9fc387d7bd056c310552cf6894a4aaddfd363c91b28571bc2d265704c59d0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--d087a434f8ec8147f6e37557.md) | 73 | `declaration-track:d087a434f8ec8147f6e375574a852fbd558dce9c846c5052819a89552eec5048` |
| 14 | `theorem` | [rxcHasSize_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/rxchassize-eq--5f6061af01e83cafe058878a.md) | 77 | `result-track:5f6061af01e83cafe058878a35cc735c0ff5341798bfa9c76735e946e1129f0e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--fcb79b2807d0667e21e636de.md) | 80 | `declaration-track:fcb79b2807d0667e21e636ded9c823e26944d7aa811f9b8d23e49961b554aec5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--f306a4888e53e41419c01a6f.md) | 85 | `declaration-track:f306a4888e53e41419c01a6f312f8b4cdeb31986346a8b973282eaf78c2cf6b8` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--b97118bfd87de26d1c398569.md) | 87 | `declaration-track:b97118bfd87de26d1c39856945c087b85fc23c6f6766cdfbd334ef1587afc17d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--3e7f2f5e1365364238efcf1c.md) | 88 | `declaration-track:3e7f2f5e1365364238efcf1cee41b2e9377448c43910ad22d38d9f7c2975c427` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--9e4aa01f1cb3f64005730455.md) | 89 | `declaration-track:9e4aa01f1cb3f64005730455ca6e3b72e9966252868dbf5148e7d621e8c40239` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--7299f7fffc077075aad894c9.md) | 91 | `declaration-track:7299f7fffc077075aad894c9d7b730c51be4f42772c69c649bc919ec5d45ad44` |
| 21 | `theorem` | [rxiHasSize_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/rxihassize-eq--a3ce6cb745065044256ed02c.md) | 95 | `result-track:a3ce6cb745065044256ed02cbf2c76e9253450d90f3df87f707d3e7f30b9f554` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--2837b06be35157e63608b8b1.md) | 98 | `declaration-track:2837b06be35157e63608b8b1743adcea9837ff6719f8be0c18e3c424caa2dfb8` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianta91253957346e5fcd29952ac7e588f03442d332a9a2df2a85c108f80f603a18e.lean/declarations/instance--472581abc364abe54c9aa617.md) | 102 | `declaration-track:472581abc364abe54c9aa617f89758585fb74607df1f1560c58bbd090e67e805` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
