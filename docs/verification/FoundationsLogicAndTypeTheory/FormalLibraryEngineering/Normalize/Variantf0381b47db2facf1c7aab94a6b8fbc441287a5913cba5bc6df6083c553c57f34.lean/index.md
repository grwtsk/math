# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalize.Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37eaf8843a2da9c5e1165c73d166ebc3db6d49d5",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37eaf8843a2da9c5e1165c73d166ebc3db6d49d5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Coherence.Datatypes` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WhiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/whiskerright--352faac6e3279c1d528c5d46.md) | 76 | `declaration-track:352faac6e3279c1d528c5d46b9364cb17fd208aec30360f440fd2ee13182586c` |
| 2 | `def` | [WhiskerRight.e](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/whiskerright-e--a13dafec00e702dd580cb1ce.md) | 84 | `declaration-track:a13dafec00e702dd580cb1ce55ca1580df6da2b84d68ae9b7e6e6c2cbaf62f75` |
| 3 | `inductive` | [HorizontalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/horizontalcomp--aaf2bde2f2eb87e46de8ef6a.md) | 89 | `declaration-track:aaf2bde2f2eb87e46de8ef6a0c66a4f602d7b29d83764c2fabfbae22173da473` |
| 4 | `def` | [HorizontalComp.e](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/horizontalcomp-e--43121ac3516986da104ae9bd.md) | 96 | `declaration-track:43121ac3516986da104ae9bda12ab3532b0394656a46c46457714c1c64c47b42` |
| 5 | `inductive` | [WhiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/whiskerleft--4410c379fd33b1867c246fb9.md) | 101 | `declaration-track:4410c379fd33b1867c246fb928bbc15d1a2480a515b3438fa4b31572b15ad38e` |
| 6 | `def` | [WhiskerLeft.e](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/whiskerleft-e--18f6086fd15ff327e65a3458.md) | 109 | `declaration-track:18f6086fd15ff327e65a345803b7675fe19526dca4fe9aa742ffc6170e6c94ff` |
| 7 | `def` | [Mor₂Iso.isStructural](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/mor-iso-isstructural--b21ad7faaf7fd53d9606a6ff.md) | 114 | `declaration-track:b21ad7faaf7fd53d9606a6ffcc8aecb37222c8efbbdfba1a3894dc7617276c42` |
| 8 | `abbrev` | [Structural](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/structural--96fbb96aa3d2aa440019fefa.md) | 127 | `declaration-track:96fbb96aa3d2aa440019fefa47721ffc58f457b840c0868d240b1ebf8a094eb6` |
| 9 | `inductive` | [NormalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/normalexpr--b43d277b88bdb701a5d1b399.md) | 130 | `declaration-track:b43d277b88bdb701a5d1b3992dedaf12951464452897003ca981cb5b17667bc9` |
| 10 | `def` | [NormalExpr.e](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/normalexpr-e--4c460a2ef1e8b611d8373e7f.md) | 138 | `declaration-track:4c460a2ef1e8b611d8373e7f576a19209df3ddf83d4644c494308e1f62a6d969` |
| 11 | `class` | [MonadWhiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/monadwhiskerright--f144c4a0da4e83db36a0c1c9.md) | 143 | `declaration-track:f144c4a0da4e83db36a0c1c9db132aee733a684276ef0782dcace8798e9a6c3c` |
| 12 | `class` | [MonadHorizontalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/monadhorizontalcomp--eae987adef49ebe5ec6cdc29.md) | 148 | `declaration-track:eae987adef49ebe5ec6cdc2962d576e55ce8cf9b656caaeb26787fc8bd0e19fa` |
| 13 | `class` | [MonadWhiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/monadwhiskerleft--f373a36ade2924be0b49d5e5.md) | 153 | `declaration-track:f373a36ade2924be0b49d5e5cb884d70dd1afc19e688cb703c5919c4c97b57b3` |
| 14 | `class` | [MonadNormalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/monadnormalexpr--27d33d1c086f4bcd3f5cd1cd.md) | 158 | `declaration-track:27d33d1c086f4bcd3f5cd1cd07fb48f92df6130c3951c1850cf9686fce9fd637` |
| 15 | `def` | [WhiskerRight.srcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/whiskerright-srcm--6156d1ba1e23354da4309eb3.md) | 169 | `declaration-track:6156d1ba1e23354da4309eb328a84503a3f8edc501d9900714feccf5743bfa9c` |
| 16 | `def` | [WhiskerRight.tgtM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/whiskerright-tgtm--615051a79424706726728809.md) | 174 | `declaration-track:615051a794247067267288091389296425e1242ee370abd6a7673d195c9d2a7a` |
| 17 | `def` | [HorizontalComp.srcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/horizontalcomp-srcm--c3547902dda623e5e6f482c1.md) | 179 | `declaration-track:c3547902dda623e5e6f482c19e00e24f362778bc58fdd6d9606a260c4f3f4089` |
| 18 | `def` | [HorizontalComp.tgtM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/horizontalcomp-tgtm--d620be3b61b0f0b8a624dc88.md) | 184 | `declaration-track:d620be3b61b0f0b8a624dc88dec1d4242b4b222b226e3e1320b594b28299072f` |
| 19 | `def` | [WhiskerLeft.srcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/whiskerleft-srcm--a081ef5a045f623f12a356d7.md) | 189 | `declaration-track:a081ef5a045f623f12a356d79688fe7e0990385fc2514e89938c4675f9a15cca` |
| 20 | `def` | [WhiskerLeft.tgtM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/whiskerleft-tgtm--62521a7e2a6a25ffed34493b.md) | 194 | `declaration-track:62521a7e2a6a25ffed34493b0c76e0c315f363eb7d01bd5e25f64386dbc9ee50` |
| 21 | `def` | [NormalExpr.srcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/normalexpr-srcm--7d4491004bf7e0885b9b57e9.md) | 199 | `declaration-track:7d4491004bf7e0885b9b57e9c186003a0c19746656cf0f68da1aa80e7633de62` |
| 22 | `def` | [NormalExpr.tgtM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/normalexpr-tgtm--9a26f1e47e4f9c254ac33812.md) | 204 | `declaration-track:9a26f1e47e4f9c254ac338121ce66a2db7d6ac611bec80ae0c01859e6239f9d4` |
| 23 | `def` | [idM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/idm--30d5acb36639e303037e10a6.md) | 213 | `declaration-track:30d5acb36639e303037e10a61136cf854946bfbc6a262a4d6e58bcc9e58db792` |
| 24 | `def` | [associatorM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/associatorm--18d78e0b3a245d610b400184.md) | 217 | `declaration-track:18d78e0b3a245d610b40018443f94ffb9cc13c4ce5b3b868e15893ad6b219e58` |
| 25 | `def` | [associatorInvM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/associatorinvm--a985eecf13c5aafc263cfcda.md) | 221 | `declaration-track:a985eecf13c5aafc263cfcdaf92dcb6d5ed61ebf3585d6bd435134ed89fe9dbc` |
| 26 | `def` | [leftUnitorM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/leftunitorm--945def7b72f5c56c4f2c3dd9.md) | 226 | `declaration-track:945def7b72f5c56c4f2c3dd95c6a7a4ad85c94fe460793e3d178a1eee43c2aa7` |
| 27 | `def` | [leftUnitorInvM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/leftunitorinvm--0e6549cc7c3d454728a1cccc.md) | 230 | `declaration-track:0e6549cc7c3d454728a1cccce78e59a5b412ce62017af9f4ba5d5ed98739d576` |
| 28 | `def` | [rightUnitorM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/rightunitorm--608c83c2c21910898a8ddf70.md) | 234 | `declaration-track:608c83c2c21910898a8ddf70afc700a9d5e108ed07f8cb41606f0211cebdf657` |
| 29 | `def` | [rightUnitorInvM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/rightunitorinvm--495ed8d76a507221023c4245.md) | 238 | `declaration-track:495ed8d76a507221023c42450aecd6c068fd890729962da68a34349bf4c199dd` |
| 30 | `def` | [ofM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/ofm--2d7c64e28caf1eafb5dc2838.md) | 242 | `declaration-track:2d7c64e28caf1eafb5dc28381091ad674a373d133fa17f96e3fd8d754da944f8` |
| 31 | `def` | [ofAtomM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/ofatomm--e93bf6c60c180df202e7f0c2.md) | 247 | `declaration-track:e93bf6c60c180df202e7f0c20c7876295930afcbcd04c79156bd2d82a1f332e7` |
| 32 | `def` | [NormalExpr.toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/normalexpr-tolist--204430f4466ddffc6e2bab83.md) | 253 | `declaration-track:204430f4466ddffc6e2bab834151e0338299a2aec07bba800bb56cdcbeac1a59` |
| 33 | `structure` | [Eval.Result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/eval-result--7b7d0eac39e019c4a7da69e1.md) | 262 | `declaration-track:7b7d0eac39e019c4a7da69e1d52c5c0a88d33011f9df76c042ee3ac672639e60` |
| 34 | `class` | [MkEvalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/mkevalcomp--621524405bc91c7e531c1f23.md) | 272 | `declaration-track:621524405bc91c7e531c1f23ca95c9e46f41fba1eb5b2b8b045fa68ccf5b53e8` |
| 35 | `class` | [MkEvalWhiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/mkevalwhiskerleft--2ba204c27351c347699c2a5e.md) | 281 | `declaration-track:2ba204c27351c347699c2a5e8dbd194b55d8c3a2700edf76cc095df95e1777f5` |
| 36 | `class` | [MkEvalWhiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/mkevalwhiskerright--930278147cba9909f3a4bfb2.md) | 294 | `declaration-track:930278147cba9909f3a4bfb2483767a70bb3ea8cb3145840a15104f4d3a12368` |
| 37 | `class` | [MkEvalHorizontalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/mkevalhorizontalcomp--3c9fe6dd3864eee6dbb1f851.md) | 316 | `declaration-track:3c9fe6dd3864eee6dbb1f85185c70d5c10b241c003c9ff1406827295e93e3272` |
| 38 | `class` | [MkEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/mkeval--91b2d29303ea8e19df02978b.md) | 341 | `declaration-track:91b2d29303ea8e19df02978bc8fdb87fdabdd9fe2c711a0c1246f349037e5072` |
| 39 | `def` | [evalCompNil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/evalcompnil--4c6f04f2a7c6938881408a5f.md) | 363 | `declaration-track:4c6f04f2a7c6938881408a5fe118c2f47da12c7e26954bc0233dce7258fbb72d` |
| 40 | `def` | [evalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/evalcomp--851484626c8e9dca122c8d9b.md) | 368 | `declaration-track:851484626c8e9dca122c8d9bdaa39d5698cefc970a286a15cba59c31fd28a864` |
| 41 | `def` | [evalWhiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/evalwhiskerleft--109c03d3117e79cc5ab8330d.md) | 379 | `declaration-track:109c03d3117e79cc5ab8330d49ccb5f362250ee91273d2bc209fa764b86573da` |
| 42 | `def` | [evalWhiskerRightAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/evalwhiskerrightaux--30ce26a780e3b17cb47ec1ca.md) | 407 | `declaration-track:30ce26a780e3b17cb47ec1ca39d086504bbeb76a764eceb7f1fe90d122278ef3` |
| 43 | `def` | [evalWhiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/evalwhiskerright--1248f20acf0db443749c4d28.md) | 419 | `declaration-track:1248f20acf0db443749c4d28cb88b74681e197c38a657f1a5afaa8608f9ba50f` |
| 44 | `def` | [evalHorizontalCompAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/evalhorizontalcompaux--81ee7ccfbe96cceb83c01db0.md) | 457 | `declaration-track:81ee7ccfbe96cceb83c01db0e0a44cea55f9a0fc7586c5d401429a99962758a2` |
| 45 | `def` | [evalHorizontalCompAux'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/evalhorizontalcompaux--116f468bfea79a160574ace9.md) | 471 | `declaration-track:116f468bfea79a160574ace96e8fdf4b20ff7cfb79b6c2231fbe13da4a914cc2` |
| 46 | `def` | [evalHorizontalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/evalhorizontalcomp--e23d0d4ae88a653e4ac21124.md) | 487 | `declaration-track:e23d0d4ae88a653e4ac2112439e2579ebf1424a250fbb36dbb779696c2e2530f` |
| 47 | `def` | [traceProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/traceproof--a36e373bf03115e9eb74aad0.md) | 521 | `declaration-track:a36e373bf03115e9eb74aad0cf70e7886b31e20b22885d00f02dcb146bf9ea99` |
| 48 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/declarations/eval--de545a63cc08118395a78b89.md) | 527 | `declaration-track:de545a63cc08118395a78b891260c54b4d471959d16f4e5d0496f23b981de850` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
