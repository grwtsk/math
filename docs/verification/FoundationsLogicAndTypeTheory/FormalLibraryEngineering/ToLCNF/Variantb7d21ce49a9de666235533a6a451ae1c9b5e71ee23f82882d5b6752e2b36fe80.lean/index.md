# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToLCNF.Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9900b6b8e441e5bb8f21a9b575b6eff78c654d7",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9900b6b8e441e5bb8f21a9b575b6eff78c654d7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.CasesInfo` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Compiler.NoncomputableAttr` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Util` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Format.Macro` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.OriginalConstKind` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLCProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/islcproof--738c8a80f6ced484b38f762c.md) | 37 | `declaration-track:738c8a80f6ced484b38f762c35df5807c8254e5025564a743d807ff657b3aaca` |
| 2 | `def` | [mkLcProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/mklcproof--4f0bbc77f301b0ceb6cbb376.md) | 41 | `declaration-track:4f0bbc77f301b0ceb6cbb37629dca5c2038c49a58c14b6b0d56430bba96e27d3` |
| 3 | `inductive` | [Element](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/element--ec6eb9c4f99c2f0cdbe6a6f5.md) | 49 | `declaration-track:ec6eb9c4f99c2f0cdbe6a6f50f7a9405d5ae8b6e3a8f09253fdcb999ee342097` |
| 4 | `abbrev` | [BindCasesM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/bindcasesm-state--6c78112d4cf708da44faf562.md) | 61 | `declaration-track:6c78112d4cf708da44faf56254a8b1d9326742d8505cd85f275050e83ce8dfff` |
| 5 | `abbrev` | [BindCasesM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/bindcasesm--d0e417e99c394dd6ede1c788.md) | 64 | `declaration-track:d0e417e99c394dd6ede1c7888632c09b8dd3a4262575bb5b0c6458c621c62569` |
| 6 | `def` | [bindCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/bindcases--70aea794625b8287a07df0de.md) | 77 | `declaration-track:70aea794625b8287a07df0de1e90f339667f681c04b7cdceb02baa55a350a909` |
| 7 | `def` | [seqToCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/seqtocode--72cb3dbace00b7660367a590.md) | 168 | `declaration-track:72cb3dbace00b7660367a590b9adfc2d81fad6174379e6d0d86e9825ead83a39` |
| 8 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/context--70c291b5c9d3087ea57cc99b.md) | 211 | `declaration-track:70c291b5c9d3087ea57cc99b412d03f64099475cf1cec373e8730bf0d4c6394b` |
| 9 | `structure` | [CacheKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/cachekey--c1c3c57fcbce966593dfdecf.md) | 229 | `declaration-track:c1c3c57fcbce966593dfdecf2cb90b7605e1e011df2dfba1d47584d17a5536d5` |
| 10 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/state--66192a9a4dc025b12892b7df.md) | 235 | `declaration-track:66192a9a4dc025b12892b7df18aebcd10e571005d4632cdcb82d35d01388082a` |
| 11 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/m--26805d1c51c67f8d6e1e4d82.md) | 260 | `declaration-track:26805d1c51c67f8d6e1e4d828d0a225b618bedb8008eabea5a23cf2cfa80e7db` |
| 12 | `def` | [liftMetaM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/liftmetam--a4f8f5844d956d14903c35b9.md) | 262 | `declaration-track:a4f8f5844d956d14903c35b91325e85f111f51c51df7ef820b9805da810aa4ee` |
| 13 | `def` | [pushElement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/pushelement--c71d3933c77c69e06db7cf91.md) | 266 | `declaration-track:c71d3933c77c69e06db7cf91350f1c8d264b6f0da4e3f58b658c3596421af343` |
| 14 | `def` | [mkUnreachable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/mkunreachable--b3665cc24aab347e24b43392.md) | 269 | `declaration-track:b3665cc24aab347e24b43392abb554d960610249df1127b1cb0ad6a9b23ed496` |
| 15 | `def` | [mkAuxLetDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/mkauxletdecl--ccc48a2abbd75f79238263a3.md) | 274 | `declaration-track:ccc48a2abbd75f79238263a300b5100c6b066456a563306e7de78aed51457a7f` |
| 16 | `def` | [letValueToArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/letvaluetoarg--18013a0555fd70cce49523fc.md) | 282 | `declaration-track:18013a0555fd70cce49523fc0935830f33331992125ecbee45af6460e5801786` |
| 17 | `def` | [toCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/tocode--f2b31da7ba4bbb42ce41c964.md) | 286 | `declaration-track:f2b31da7ba4bbb42ce41c964e4318eed773b98ee01edf9794742f19379097f0f` |
| 18 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/run--fe8097bc86eda34261656402.md) | 293 | `declaration-track:fe8097bc86eda3426165640215453ec10f75720e9a527e7d5a905ef671e4ed6e` |
| 19 | `def` | [withExpectedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/withexpectedtype--e20442eaedd0626cb66536a4.md) | 297 | `declaration-track:e20442eaedd0626cb66536a4d2dfbcfcd97e6285013f55a2945523be8e2afe3b` |
| 20 | `def` | [withoutExpectedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/withoutexpectedtype--5e784b8e14e124819980de57.md) | 302 | `declaration-track:5e784b8e14e124819980de5714f9a3d15251cf2400eebc933ec16092b639f2fd` |
| 21 | `def` | [isTypeFormerType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/istypeformertype--37f008449a7ce2d902da75fc.md) | 309 | `declaration-track:37f008449a7ce2d902da75fc81ac8d412b9db5996c0aa297dd09ce81749f3d25` |
| 22 | `def` | [withNewScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/withnewscope--aa2ac62b6aecdde7a63c8f1d.md) | 336 | `declaration-track:aa2ac62b6aecdde7a63c8f1de907b7b0b8799f1e3887eb78cb779aac21dd2935` |
| 23 | `def` | [applyToAny](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/applytoany--80364338f50be96d00e2d566.md) | 355 | `declaration-track:80364338f50be96d00e2d566e954fe13ef74a369867dcd5483e48fb2fa3dc418` |
| 24 | `def` | [toLCNFType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/tolcnftype--1d3ac4d4a2d58035d4892bca.md) | 361 | `declaration-track:1d3ac4d4a2d58035d4892bca148eff861a16d8440eee5fd79146b372ee2d7618` |
| 25 | `def` | [cleanupBinderName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/cleanupbindername--ce19ec649d926505abd53aa0.md) | 370 | `declaration-track:ce19ec649d926505abd53aa0db04bf86c4999d819c1bc69b001511dabcbb2c12` |
| 26 | `def` | [mkParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/mkparam--5c763431ea695382283ded9a.md) | 378 | `declaration-track:5c763431ea695382283ded9abcad067f6994c3c494f9227de281108411a91782` |
| 27 | `def` | [mkLetDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/mkletdecl--0f917e69eb793d8436f66098.md) | 386 | `declaration-track:0f917e69eb793d8436f6609881ae23664f3ff9c2b8fc00802a7c5da042b6bd36` |
| 28 | `def` | [visitLambda](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/visitlambda--fbd14badc15448cf7d7cedbb.md) | 399 | `declaration-track:fbd14badc15448cf7d7cedbbcf704529efb6c9543fc7ca1676fa41194294042e` |
| 29 | `def` | [visitBoundedLambda](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/visitboundedlambda--492ee67eecc05e737b6184f7.md) | 416 | `declaration-track:492ee67eecc05e737b6184f7db3dea673f257c44b4ff97e18e989ad679fd114a` |
| 30 | `def` | [mustEtaExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/mustetaexpand--92e89c52189ef9409e0aac0b.md) | 429 | `declaration-track:92e89c52189ef9409e0aac0b4e5fa4d15bc6f7ddfdb996ee2f6832287fbc4784` |
| 31 | `def` | [etaExpandN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/etaexpandn--3fff7eaab9884ee651bd7f04.md) | 441 | `declaration-track:3fff7eaab9884ee651bd7f04e5662a00d2a52d1931d7257ad6a5aaf55f204891` |
| 32 | `def` | [checkComputable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/checkcomputable--8b8dd722189e48758384dc8f.md) | 448 | `declaration-track:8b8dd722189e48758384dc8fa1ffa12a5aa01c031abff1f645f2d7e8b1b3105e` |
| 33 | `def` | [etaReduceImplicit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/etareduceimplicit--6c0aa7f9f948ddc3f6a4e92d.md) | 466 | `declaration-track:6c0aa7f9f948ddc3f6a4e92daf2ffb2cbe37d40e2804d2e7c2730ee9ac92de8a` |
| 34 | `def` | [litToValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/littovalue--9814dba3cb6870e351805fa2.md) | 482 | `declaration-track:9814dba3cb6870e351805fa27cc4b80d8b3d24a8994483774e61a209b8b9c6db` |
| 35 | `def` | [toLCNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/declarations/tolcnf--5b89d2390c1070d97b275f58.md) | 494 | `declaration-track:5b89d2390c1070d97b275f588a9b42cf8a02592dfb8a8af58a5e92111c3e5fdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
