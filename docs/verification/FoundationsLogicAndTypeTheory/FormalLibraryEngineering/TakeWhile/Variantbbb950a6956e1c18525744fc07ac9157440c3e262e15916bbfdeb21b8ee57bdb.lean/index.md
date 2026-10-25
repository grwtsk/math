# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TakeWhile.Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83edc6fa9f5e557c85ab815c95069b378e89fb73",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83edc6fa9f5e557c85ab815c95069b378e89fb73`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterators.Types.TakeWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/iterators-types-takewhile--ec5f090ce1624e7a74d10b5b.md) | 50 | `declaration-track:ec5f090ce1624e7a74d10b5b3f5aaa47e9f548417ed30bfd41f4eafdf32e8d0e` |
| 2 | `def` | [IterM.takeWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/iterm-takewhilewithpostcondition--0a988e4f1918fd73fe88f670.md) | 95 | `declaration-track:0a988e4f1918fd73fe88f670db3afec6dfb30286f6b5179595b9f83014abdaa0` |
| 3 | `def` | [IterM.takeWhileM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/iterm-takewhilem--1fa8f444aad5f2b427c1fa2b.md) | 131 | `declaration-track:1fa8f444aad5f2b427c1fa2b5af47dc59028a7e105fc0a60fabb3e63fe5e900f` |
| 4 | `def` | [IterM.takeWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/iterm-takewhile--5ff338cb5c975024f3b51473.md) | 167 | `declaration-track:5ff338cb5c975024f3b5147301943518da22f147675deaa21a4d4a327e0c44fa` |
| 5 | `inductive` | [TakeWhile.PlausibleStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/takewhile-plausiblestep--1fd424595f27f9e576463796.md) | 177 | `declaration-track:1fd424595f27f9e57646379695c8684e8baed13adc218e25d712e6beb8aaccaa` |
| 6 | `instance` | [TakeWhile.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/takewhile-institerator--0f5aa33121bfc5bde5756d89.md) | 188 | `declaration-track:0f5aa33121bfc5bde5756d894e7501bed44127d59bf47ed864ce53e22797a507` |
| 7 | `def` | [TakeWhile.instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/takewhile-instfinitenessrelation--b5a0e817831ee4b76fb70757.md) | 199 | `declaration-track:b5a0e817831ee4b76fb7075736b2f8eb3f2c0f340897395f9f1b2246c88dfafc` |
| 8 | `instance` | [TakeWhile.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/takewhile-instfinite--4c0aaa59f19eda18b543f0c6.md) | 220 | `declaration-track:4c0aaa59f19eda18b543f0c6b414645426e265b1b278269a90ef6ca914f4d248` |
| 9 | `def` | [TakeWhile.instProductivenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/takewhile-instproductivenessrelation--4ae72b967944d6e593b4e4fc.md) | 224 | `declaration-track:4ae72b967944d6e593b4e4fc7f033c68addfe71a4cdb98c6bf68b04be9fe491d` |
| 10 | `instance` | [TakeWhile.instProductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/takewhile-instproductive--19d46b33a145fcc2dac4e495.md) | 235 | `declaration-track:19d46b33a145fcc2dac4e495d93a31d89ce7e2c85ead5fef87fe21508bfe5ddf` |
| 11 | `instance` | [TakeWhile.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/declarations/takewhile-institeratorloop--b5b1c085a82bfb8a20d33ac9.md) | 239 | `declaration-track:b5b1c085a82bfb8a20d33ac9c71548610eac0d9349763b32f8cb74f0f32ed7e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
