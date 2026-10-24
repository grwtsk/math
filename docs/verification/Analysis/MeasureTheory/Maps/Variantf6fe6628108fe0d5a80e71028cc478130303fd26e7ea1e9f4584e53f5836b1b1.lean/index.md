# Verification target: GRWTSK.Analysis.MeasureTheory.Maps.Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ddf81b513445b5a96d5aaf10687ee16c6a93d3a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ddf81b513445b5a96d5aaf10687ee16c6a93d3a`.

Source path: `GRWTSK/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Embedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Restriction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IocProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/iocprodioc--f3c75267f10c19ef0b590aa5.md) | 31 | `declaration-track:f3c75267f10c19ef0b590aa5dd682a25d927e6bc0e266a30ade6e84c7b66ab6f` |
| 2 | `lemma` | [measurable_IocProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/measurable-iocprodioc--b14210272f3de4f101861c9e.md) | 37 | `result-track:b14210272f3de4f101861c9ea6db9ed2c6f9f6a88bbd7324e9554b7625deac71` |
| 3 | `def` | [IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/iicprodioc--161e61fbb1b1c916be32c724.md) | 48 | `declaration-track:161e61fbb1b1c916be32c7247814dbd97f4581637c0aaf08cd3622e74b698706` |
| 4 | `lemma` | [IicProdIoc_def](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/iicprodioc-def--7c6360f8024c353e46770207.md) | 56 | `result-track:7c6360f8024c353e467702076ffbb230b5a3571b5832e395b58a82a0171088f2` |
| 5 | `lemma` | [frestrictLe₂_comp_IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/frestrictle-comp-iicprodioc--eab83b97e02358626c3e55e5.md) | 60 | `result-track:eab83b97e02358626c3e55e5d2867d08277e64a38c4536663c651c89a8a64a83` |
| 6 | `lemma` | [restrict₂_comp_IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/restrict-comp-iicprodioc--bea2614d3fe6f410d40547bf.md) | 65 | `result-track:bea2614d3fe6f410d40547bf67467520e431707c6d6aae996bcda14e92c44847` |
| 7 | `lemma` | [IicProdIoc_self](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/iicprodioc-self--aa29ed11b95d5ab7ee4aaed9.md) | 71 | `result-track:aa29ed11b95d5ab7ee4aaed9b6626fd39293a9916d84f54d5fe018c02df0dd53` |
| 8 | `lemma` | [IicProdIoc_le](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/iicprodioc-le--868c1b674c6a9e9831999f95.md) | 75 | `result-track:868c1b674c6a9e9831999f95247c090c221ada669a072bdb721e7c7d03d4e1f7` |
| 9 | `lemma` | [IicProdIoc_comp_restrict₂](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/iicprodioc-comp-restrict--8733dbd02f14471342d368db.md) | 80 | `result-track:8733dbd02f14471342d368db4d1f9110adcca8238e020fa219262f596d94d2c0` |
| 10 | `lemma` | [measurable_IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/measurable-iicprodioc--43fb81cbd53345b03faa214d.md) | 88 | `result-track:43fb81cbd53345b03faa214d6af470aa2f88fa58a1967f121fbb9c2473eaf530` |
| 11 | `def` | [IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/iicprodioc--4d88e5330de52f6c433fb5b4.md) | 98 | `declaration-track:4d88e5330de52f6c433fb5b45f18a70b5c7efae4b8ac6950a3d01509253eda0d` |
| 12 | `lemma` | [coe_IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/coe-iicprodioc--e92eed130f3db5cea58ccbbb.md) | 116 | `result-track:e92eed130f3db5cea58ccbbbde5d29311fe5727d778dc710fa93440d594aadff` |
| 13 | `lemma` | [coe_IicProdIoc_symm](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/coe-iicprodioc-symm--483d589a487b529f9e419f57.md) | 119 | `result-track:483d589a487b529f9e419f579198091861071c1406df3808130712160ddff7fe` |
| 14 | `def` | [IicProdIoi](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/iicprodioi--66a08dc67bccdd85f48f8deb.md) | 125 | `declaration-track:66a08dc67bccdd85f48f8deb321cfe1907750a1087f1f60298e9510f0a487a37` |
| 15 | `def` | [MeasurableEquiv.piSingleton](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/measurableequiv-pisingleton--ba6ec51a1751e8423eb9442f.md) | 152 | `declaration-track:ba6ec51a1751e8423eb9442f1864bb374ea474bd754b56d5b353f3429c30865b` |
| 16 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.IocProdIoc.Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.IocProdIoc_preimage](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/root-grwtsk-analysis-measuretheory-iocprodioc-variant6db139a70a7407f85a3--aff5efb213d87891c78448d0.md) | 171 | `result-track:aff5efb213d87891c78448d0b06dcef100a73c914b2a51b56f6fd7e2c137eec0` |
| 17 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.IocProdIoc.Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.IicProdIoc_preimage](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/declarations/root-grwtsk-analysis-measuretheory-iocprodioc-variant6db139a70a7407f85a3--cf0ca66f5bd12edbcbf14460.md) | 190 | `result-track:cf0ca66f5bd12edbcbf1446037ac20701737bb1a2905af6ed49d585b9a988ee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
