# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AC.Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a870cf98f43dfa2e50523d59cfe3ec39c5c19b82",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a870cf98f43dfa2e50523d59cfe3ec39c5c19b82`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.AC.Main` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/mktype--ee2d552bbe41f27343d2b6b2.md) | 22 | `declaration-track:ee2d552bbe41f27343d2b6b20c06b7c5aec5ce0c3d3e7ef6e1fece7bf73a765d` |
| 2 | `def` | [mkInstMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/mkinstmul--f162e6cbb3e86912d8c7c7ff.md) | 24 | `declaration-track:f162e6cbb3e86912d8c7c7ff091b547073ba47d32831fa122b9579c7c8f39702` |
| 3 | `def` | [mkInstHMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/mkinsthmul--a71db112b2889aaa9876576b.md) | 26 | `declaration-track:a71db112b2889aaa9876576be569572b2343a05e669326fa084ff771cb28ceeb` |
| 4 | `def` | [mkBitVecLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/mkbitveclit--11bb551e60fd52242f6be40f.md) | 32 | `declaration-track:11bb551e60fd52242f6be40f6c131811d88dd4c88d74ee802d963957018fb97d` |
| 5 | `abbrev` | [VarIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/varindex--63485adc2d1444dc7e6b6fc0.md) | 39 | `declaration-track:63485adc2d1444dc7e6b6fc063401592d8159595f8eca65d69e220c2e3ce5185` |
| 6 | `inductive` | [Op](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/op--dee6155c7654a57a22861012.md) | 42 | `declaration-track:dee6155c7654a57a22861012bdd464ce9ced533a18098d419b40b9a5cc96ad33` |
| 7 | `def` | [ofExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/ofexpr--06d21296a1d3169f7558461f.md) | 50 | `declaration-track:06d21296a1d3169f7558461ffc3ccc125560d32d1f32501129bd3bf334839ee2` |
| 8 | `def` | [ofApp2?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/ofapp2--603fc2061e654a4a6b231811.md) | 62 | `declaration-track:603fc2061e654a4a6b2318119a810ec06be12afa1f6f0b7d2f676d8a69581fcb` |
| 9 | `def` | [toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/toexpr--fb2ddfe2408a4ac3ab14f245.md) | 66 | `declaration-track:fb2ddfe2408a4ac3ab14f245931a4463b7c74868d2dab32a76f9546aad547644` |
| 10 | `def` | [neutralElement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/neutralelement--34c26dd82624ceea43aa4fbc.md) | 73 | `declaration-track:34c26dd82624ceea43aa4fbc0173ad2e1daf446e019cdf28d8de97f57b06c78b` |
| 11 | `def` | [isSameKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/issamekind--8b3e20321bf988b29c354585.md) | 82 | `declaration-track:8b3e20321bf988b29c354585bff5359f6956b859c830e5aac6011b5e3afbe50a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/instance--3e64391093991f935159ed7e.md) | 87 | `declaration-track:3e64391093991f935159ed7e89dc0be7827defcb961efa1489ec68e52eea8ddb` |
| 13 | `structure` | [VarState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/varstate--1c1cdc654989f36237c03855.md) | 92 | `declaration-track:1c1cdc654989f36237c03855339d9c29b9a292b2cd583e906878767affbdb6fa` |
| 14 | `abbrev` | [CoefficientsMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/coefficientsmap--9dd03634ad7d02a99e79b773.md) | 115 | `declaration-track:9dd03634ad7d02a99e79b7734708da7e65f823ae0d4443bc35b0704b8d2e4057` |
| 15 | `abbrev` | [VarStateM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/varstatem--08d43a90f1fd21be90ff38c8.md) | 119 | `declaration-track:08d43a90f1fd21be90ff38c83b7b34e81ca6f8b845f040af185ed1a2f5e644be` |
| 16 | `def` | [VarStateM.run'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/varstatem-run--35b984d48df3b8dff6b715b1.md) | 121 | `declaration-track:35b984d48df3b8dff6b715b1a85e86ea21d4fba29bc03918ff82cc206ef20d05` |
| 17 | `def` | [VarStateM.exprToVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/varstatem-exprtovar--6e368d0dfe452d6c6f245167.md) | 130 | `declaration-track:6e368d0dfe452d6c6f2451678e599a7193970f9be9dca7e88bfef1e569415b26` |
| 18 | `def` | [VarStateM.varToExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/varstatem-vartoexpr--06f41657bbe8ab8fca6edcb9.md) | 142 | `declaration-track:06f41657bbe8ab8fca6edcb9b7faa8c00a3983f450dded56cf34fdb584194a26` |
| 19 | `def` | [VarStateM.computeCoefficients](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/varstatem-computecoefficients--8cca04fecfc674662f7cb862.md) | 164 | `declaration-track:8cca04fecfc674662f7cb8621ca1e1676b7f9fe7a8784811505a934c7a5b001e` |
| 20 | `structure` | [SharedCoefficients](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/sharedcoefficients--97dc3337d4daab2747ae7395.md) | 182 | `declaration-track:97dc3337d4daab2747ae739577044c9e34f07b3bc0e3104b10dba3b619d6a1ee` |
| 21 | `def` | [SharedCoefficients.compute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/sharedcoefficients-compute--351966af1f39daeba9914249.md) | 196 | `declaration-track:351966af1f39daeba99142493aa737083d3881f5b59749359f305691fe7f5f10` |
| 22 | `def` | [CoefficientsMap.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/coefficientsmap-toexpr--076bfff68f961de8443f8719.md) | 217 | `declaration-track:076bfff68f961de8443f8719e41a4d00be4f279ac8dab13ef67e3712c122b1ee` |
| 23 | `def` | [proveEqualityByAC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/proveequalitybyac--d1627e15b20129f84179ee88.md) | 239 | `declaration-track:d1627e15b20129f84179ee88d7672c645eca3ff2f08c2aaceaae947320e1b708` |
| 24 | `def` | [canonicalizeWithSharing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/canonicalizewithsharing--2a93d39810597985d3e8972a.md) | 260 | `declaration-track:2a93d39810597985d3e8972aba954850c0742b59c5dbdc065048b7dbcd78b0e9` |
| 25 | `def` | [bvAcNfpost](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/bvacnfpost--4837125c83df83764779344f.md) | 304 | `declaration-track:4837125c83df83764779344f36ec1f5defb03e9c2f819217df36dedace25cb00` |
| 26 | `def` | [bvAcNfTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/bvacnftarget--43a805d75955de9c0c6e6e0d.md) | 325 | `declaration-track:43a805d75955de9c0c6e6e0d855677ef0f6277d5e6bf6de0d20e2c1cf6ea36cf` |
| 27 | `def` | [bvAcNfHypMeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/bvacnfhypmeta--2ae441a7f3bfd913893edea4.md) | 336 | `declaration-track:2ae441a7f3bfd913893edea404cbe071bc83b9eeaa1e35fac006987801300fcb` |
| 28 | `def` | [bvAcNormalizePass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/declarations/bvacnormalizepass--6190013ffc5ad45337a02eb0.md) | 347 | `declaration-track:6190013ffc5ad45337a02eb0b7c2fbee3abf699954be271165def98f8b89fc78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
