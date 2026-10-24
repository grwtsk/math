# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Functor.Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30335a1a6f4055cc1a97d5b3b8fd4f81179f213c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30335a1a6f4055cc1a97d5b3b8fd4f81179f213c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Union` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NAry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Functor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/functor--12cd8853dea50997ce0ac696.md) | 37 | `declaration-track:12cd8853dea50997ce0ac69627eb2ad2496df251dfb4921c313be4bb457a0f95` |
| 2 | `instance` | [lawfulFunctor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/lawfulfunctor--ec85f05840c3f9733374e55b.md) | 39 | `declaration-track:ec85f05840c3f9733374e55b604b24387216d0db3be07d565b1eb77e67026538` |
| 3 | `theorem` | [fmap_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/fmap-def--ee05070e4c428807b50b3dfa.md) | 45 | `result-track:ee05070e4c428807b50b3dfad141e2df2f6f069e31a7b884564f836a20ba2952` |
| 4 | `instance` | [pure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/pure--e665b602c0877a9fe85dd6bf.md) | 52 | `declaration-track:e665b602c0877a9fe85dd6bf4e3b79487fee32869b3481f928d28cbd599ee790` |
| 5 | `theorem` | [pure_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/pure-def--af7bf0c6bc4b37fa76b0bf22.md) | 56 | `result-track:af7bf0c6bc4b37fa76b0bf22adf90de0e998f7357205462be6bcbad5dd2263fc` |
| 6 | `instance` | [applicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/applicative--4ffc63907db6e6f7d77feac8.md) | 65 | `declaration-track:4ffc63907db6e6f7d77feac87b13aa95d9c074aa61ddf12b2087651b424e7625` |
| 7 | `theorem` | [seq_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/seq-def--0e5fcf21cdad38a391414462.md) | 72 | `result-track:0e5fcf21cdad38a39141446256c602f4c8459c6038ab01e47ab20ebf878505f4` |
| 8 | `theorem` | [seqLeft_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/seqleft-def--ca2d36bd9a543cf63639fcc7.md) | 76 | `result-track:ca2d36bd9a543cf63639fcc7364d29a9f23c091e7b291f13c5fe2df605b564d1` |
| 9 | `theorem` | [seqRight_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/seqright-def--60fb3193c80848330d8d1d55.md) | 80 | `result-track:60fb3193c80848330d8d1d5591fd05a8cbaa2e400e75f94d85d6072f6e1dd471` |
| 10 | `theorem` | [image₂_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/image-def--d22f13a648480b8a60f451ec.md) | 85 | `result-track:d22f13a648480b8a60f451ec073f06588be88ab7e4ec028b93a2d82b9a199d00` |
| 11 | `instance` | [lawfulApplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/lawfulapplicative--59de20e487a90faa1ac10304.md) | 90 | `declaration-track:59de20e487a90faa1ac103047ee1acd8b266de7fbb14214af6030dfe1ded7e79` |
| 12 | `instance` | [commApplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/commapplicative--3888be8e8b91d519e8621249.md) | 130 | `declaration-track:3888be8e8b91d519e86212497cbe7987aba3f038b3d607b62a35c44dc4d7b70d` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/instance--e6c952f87b6d3c53af062f77.md) | 147 | `declaration-track:e6c952f87b6d3c53af062f773c8cd3d2854d76a253610f04405aba3397e15fe6` |
| 14 | `theorem` | [bind_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/bind-def--e0d1242cef98f69238ff017a.md) | 151 | `result-track:e0d1242cef98f69238ff017a1a1a0aeb9395357cd4992b714001bffc92594661` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/instance--119278c92021e326142182c5.md) | 154 | `declaration-track:119278c92021e326142182c530d5067cb4ebe19afe9e78ebeac436b5d92bbfd5` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/instance--c58208a4f20bc313391eccbf.md) | 170 | `declaration-track:c58208a4f20bc313391eccbffbdfdac6704dadc047df973d887001002d744c41` |
| 17 | `def` | [traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/traverse--5b499547f36fd3699336153c.md) | 186 | `declaration-track:5b499547f36fd3699336153c5d52f7d43d59138eb0259d1e89e4ad4bd5278668` |
| 18 | `theorem` | [id_traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/id-traverse--e17d1c2909cb4c177a2e69f1.md) | 190 | `result-track:e17d1c2909cb4c177a2e69f1eb9229a1ce387a43966b77de0ed2957e9b31ccc9` |
| 19 | `theorem` | [map_comp_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/map-comp-coe--0292b7454dccf66a0f7e6368.md) | 196 | `result-track:0292b7454dccf66a0f7e63689537cb6cf90b22ab0a40d847b2059df7a44700dc` |
| 20 | `theorem` | [map_comp_coe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/map-comp-coe-apply--0855d800c89dfc1b465e69b1.md) | 202 | `result-track:0855d800c89dfc1b465e69b15e3dd3dffe640a027ef43926ca3a1613b252e5d9` |
| 21 | `theorem` | [map_traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2171e92a6ff95db63b4379198dc4c0ffda7a9ca6612d2d81d44ea180106906f7.lean/declarations/map-traverse--7ce901ede52e158a59ac324a.md) | 207 | `result-track:7ce901ede52e158a59ac324afa7427524e284e23e638835954c7e01a9d7d5537` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
