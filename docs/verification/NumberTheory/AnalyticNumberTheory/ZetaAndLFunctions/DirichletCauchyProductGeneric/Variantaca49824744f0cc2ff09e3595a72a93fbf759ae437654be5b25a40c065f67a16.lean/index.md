# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletCauchyProductGeneric.Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b398ca80aa8e5f91aca2d997bd779c6f89254a41",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b398ca80aa8e5f91aca2d997bd779c6f89254a41`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PositivePairReindexing` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.MobiusDirichletSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convolution` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complexWeight_eq_cpow_neg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/complexweight-eq-cpow-neg--4b2a3985bc164565643cdb7c.md) | 26 | `result-track:4b2a3985bc164565643cdb7c40e3e4bd907b74ab79450b6022558715cebe8109` |
| 2 | `theorem` | [complexWeight_eq_one_div_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/complexweight-eq-one-div-cpow--8857e464b11e532df8bc8234.md) | 42 | `result-track:8857e464b11e532df8bc823449b01e8d0a9f789c087bee16b799b5a050573a9b` |
| 3 | `theorem` | [complexDirichletTerm_eq_lseries_term](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/complexdirichletterm-eq-lseries-term--082bf3edc0524d59d0f06522.md) | 50 | `result-track:082bf3edc0524d59d0f06522b9fe17dc9d4432a505dcb9a053573685711959dc` |
| 4 | `theorem` | [complexDirichletSeries_eq_lseries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/complexdirichletseries-eq-lseries--9676429ec4ed70c26dfe95d8.md) | 61 | `result-track:9676429ec4ed70c26dfe95d89e532973836abeade95e1ed378085143bf1d8f65` |
| 5 | `theorem` | [zetaComplexHalfPlane_eq_complexDirichletSeries_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/zetacomplexhalfplane-eq-complexdirichletseries-one--373d1ac4cb600b6999dbe68b.md) | 67 | `result-track:373d1ac4cb600b6999dbe68b25f116261cc2e7a7afcbb3399524d7e7becd8f46` |
| 6 | `theorem` | [zetaComplexHalfPlane_eq_lseries_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/zetacomplexhalfplane-eq-lseries-one--2dffe3fb4963fc066ccdbf08.md) | 74 | `result-track:2dffe3fb4963fc066ccdbf0835a756388e3cc5abbe4ee8bcc21ee818b54c8cbf` |
| 7 | `theorem` | [mobiusDirichletSeries_eq_lseries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/mobiusdirichletseries-eq-lseries--3f9229304bf5962a3d3e44a4.md) | 80 | `result-track:3f9229304bf5962a3d3e44a43d2e992aae1e3c596bbcb699e9a2548da901c9a1` |
| 8 | `theorem` | [complexDirichletSeries_epsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/complexdirichletseries-epsilon--abc0f8b2299dcb22bcfffcc2.md) | 85 | `result-track:abc0f8b2299dcb22bcfffcc2d406a93d4d321c5812c7e82ff056846edd4ccf8b` |
| 9 | `theorem` | [complexDirichletSeries_term_norm_summable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/complexdirichletseries-term-norm-summable--c99300a238b80a4c4da17a93.md) | 98 | `result-track:c99300a238b80a4c4da17a93ae6ed33b958bd7ebff72fa67bae15ebf9f335772` |
| 10 | `theorem` | [complexDirichletSeries_terms_summable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/complexdirichletseries-terms-summable--4d41e5f65835ae4a468a3682.md) | 105 | `result-track:4d41e5f65835ae4a468a3682a9882950f2f405c760150f9db30def9acb878243` |
| 11 | `theorem` | [lseriesSummable_of_complexDirichletAbsSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/lseriessummable-of-complexdirichletabssummable--f9e5599b2644bd6459596396.md) | 112 | `result-track:f9e5599b2644bd6459596396b2c786f001f71f7cbe5da451814c0784f7b053b7` |
| 12 | `theorem` | [lseries_convolution_eq_dirichletConv_of_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/lseries-convolution-eq-dirichletconv-of-ne-zero--c8f4b2aab26522a0c6066f3c.md) | 120 | `result-track:c8f4b2aab26522a0c6066f3c03ed8114298f95c7146103c577ea5e8a5576f1df` |
| 13 | `theorem` | [complexDirichletSeries_mul_expanded_pair_tsum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/complexdirichletseries-mul-expanded-pair-tsum--6a63e7b6facc3be0567810de.md) | 128 | `result-track:6a63e7b6facc3be0567810dee74b3f9172827afb4c9bf5bbc2c98ea3bcd90905` |
| 14 | `theorem` | [complexDirichletSeries_mul_of_absSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/complexdirichletseries-mul-of-abssummable--80d70b024babe227cde4dbb0.md) | 155 | `result-track:80d70b024babe227cde4dbb00846747e6f03a00dd59a5e6ddd19e62283a8dc17` |
| 15 | `theorem` | [tsum_dirichlet_pair_reindex_by_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean/declarations/tsum-dirichlet-pair-reindex-by-mul--3f7fba64e29bffc34afb1a05.md) | 187 | `result-track:3f7fba64e29bffc34afb1a051a07fea22ad3f120bddae38488b838d759983b4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
