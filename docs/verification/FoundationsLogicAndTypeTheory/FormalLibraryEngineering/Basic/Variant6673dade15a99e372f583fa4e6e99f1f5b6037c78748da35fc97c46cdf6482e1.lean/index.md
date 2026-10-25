# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1be4e7a36525456e98d78c93c339db405c7e6724",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1be4e7a36525456e98d78c93c339db405c7e6724`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/state--3a4fd409c6917ccaa6e2c598.md) | 44 | `declaration-track:3a4fd409c6917ccaa6e2c598628f6c96c04d2f66c0735ed5e4c0ecbaf2b56a8c` |
| 2 | `abbrev` | [FoldM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/foldm--cfd253d4d02f6f302d8fd9b7.md) | 48 | `declaration-track:cfd253d4d02f6f302d8fd9b722e5323c0f504d0d69f53940c4aafefe6d8a976c` |
| 3 | `def` | [fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/fold--ff0665bb946a9c2a3c5fbc7b.md) | 50 | `declaration-track:ff0665bb946a9c2a3c5fbc7b5c65f324f9a914d377f670136b599c1ec9412089` |
| 4 | `def` | [foldUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/foldunsafe--8a4e78eb5c47d36916e73c05.md) | 93 | `declaration-track:8a4e78eb5c47d36916e73c05fb66c2d30ca2e6d0af29890c8e8ed9e5564a6a48` |
| 5 | `opaque` | [foldRelevantConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/foldrelevantconstants--6a87c1f1da8b6b9a8104715d.md) | 100 | `declaration-track:6a87c1f1da8b6b9a8104715de29f7775cc393b4222070647e586e2c6a95000e9` |
| 6 | `def` | [relevantConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/relevantconstants--b8f20414814f10a47beeadc7.md) | 103 | `declaration-track:b8f20414814f10a47beeadc744019079b5d0a8702f5168fc57b2aa4bce776815` |
| 7 | `def` | [relevantConstantsAsSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/relevantconstantsasset--af8a4c86c95c898707a873ac.md) | 106 | `declaration-track:af8a4c86c95c898707a873acc0a5e6a4f4a82785a09a9ec1a3aa4c5c0ee25b97` |
| 8 | `def` | [Lean.MVarId.getConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/lean-mvarid-getconstants--3499c7161f6d0f72225f1a4c.md) | 111 | `declaration-track:3499c7161f6d0f72225f1a4c9af5e47c9fbe9318094323bac3e32c4b11e4c72a` |
| 9 | `def` | [Lean.MVarId.getRelevantConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/lean-mvarid-getrelevantconstants--6d056a84e7f2ab536a0f90a4.md) | 123 | `declaration-track:6d056a84e7f2ab536a0f90a420b1dbb064b7548c8918013338f8c6f80bf91c50` |
| 10 | `structure` | [Suggestion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/suggestion--6fce4133569bd8d1a5184469.md) | 144 | `declaration-track:6fce4133569bd8d1a5184469beb24fca599ecfe6579b923903a15fd51537856b` |
| 11 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/config--40c496b8114ded99c8eec044.md) | 159 | `declaration-track:40c496b8114ded99c8eec044aa42722e82920c874300e46908620b101a2de895` |
| 12 | `abbrev` | [Selector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/selector--158d2993eaaeebaa01c21140.md) | 186 | `declaration-track:158d2993eaaeebaa01c21140820c407d9f5e5686a703f8a36bcda31236c6ebf2` |
| 13 | `def` | [ppSelector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/ppselector--0928cbc50d1df161ca2027c5.md) | 192 | `declaration-track:0928cbc50d1df161ca2027c531f26cf10a95731ce8d355253408d68b74e8b8ea` |
| 14 | `def` | [postFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/postfilter--c449f9f5e442700bcd858d26.md) | 203 | `declaration-track:c449f9f5e442700bcd858d264b8342aec852855364ccd4dd001f876b2feedc25` |
| 15 | `def` | [maxSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/maxsuggestions--9091e20a9a4194ecd8515484.md) | 211 | `declaration-track:9091e20a9a4194ecd851548461c25426f459e59427addd570adbc759e1099be7` |
| 16 | `def` | [combine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/combine--2384855a2a223b4432320c91.md) | 216 | `declaration-track:2384855a2a223b4432320c910c4a20df8a3858ce29048ddf05d633593ae9e0e4` |
| 17 | `def` | [filterGrindAnnotated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/filtergrindannotated--58bf3555df271b15c89553dd.md) | 239 | `declaration-track:58bf3555df271b15c89553dd01bed4c8acb749e93b59b254ace922e1aad20942` |
| 18 | `def` | [intersperse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/intersperse--a79437a6962f5af47d758827.md) | 262 | `declaration-track:a79437a6962f5af47d758827abd181525d4edc867a59b5aa0982ebfac674de43` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/builtin-initialize--cd8b1071fd6998035166911e.md) | 313 | `declaration-track:cd8b1071fd6998035166911e4d467c61e493fcd2af710d9e2fe8814c0f7f9c89` |
| 20 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/builtin-initialize--cf51b26c8d6f42522c5a117b.md) | 324 | `declaration-track:cf51b26c8d6f42522c5a117b827e75224193c36b781bb5713ffd1b4b7c864e15` |
| 21 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/builtin-initialize--c99c24e9099cf32720460592.md) | 335 | `declaration-track:c99c24e9099cf32720460592a5cb181dc69576fd75051ee58a6405537c80c6ae` |
| 22 | `def` | [isDeniedModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/isdeniedmodule--f9c1fc77a37d2c478a32b8d3.md) | 341 | `declaration-track:f9c1fc77a37d2c478a32b8d394238c53ae67b3706429fbf5586185c7ec21f4dd` |
| 23 | `def` | [isDeniedPremise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/isdeniedpremise--49c0bb16c49d06a9d854c32b.md) | 344 | `declaration-track:49c0bb16c49d06a9d854c32ba5d4ed947bb56a78470b4fc27edacc29c0802afe` |
| 24 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/empty--dc2c44d70b6911ad4cd32613.md) | 365 | `declaration-track:dc2c44d70b6911ad4cd32613a40ea72801412712d79e0b4fa136afbe6070be75` |
| 25 | `def` | [random](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/random--41236c30c2e718c7cdd2376a.md) | 368 | `declaration-track:41236c30c2e718c7cdd2376af63e02e4918af07418013a06475df54d804f301f` |
| 26 | `def` | [currentFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/currentfile--ebaacb135850fc26b69c7ea6.md) | 382 | `declaration-track:ebaacb135850fc26b69c7ea65ca47f61445b0fad37bdc044fd4c5a00c5e0a2e9` |
| 27 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/builtin-initialize--88e2653fa83a6965706658cc.md) | 397 | `declaration-track:88e2653fa83a6965706658cc0369a7a5024194c8d9c65eaa67337a431900d533` |
| 28 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/builtin-initialize--1c3f14b63f5f435f705b5dd7.md) | 407 | `declaration-track:1c3f14b63f5f435f705b5dd707fd273f9ed62f9db03b41dcf538469d40b69563` |
| 29 | `def` | [getSelectorImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/getselectorimpl--e6de39c9e08e8abd85763544.md) | 418 | `declaration-track:e6de39c9e08e8abd857635444abe8155ec4fd534aa9c69d38916449687590292` |
| 30 | `opaque` | [getSelector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/getselector--cbd2aa34cb0fb6f11c07426c.md) | 426 | `declaration-track:cbd2aa34cb0fb6f11c07426c56717cc4a4d9d49584b1cda04bea42abca71d46b` |
| 31 | `def` | [select](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/select--ad1f9e5dc17acdd3ce71f701.md) | 429 | `declaration-track:ad1f9e5dc17acdd3ce71f701975a4acb1d2b348584b23e33fa185bdb42f6b25f` |
| 32 | `def` | [elabSetLibrarySuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/elabsetlibrarysuggestions--847c27f4aa97cd3662fad7f5.md) | 448 | `declaration-track:847c27f4aa97cd3662fad7f58a4e47331aa7913f5f24fd75055c4cf59e56548a` |
| 33 | `def` | [evalSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/declarations/evalsuggestions--55dd8211cab9aa699b105732.md) | 459 | `declaration-track:55dd8211cab9aa699b1057326297aa80b6e27d837f8577c926bc956927ad2486` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
