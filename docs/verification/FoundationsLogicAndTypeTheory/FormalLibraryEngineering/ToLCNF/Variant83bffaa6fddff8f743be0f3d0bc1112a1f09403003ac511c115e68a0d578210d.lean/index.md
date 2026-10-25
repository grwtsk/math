# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToLCNF.Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "855a348185006c9b3aaf13af2db2ac63ba492853",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `855a348185006c9b3aaf13af2db2ac63ba492853`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.CasesInfo` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Compiler.NoncomputableAttr` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Util` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Format.Macro` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.OriginalConstKind` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLCProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/islcproof--a914be4ce27e7f615b29e305.md) | 29 | `declaration-track:a914be4ce27e7f615b29e3053d1afdd8292c6d592a36b6377aa5daa3af812211` |
| 2 | `def` | [mkLcProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/mklcproof--146cb948da969aaea56c5567.md) | 33 | `declaration-track:146cb948da969aaea56c5567a64555f86722a284c31e5dcd6c44229d807488a9` |
| 3 | `inductive` | [Element](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/element--0e50fa2e993741bd8e72c664.md) | 41 | `declaration-track:0e50fa2e993741bd8e72c664b12ee858f753796dc872500120fc85afc0dbf9ec` |
| 4 | `abbrev` | [BindCasesM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/bindcasesm-state--f54f8354d9d9fb957c871bba.md) | 53 | `declaration-track:f54f8354d9d9fb957c871bba5689cd5e992d8a59a082b919f6413c953b3cfbf2` |
| 5 | `abbrev` | [BindCasesM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/bindcasesm--b87053fa96adc4c6271d1c23.md) | 56 | `declaration-track:b87053fa96adc4c6271d1c23a2ba077e3f268edcd32f97bc34145ba2f00913d9` |
| 6 | `def` | [bindCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/bindcases--31dcaac4b91015067fe8aaae.md) | 69 | `declaration-track:31dcaac4b91015067fe8aaaeecfba774c6d34caeec4416519b1dda3a8b7c9bfa` |
| 7 | `def` | [seqToCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/seqtocode--6890e4363a2a73995670785d.md) | 160 | `declaration-track:6890e4363a2a73995670785dcc23eba673a0347490d647796f0b7c820cfd3d31` |
| 8 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/context--0f1f63e7e0225bea2a64ec5e.md) | 203 | `declaration-track:0f1f63e7e0225bea2a64ec5e584db2fcd1ca4639fb72b9576235279f6717e0e5` |
| 9 | `structure` | [CacheKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/cachekey--9f2192a566e66da41c855246.md) | 221 | `declaration-track:9f2192a566e66da41c855246b3179d0fb5664527587a71f446475077dffcd56c` |
| 10 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/state--f3929ca4d766c21f2eafd7aa.md) | 227 | `declaration-track:f3929ca4d766c21f2eafd7aa209bf706625024d372b3fbd33d578ac248572d8e` |
| 11 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/m--187c2771af3f6b2c01e7bce3.md) | 252 | `declaration-track:187c2771af3f6b2c01e7bce376421be8853c81c8528bfd290bc427cb18221101` |
| 12 | `def` | [liftMetaM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/liftmetam--7b5ba484dd45a07f95bbc79f.md) | 254 | `declaration-track:7b5ba484dd45a07f95bbc79ffd428816fb9c86dcf2007356021a02819a83f5ca` |
| 13 | `def` | [pushElement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/pushelement--d96509284b7befa24c4b4981.md) | 258 | `declaration-track:d96509284b7befa24c4b49816983246fb3082c7e4bf9f458daf256658c9c0527` |
| 14 | `def` | [mkUnreachable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/mkunreachable--8490b71278d418d2949bb3de.md) | 261 | `declaration-track:8490b71278d418d2949bb3de2e8670ce6baa262bc5b279f32a0e7590b8371763` |
| 15 | `def` | [mkAuxLetDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/mkauxletdecl--ed5c61cdc35db60d80645cfc.md) | 266 | `declaration-track:ed5c61cdc35db60d80645cfc1e4c4974fa6d0b1b9257fdb6e05418587574c429` |
| 16 | `def` | [letValueToArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/letvaluetoarg--ba40484b3a95ed65af9c5683.md) | 274 | `declaration-track:ba40484b3a95ed65af9c5683f37ed71fcbe739558336753f4039c2b0efd4ad13` |
| 17 | `def` | [toCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/tocode--927cdf266e996fefc2359262.md) | 278 | `declaration-track:927cdf266e996fefc2359262eb0da9bb309405789df000d14e425a3ae4bea984` |
| 18 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/run--13c31f7615000575e7a48986.md) | 285 | `declaration-track:13c31f7615000575e7a48986f469c290e6ce6c7d94f8a4c694ea45a597919854` |
| 19 | `def` | [withExpectedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/withexpectedtype--ed842a11693327bcd06f954e.md) | 289 | `declaration-track:ed842a11693327bcd06f954e665ba2d8f39c65ea49c2d091815267d5d2dec7da` |
| 20 | `def` | [withoutExpectedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/withoutexpectedtype--3a9c81eef849e7640145a613.md) | 294 | `declaration-track:3a9c81eef849e7640145a613e5fc740510db8f0832e94aa536b212f5155e9033` |
| 21 | `def` | [isTypeFormerType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/istypeformertype--c96680d381696a35e2f3ca2e.md) | 301 | `declaration-track:c96680d381696a35e2f3ca2ee3dbc4548c7e16f30e247205515b3981fa763f35` |
| 22 | `def` | [withNewScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/withnewscope--827d61d036aadb4c27408fb7.md) | 328 | `declaration-track:827d61d036aadb4c27408fb7beeb60501a473fa6419bce75e98ee7735d5f53fe` |
| 23 | `def` | [applyToAny](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/applytoany--76f5783b9dc5491262c16a05.md) | 347 | `declaration-track:76f5783b9dc5491262c16a05c0e9519d886242158ceea03ff64394b0578b6af5` |
| 24 | `def` | [toLCNFType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/tolcnftype--386493f1caa000a05708bd8e.md) | 353 | `declaration-track:386493f1caa000a05708bd8e3ccff38ab1682c5c9dacb94cad05596a94f7e40f` |
| 25 | `def` | [cleanupBinderName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/cleanupbindername--80d52e5c1daa79a6bdfa2a0a.md) | 362 | `declaration-track:80d52e5c1daa79a6bdfa2a0aded27b2bb64134ba9b7e9081cc961f95eb0ede86` |
| 26 | `def` | [mkParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/mkparam--bb8bc3de2f9f43ea04bde822.md) | 370 | `declaration-track:bb8bc3de2f9f43ea04bde822065c274e43fe8516b1e25f5bf53ae366fbfaae3b` |
| 27 | `def` | [mkLetDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/mkletdecl--28854c47be8cabb0ca37ab88.md) | 378 | `declaration-track:28854c47be8cabb0ca37ab8815e32ddbccf4ac8c3c07cc3e641538157cb5c478` |
| 28 | `def` | [visitLambda](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/visitlambda--91f409c2b3fe63f9825e1b7a.md) | 391 | `declaration-track:91f409c2b3fe63f9825e1b7ae109535c2e47d4e13455dda6b3e73feb361f3ae8` |
| 29 | `def` | [visitBoundedLambda](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/visitboundedlambda--bdef35e32a3d670a4eece409.md) | 408 | `declaration-track:bdef35e32a3d670a4eece4091437ec0d8b2ffc427f21bf879ce9b6f536164df2` |
| 30 | `def` | [mustEtaExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/mustetaexpand--f32bbcd1d2455a80f842034c.md) | 421 | `declaration-track:f32bbcd1d2455a80f842034cd1afc2094ab2465def7f8435873a52f335b57dc4` |
| 31 | `def` | [etaExpandN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/etaexpandn--748279cfdc72b80e54916e13.md) | 433 | `declaration-track:748279cfdc72b80e54916e13af4a7ccdcdef9d413ae54e244371ead84856ff98` |
| 32 | `def` | [checkComputable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/checkcomputable--37e0be4fbf87a8571bb837c2.md) | 440 | `declaration-track:37e0be4fbf87a8571bb837c24d5dc869de5d72e11a8c528937ca3a1f2b02044c` |
| 33 | `def` | [etaReduceImplicit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/etareduceimplicit--8069dcef4211d6c8916d1e6f.md) | 458 | `declaration-track:8069dcef4211d6c8916d1e6f17f261ef524eec466c739cde7e9ca3d831a8c097` |
| 34 | `def` | [litToValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/littovalue--8e0c9057c50fac54f8ae6348.md) | 474 | `declaration-track:8e0c9057c50fac54f8ae63483141c883ccf1319231284adcfee2c566a7035d77` |
| 35 | `def` | [toLCNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/declarations/tolcnf--9f146a492c9bbf27b3b719e6.md) | 486 | `declaration-track:9f146a492c9bbf27b3b719e6473cc09d560011156a521b71b34f96a4eb42af0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
