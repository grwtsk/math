# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44dbdfb1df5fce213635952aa677b2c4a4ef5624",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44dbdfb1df5fce213635952aa677b2c4a4ef5624`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsClosedUnderSubobjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/isclosedundersubobjects--bc5fc8280308e7957f41ebe6.md) | 32 | `declaration-track:bc5fc8280308e7957f41ebe6bd2233cecb58bcccd11055c0a8932237430e6142` |
| 2 | `lemma` | [prop_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/prop-of-mono--952797a84ec2be4c40db8cfe.md) | 39 | `result-track:952797a84ec2be4c40db8cfed8eabf50ebba4fcd972c0fad4c305be7f0d5a16a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/instance--aa97699533a08bb7bad18da4.md) | 42 | `declaration-track:aa97699533a08bb7bad18da40ddca9c4da0a204b4bcac57ec07c5b0bb940cbff` |
| 4 | `lemma` | [prop_X₁_of_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/prop-x-of-shortexact--49a0cce03df445dff793821a.md) | 45 | `result-track:49a0cce03df445dff793821af1cf383a44292c604fb708a0995b384189782e13` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/instance--5ff3a8930c4e0cb43b256378.md) | 50 | `declaration-track:5ff3a8930c4e0cb43b256378139f19951dfba5366105b2da17d5cbc2ca4d8964` |
| 6 | `class` | [IsClosedUnderQuotients](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/isclosedunderquotients--0170098fbf6023b78e43de3e.md) | 60 | `declaration-track:0170098fbf6023b78e43de3e2143f237b636f59531853f7fe7dc35c838022bcb` |
| 7 | `lemma` | [prop_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/prop-of-epi--c8302ef09d4afa904a8768b9.md) | 65 | `result-track:c8302ef09d4afa904a8768b93515c260f7586b9d64047d4440f5817f82025cee` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/instance--efbf6e5a16b8d8e4e3371621.md) | 68 | `declaration-track:efbf6e5a16b8d8e4e3371621387f50adb015343a4847f846d4e7bac4df448046` |
| 9 | `lemma` | [prop_X₃_of_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/prop-x-of-shortexact--544efff0fe6092c3f0ebb72e.md) | 71 | `result-track:544efff0fe6092c3f0ebb72e42117eccbdb8fe124cb5b2120249f64efd3d8431` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/instance--7a6eb953d1d2d8799efea3da.md) | 76 | `declaration-track:7a6eb953d1d2d8799efea3dac7141e7480e0ee97d30d21c39cd35ec1581c4977` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/instance--2a7e3198513bd93d5d460af6.md) | 82 | `declaration-track:2a7e3198513bd93d5d460af6d8b1a6b795d9eb711265530f89b8edc683bcceab` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/instance--e9c2f7f7f3c25925b223b62c.md) | 85 | `declaration-track:e9c2f7f7f3c25925b223b62c8fe4a84ce8af8cdad45db0db584cd0a54fd07dda` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/instance--2d867e264550608347d63ce8.md) | 88 | `declaration-track:2d867e264550608347d63ce86577193dcc6f2d1f528e6f5c4211cbcabe5998d9` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26.lean/declarations/instance--905089faa38d7b83d0b9fa64.md) | 91 | `declaration-track:905089faa38d7b83d0b9fa64254134688d44d16fcdcfbceac8d8d38ae4cce849` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
