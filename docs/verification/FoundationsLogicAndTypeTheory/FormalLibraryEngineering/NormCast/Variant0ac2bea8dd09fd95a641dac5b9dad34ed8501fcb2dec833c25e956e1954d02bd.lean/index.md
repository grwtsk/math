# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormCast.Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8944601062dd50a840761e2fc375a1e3ea0541c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8944601062dd50a840761e2fc375a1e3ea0541c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Conv.Simp` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.Simp` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.NormCast.Ext` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Tactic.CoeExt` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Classes.Cast` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/initialize--ae36de212a7210abf8d0c9f9.md) | 22 | `declaration-track:ae36de212a7210abf8d0c9f92c56f04cdf909d8389934c9a5cf4bf407d212896` |
| 2 | `def` | [proveEqUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/proveequsing--c209643240a12d7c1b9e952b.md) | 25 | `declaration-track:c209643240a12d7c1b9e952bb83991997adb50b5ad85e4b1082a827cc1ccf2ba` |
| 3 | `def` | [proveEqUsingDown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/proveequsingdown--db29b369eba409ca8b0922f9.md) | 36 | `declaration-track:db29b369eba409ca8b0922f9142f85c00f8f8fc7b85ed570ea2e2c7b47c3ab47` |
| 4 | `def` | [mkCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/mkcoe--6cdf9a3af05bbbd287d42d21.md) | 41 | `declaration-track:6cdf9a3af05bbbd287d42d212bc65051edb3f7212fa59a73117249705870c901` |
| 5 | `def` | [isCoeOf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/iscoeof--0df5b678a445a4e56d1f0d6c.md) | 49 | `declaration-track:0df5b678a445a4e56d1f0d6c2c6a064094644aba89a940d876f54892ac691804` |
| 6 | `def` | [isNumeral?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/isnumeral--174ff4cadc9e92ce01590c69.md) | 60 | `declaration-track:174ff4cadc9e92ce01590c69a3479a16a983775b0a5e832396c516ef833f3749` |
| 7 | `def` | [splittingProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/splittingprocedure--063e05c656e43420f459f30d.md) | 76 | `declaration-track:063e05c656e43420f459f30dc0597e16e99f7c9f97b8f7e578dc06500902ba19` |
| 8 | `def` | [prove](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/prove--d88530365545f796b3e8cc96.md) | 127 | `declaration-track:d88530365545f796b3e8cc96f109e6c358715af5ca4617ccf641aa448f6ba7c0` |
| 9 | `def` | [upwardAndElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/upwardandelim--4ba9b03caaf7e6a5c61b0f5c.md) | 138 | `declaration-track:4ba9b03caaf7e6a5c61b0f5c5acafc166b1a4f23fe13d5ba3076cc672d19ef90` |
| 10 | `def` | [numeralToCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/numeraltocoe--39e4478f9b3405b7ff3553b2.md) | 149 | `declaration-track:39e4478f9b3405b7ff3553b278a178198f56dd4e1787ecd6578a28826448facb` |
| 11 | `def` | [derive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/derive--469ae3e1645d96cb9ed04193.md) | 159 | `declaration-track:469ae3e1645d96cb9ed04193aa8a693578e4640a719e834fedd67b904831f22a` |
| 12 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/elab--4a9a4cd4705f6d3e9778feb7.md) | 197 | `declaration-track:4a9a4cd4705f6d3e9778feb7d0e254585d84d551c0f5b8c230a2c15e65de51de` |
| 13 | `def` | [normCastTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/normcasttarget--0ffdcacdda0de428b5c9edf2.md) | 213 | `declaration-track:0ffdcacdda0de428b5c9edf23cba473000e8d7cdf13c48b22dfd80d25e0f7d10` |
| 14 | `def` | [normCastHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/normcasthyp--f390810ae146acfcf9f9e62b.md) | 220 | `declaration-track:f390810ae146acfcf9f9e62be12c16bab62bf6cd82099b29631968640bee2468` |
| 15 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/elab--ef586f7fcddce18dd63331ce.md) | 227 | `declaration-track:ef586f7fcddce18dd63331ce18d34f2deb17d0a00c6e3155c982654ecd08053d` |
| 16 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/macro--f69b2957d32778e7b97728ef.md) | 239 | `declaration-track:f69b2957d32778e7b97728ef92e6c5e381603495c401b011dd52cc5374e2ead1` |
| 17 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/macro--03cbb239e6bd1c5242af1c1c.md) | 273 | `declaration-track:03cbb239e6bd1c5242af1c1cf8abe528ed194471652c1a658ea56ce385605318` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/syntax--a436ed0885bede11f617147f.md) | 279 | `declaration-track:a436ed0885bede11f617147f11ec8eb1745b22c2f517b9ade6165d51d186d248` |
| 19 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/macro-rules--78ba4011a4c32901460a65cd.md) | 280 | `declaration-track:78ba4011a4c32901460a65cd80ff9e7a59fab1fbc0d1a2a9ee699393062c01a4` |
| 20 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/macro--3143cd81268f0a340dc7ff23.md) | 289 | `declaration-track:3143cd81268f0a340dc7ff23babc141a7fe86c117b3718bb8fd8f99030c7aa4e` |
| 21 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/macro--cc6b4acb6765ab4cf3c9d94c.md) | 294 | `declaration-track:cc6b4acb6765ab4cf3c9d94c3907f83f9cfd65cae8fbdecb92bd12c284277db9` |
| 22 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/syntax--e0cb254b31ca501a74a629b2.md) | 297 | `declaration-track:e0cb254b31ca501a74a629b24e785b340ab980ab118444cbac068980e8024ce0` |
| 23 | `def` | [evalConvNormCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/evalconvnormcast--583f8f93631854956a20d836.md) | 299 | `declaration-track:583f8f93631854956a20d8361e69ace30666f2dd08d04e962dd630299964dde7` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/syntax--c8fbbb7cc11ead5e3f7fe622.md) | 324 | `declaration-track:c8fbbb7cc11ead5e3f7fe6223fbe22f65612029044da25f6348ed7aaeef0fc54` |
| 25 | `def` | [evalPushCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/declarations/evalpushcast--2ccfd318c7e8b73da2d938f5.md) | 327 | `declaration-track:2ccfd318c7e8b73da2d938f5cdc2614dd954130bfda95d638b0d15f4dd451630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
