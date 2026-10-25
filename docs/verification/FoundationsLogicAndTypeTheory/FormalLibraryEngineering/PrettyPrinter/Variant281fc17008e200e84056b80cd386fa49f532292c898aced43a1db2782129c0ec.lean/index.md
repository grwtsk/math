# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrettyPrinter.Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12fd970be0a0241cbb1d4729f4a65df27fb3e713",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12fd970be0a0241cbb1d4729f4a65df27fb3e713`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.PrettyPrinter.Delaborator` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ppCategory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ppcategory--08e1889c94663227b4d05cae.md) | 28 | `declaration-track:08e1889c94663227b4d05cae42e58335847282d77c45438f1c5094fce6125ac3` |
| 2 | `def` | [ppTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ppterm--5d945496f2d5e320156f68c1.md) | 33 | `declaration-track:5d945496f2d5e320156f68c18901e73beda8014cce6e9ad8a89bd0c37b527275` |
| 3 | `def` | [ppUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ppusing--851046bb155030dc2a31c54c.md) | 35 | `declaration-track:851046bb155030dc2a31c54c6aafb0dd22868eb9cdc3c9f646a6a65f0bb61fa8` |
| 4 | `def` | [maybePrependExprSizes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/maybeprependexprsizes--7a3be3246ca664a992517bfd.md) | 46 | `declaration-track:7a3be3246ca664a992517bfdb71a77608c074cd72b2c1562c3939d1c2761f803` |
| 5 | `def` | [ppExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ppexpr--3326b9f920b2aa21d9404b9f.md) | 52 | `declaration-track:3326b9f920b2aa21d9404b9f32638107c4b7b9dd48b46adbfce77ef19f5070d5` |
| 6 | `def` | [ppExprWithInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ppexprwithinfos--dee57b8f5926232809fba462.md) | 57 | `declaration-track:dee57b8f5926232809fba462ed5ebff680bba95c5b40fa02cc54c41c922af925` |
| 7 | `def` | [ppConstNameWithInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ppconstnamewithinfos--c398adc29ad96b9c34919602.md) | 66 | `declaration-track:c398adc29ad96b9c34919602e1e7e7aa01dd9e2f95f82a3bf44b091b9c00f861` |
| 8 | `def` | [ppExprLegacy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ppexprlegacy--5cd35b8460d93d6ccc3df3c4.md) | 76 | `declaration-track:5cd35b8460d93d6ccc3df3c4b2d4001f75d2a7a2a47fb24b7f938166533945eb` |
| 9 | `def` | [ppLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/pplevel--149ebf07b74dc761ee801d65.md) | 81 | `declaration-track:149ebf07b74dc761ee801d659ebcf331242d6a510eea2b1dbdb746128592991c` |
| 10 | `def` | [ppTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/pptactic--7d535067a717f2b1fb3ad9c8.md) | 84 | `declaration-track:7d535067a717f2b1fb3ad9c88b40a434f828f4cced2c589758af9d36c1632032` |
| 11 | `def` | [ppCommand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ppcommand--ef810994517d52f0b517cc95.md) | 86 | `declaration-track:ef810994517d52f0b517cc95fa887c924af4fd426c5e1224ff1bcd8bb5593196` |
| 12 | `def` | [ppModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ppmodule--cf52eb6f251cc506fafbc0a9.md) | 88 | `declaration-track:cf52eb6f251cc506fafbc0a962dff44d79b24421575152dd09097e6b12f19457` |
| 13 | `def` | [ppSignature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ppsignature--287e71d003743254b186e717.md) | 93 | `declaration-track:287e71d003743254b186e7179c35499bb0c23dc131ad988097e14a506466ae0f` |
| 14 | `def` | [noContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/nocontext--171c53108a83f7b470112425.md) | 102 | `declaration-track:171c53108a83f7b4701124250d8d6f0adbc7677c8a6dd2e90d2d8ab50cbc40db` |
| 15 | `def` | [withoutContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/withoutcontext--dd6c48bc107f79bf5bbf9807.md) | 114 | `declaration-track:dd6c48bc107f79bf5bbf98077c094bd5421c6eccef76cbe4e1d724dcf785ad5d` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/builtin-initialize--b65eea40918ca3516622466c.md) | 119 | `declaration-track:b65eea40918ca3516622466cc0cc9981362e7a69a7d56aba870aa4a6ba0b0558` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/builtin-initialize--197c6e2c40c467cd12482631.md) | 128 | `declaration-track:197c6e2c40c467cd12482631463338125cbe444dd74a9ece8a61adb970addd37` |
| 18 | `def` | [registerParserCompilers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/registerparsercompilers--d33f8bc6f1d48c30c96e9e36.md) | 132 | `declaration-track:d33f8bc6f1d48c30c96e9e3679d0dccf37c879e998c5e638c2c8f28a88302a6f` |
| 19 | `def` | [ofFormatWithInfosM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/offormatwithinfosm--00f43b35e1dc69c390b5c640.md) | 145 | `declaration-track:00f43b35e1dc69c390b5c640b652dcfe9593747c4426bab34b6281de0fc41bcc` |
| 20 | `def` | [ofConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/ofconst--aca1722f6a3bbf751081821a.md) | 157 | `declaration-track:aca1722f6a3bbf751081821a187624d097b671d3afd4fb6eb0a5b089cc617717` |
| 21 | `def` | [signature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/declarations/signature--893ff4929fe87cb498ea3a93.md) | 167 | `declaration-track:893ff4929fe87cb498ea3a93885b8034249f8b3bafffa76d1fc85d8e1bf6af74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
