# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Plucker24.Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab5b6854166b09fc3ac3931c5093c556dbb63669",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab5b6854166b09fc3ac3931c5093c556dbb63669`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minor₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/minor--3e735cc8d64c6037aff07402.md) | 32 | `declaration-track:3e735cc8d64c6037aff07402e6af70c492a1e2ad6aa215a94ba563d2bea6d7a4` |
| 2 | `theorem` | [minor₂_eq_columnMinor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/minor-eq-columnminor--7ed8f2423165b5707f5fb67a.md) | 36 | `result-track:7ed8f2423165b5707f5fb67af45bf3724460a8190ece5150b30d3fb1e23ed329` |
| 3 | `theorem` | [orderedMinor_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/orderedminor-two--f7ce0cf1635d346bc18110e9.md) | 41 | `result-track:f7ce0cf1635d346bc18110e95ba4293e8d15d0f25853ab166a6dce9f803d9c94` |
| 4 | `theorem` | [minor₂_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/minor-swap--a62d964aa7d5105b4c3821ff.md) | 47 | `result-track:a62d964aa7d5105b4c3821ffeb56a3e26b1f11328b0284681ad92b8cf8423e9e` |
| 5 | `theorem` | [minor₂_plucker](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/minor-plucker--98bba5d4a0cc422dddcda1ae.md) | 53 | `result-track:98bba5d4a0cc422dddcda1ae91b16bf9219ee0689c1cd6530ef36647ff04a1bf` |
| 6 | `structure` | [PluckerCoordinates24](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/pluckercoordinates24--a11666ea4efa4d0837596bd2.md) | 61 | `declaration-track:a11666ea4efa4d0837596bd2ecebc832a1c9f1e07886d91fb3d2050985e75f1a` |
| 7 | `def` | [Compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/compatible--1b5792c215428c01ab48332a.md) | 72 | `declaration-track:1b5792c215428c01ab48332a1223f103b920139143a5c488fc71c32dda2ae0c3` |
| 8 | `def` | [StrictlyPositive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/strictlypositive--ed8beda1438c7a25c1e559ab.md) | 76 | `declaration-track:ed8beda1438c7a25c1e559ab05dd4431217d0ae2834289c7cc21aa943bfbe758` |
| 9 | `def` | [Nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/nonnegative--14d626c39836b974748081f5.md) | 80 | `declaration-track:14d626c39836b974748081f5e8df7459d74c62a92f0141b6128882b4a2d2b9af` |
| 10 | `def` | [ofMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/ofmatrix--08fb1c8769f551758676c632.md) | 84 | `declaration-track:08fb1c8769f551758676c632ac3f7ec6b9371778fc69281bea018b1b6badf921` |
| 11 | `theorem` | [ofMatrix_compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/ofmatrix-compatible--eec9565a01a4f96d3b29237f.md) | 89 | `result-track:eec9565a01a4f96d3b29237f144d21be0199ad1a5bbc3e8fd58ebfa0be672ca6` |
| 12 | `theorem` | [allOrderedMinorsPos_of_strictlyPositive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/allorderedminorspos-of-strictlypositive--04efce50151b821e6a258f76.md) | 94 | `result-track:04efce50151b821e6a258f768eb7f13499197d3781dc22833bd60092339fa75c` |
| 13 | `theorem` | [allOrderedMinorsNonneg_of_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/allorderedminorsnonneg-of-nonnegative--297113f3943fbf90e1500370.md) | 106 | `result-track:297113f3943fbf90e1500370f2308bf2b4722120a4b6222bc2b36510af2f7425` |
| 14 | `structure` | [Chart24](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/chart24--408efb86e42bcf2aa4b6a4d0.md) | 121 | `declaration-track:408efb86e42bcf2aa4b6a4d0fd77be0a49cc21cebd58131776946818a045162c` |
| 15 | `def` | [matrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/matrix--ae5e28925b520fbff5964c75.md) | 130 | `declaration-track:ae5e28925b520fbff5964c7575ff8081fafc29270901fbe730ec7e7f144b5e14` |
| 16 | `def` | [coordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/coordinates--75f29016a5d6951fcf9e3661.md) | 134 | `declaration-track:75f29016a5d6951fcf9e3661d96607cda878547f51294c951513e32861fff078` |
| 17 | `theorem` | [coordinates_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/coordinates-eq--5681f935b37dc4cca6b1da0e.md) | 138 | `result-track:5681f935b37dc4cca6b1da0e1e4b61f8a845adeefce843c696039aa8aec9627c` |
| 18 | `theorem` | [pivot_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/pivot-eq-one--93f9030e29b0c36dab532dfa.md) | 144 | `result-track:93f9030e29b0c36dab532dfa404397d4281c038de29b35b3934949155d4227a8` |
| 19 | `def` | [Positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/positive--4a234cc0d1958b5c6dffade4.md) | 149 | `declaration-track:4a234cc0d1958b5c6dffade4909cc00069ab40d4c32a4b9afb18263dcfb5a762` |
| 20 | `theorem` | [coordinates_strictlyPositive_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/coordinates-strictlypositive-iff--8e904f795148496fe9081a64.md) | 153 | `result-track:8e904f795148496fe9081a64fa534f0ebcaa5bbb2de5c362c6faf683500c9da1` |
| 21 | `theorem` | [coordinates_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/coordinates-injective--455098bebfb6ea40fbf615bc.md) | 159 | `result-track:455098bebfb6ea40fbf615bced87c297c08c9e09c17cba67cceae0f3f4470f42` |
| 22 | `def` | [fromCoordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/fromcoordinates--68048cba6ae36486c57050a5.md) | 169 | `declaration-track:68048cba6ae36486c57050a5b85198a6cf21f67cd5eedf42b0c14ed85a100c27` |
| 23 | `theorem` | [coordinates_fromCoordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/coordinates-fromcoordinates--754cb53a6d2bc5fbd40a48ac.md) | 173 | `result-track:754cb53a6d2bc5fbd40a48acbd584f41478e2267d0914da84ac182d4dabf26c6` |
| 24 | `theorem` | [fromCoordinates_coordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/fromcoordinates-coordinates--68ba4e9a3061b3ee3b7ab67d.md) | 189 | `result-track:68ba4e9a3061b3ee3b7ab67d8761424e916f374a2839307b2a171a96984f0be2` |
| 25 | `theorem` | [normalized_recognition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/normalized-recognition--0c8d6986818a3f40c6dc0c6e.md) | 196 | `result-track:0c8d6986818a3f40c6dc0c6e4022c85fea1ecd38bbdecd20302494e76b4e688a` |
| 26 | `theorem` | [positive_normalized_recognition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant695544d7239397f7c80ca33f1ae3e95376093a666e298b17796f0365efc06e22.lean/declarations/positive-normalized-recognition--2e12397031b5c4b53e137a5e.md) | 209 | `result-track:2e12397031b5c4b53e137a5e6477f06aafa7060ae200104c2f11b5973df60102` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
