# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Dimension.Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f3d604c47735f532587065ef84ee69af8e07e5e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f3d604c47735f532587065ef84ee69af8e07e5e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Ext.EnoughProjectives` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasProjectiveDimensionLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/hasprojectivedimensionlt--750cbb16b3aff1e73053bd21.md) | 35 | `declaration-track:750cbb16b3aff1e73053bd21bee334309e87e67826a8ec7606ada51272731d89` |
| 2 | `abbrev` | [HasProjectiveDimensionLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/hasprojectivedimensionle--d38375fa567b700e1e34e6e5.md) | 42 | `declaration-track:d38375fa567b700e1e34e6e5a81d798c268042fede2b12735df92d7d18fe67d7` |
| 3 | `lemma` | [subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/subsingleton--d8bb87db16218c8044c494e6.md) | 49 | `result-track:d8bb87db16218c8044c494e6bd60c626af6bf9d3277825c066f121716bdc78ee` |
| 4 | `lemma` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/mk--30645023b0f2d48ceb68c278.md) | 56 | `result-track:30645023b0f2d48ceb68c278b3c4e057cc3228ae281824586f9e08e2bf9de32f` |
| 5 | `lemma` | [Abelian.Ext.eq_zero_of_hasProjectiveDimensionLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/abelian-ext-eq-zero-of-hasprojectivedimensionlt--542a7fa636ab539f6ce99077.md) | 65 | `result-track:542a7fa636ab539f6ce9907757ea7296c5dc213928e74bb163e8074ba095aac1` |
| 6 | `lemma` | [hasProjectiveDimensionLT_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/hasprojectivedimensionlt-iff--f9a5a7f6dfb4b910a0a339f6.md) | 74 | `result-track:f9a5a7f6dfb4b910a0a339f60dc23e8dc240161acf63bc15876d93451b73fb23` |
| 7 | `lemma` | [Limits.IsZero.hasProjectiveDimensionLT_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/limits-iszero-hasprojectivedimensionlt-zero--4bafa1353b1068c77fd524de.md) | 81 | `result-track:4bafa1353b1068c77fd524deff6aef9e97446d2cababb43a76fe07334254f797` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/instance--f35e50b6894244b9e36f21cc.md) | 88 | `declaration-track:f35e50b6894244b9e36f21cc2246791535f0c4c2f5bd29adcb0b52cacaa8a319` |
| 9 | `lemma` | [isZero_of_hasProjectiveDimensionLT_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/iszero-of-hasprojectivedimensionlt-zero--036affa6d03cc2003cb037d1.md) | 91 | `result-track:036affa6d03cc2003cb037d172dd8ec7cbd16277863c32e573649e56e9b1eb2c` |
| 10 | `lemma` | [hasProjectiveDimensionLT_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/hasprojectivedimensionlt-of-ge--e8ddad1afa2da21310f2b80e.md) | 98 | `result-track:e8ddad1afa2da21310f2b80ec4e948f3d041073f8d43a0cd4e267bfb78657a97` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/instance--ab5621846af3aa13b7ea14d7.md) | 106 | `declaration-track:ab5621846af3aa13b7ea14d79d52f4f5151d293ee996d02e9cf1eb62d21cf7b6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/instance--1fffbf9f8c58d0a2193c4bb8.md) | 110 | `declaration-track:1fffbf9f8c58d0a2193c4bb872e13e09c0d2260c17efed0ca39c2937df4fdbad` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/instance--101686401340c9f8d98d76b8.md) | 114 | `declaration-track:101686401340c9f8d98d76b8ca25f50429aa66bad4d895a98ec5310c54e8e0cb` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/instance--99d013069121c8e7236d2485.md) | 118 | `declaration-track:99d013069121c8e7236d248591c18093397fc0e6842c2c5af6680660a505ffaf` |
| 15 | `lemma` | [Retract.hasProjectiveDimensionLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/retract-hasprojectivedimensionlt--f801f1881cf82ce1f8ab427d.md) | 128 | `result-track:f801f1881cf82ce1f8ab427d0929ca8e9394bd1ad0b2322d00b77927e481956d` |
| 16 | `lemma` | [hasProjectiveDimensionLT_of_iso](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/hasprojectivedimensionlt-of-iso--18f3209fd28f7c261cdda1a2.md) | 139 | `result-track:18f3209fd28f7c261cdda1a2281964e098b997ec77626f6a27b39693e4735f06` |
| 17 | `lemma` | [hasProjectiveDimensionLT_X₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/hasprojectivedimensionlt-x--845b5e22ac980c4c3b933a6d.md) | 155 | `result-track:845b5e22ac980c4c3b933a6d39b59cb60bd7985f2ae9e889f2eaa150e555e01e` |
| 18 | `lemma` | [hasProjectiveDimensionLT_X₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/hasprojectivedimensionlt-x--37a4341c5ba8c79f71000c13.md) | 165 | `result-track:37a4341c5ba8c79f71000c13c3db6cbfe61cc6f4b308a7a6fc681b00644cfba6` |
| 19 | `lemma` | [hasProjectiveDimensionLT_X₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/hasprojectivedimensionlt-x--1bc613802d091d0d15037dc1.md) | 176 | `result-track:1bc613802d091d0d15037dc109991721ae87c071dab2dbb9596fe7a763add0dc` |
| 20 | `lemma` | [hasProjectiveDimensionLT_X₃_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/hasprojectivedimensionlt-x-iff--f95fe2f24fddd075c040fd0a.md) | 186 | `result-track:f95fe2f24fddd075c040fd0a9ee0620e06b84b056bd58144bbbe139d9e801152` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/declarations/instance--f394af7242c97433a3367bd5.md) | 195 | `declaration-track:f394af7242c97433a3367bd5c939a114fa5a47ca788a858fa280c5f10a130ada` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
