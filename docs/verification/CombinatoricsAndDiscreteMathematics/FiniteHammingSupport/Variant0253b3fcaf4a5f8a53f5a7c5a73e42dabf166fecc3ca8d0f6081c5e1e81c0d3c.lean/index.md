# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHammingSupport.Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f19b586f5974b673a32672c14294fd6bac8ccc3b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f19b586f5974b673a32672c14294fd6bac8ccc3b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.BitVec.Lemmas` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.ExactOverlap` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/declarations/finitesupport--cf4b16e709b1a47719bd0b40.md) | 17 | `declaration-track:cf4b16e709b1a47719bd0b407c75a73a42b8d067171ceda14293c246b52cb6de` |
| 2 | `def` | [incidenceOfSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/declarations/incidenceofsupport--6b0bd56642d49c60eabdeeb0.md) | 24 | `declaration-track:6b0bd56642d49c60eabdeeb073051616b98fb62820f2d915cac8c6bd952f89c6` |
| 3 | `theorem` | [finiteSupport_incidenceOfSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/declarations/finitesupport-incidenceofsupport--63873445a1c54535065a24c6.md) | 31 | `result-track:63873445a1c54535065a24c659812bcbe3cca416c6565c25bf71c8868ef62b61` |
| 4 | `theorem` | [incidenceOfSupport_finiteSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/declarations/incidenceofsupport-finitesupport--77701cbfc32fc38e17e8d635.md) | 39 | `result-track:77701cbfc32fc38e17e8d6357d958b468c97fe60e8c5f9189577d01e7d90f774` |
| 5 | `theorem` | [cpopNatRec_eq_sum_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/declarations/cpopnatrec-eq-sum-range--7cc1d455bc64a6023cfe2827.md) | 54 | `result-track:7cc1d455bc64a6023cfe28279f5dff4c07206e70cd6ebccf16a2337dfd144598` |
| 6 | `theorem` | [cpop_eq_finiteSupport_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/declarations/cpop-eq-finitesupport-card--2280b2c8a8c53c08202bbf10.md) | 70 | `result-track:2280b2c8a8c53c08202bbf108c685c50963134a1446e1077f981d4c092755c60` |
| 7 | `theorem` | [finiteHamming_eq_card_sdiff_union_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/declarations/finitehamming-eq-card-sdiff-union-sdiff--6378f3f541ca6635941f62ee.md) | 87 | `result-track:6378f3f541ca6635941f62eeacfabba45a87e2d5e87d63706c4b794e5fd4b4c3` |
| 8 | `theorem` | [finiteHamming_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/declarations/finitehamming-comm--f09480b684c70acc144858ad.md) | 108 | `result-track:f09480b684c70acc144858ad4c0c81c5c5c3ad2c03ab05523396014df65407f4` |
| 9 | `theorem` | [finiteHamming_incidenceOfSupport_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/declarations/finitehamming-incidenceofsupport-of-subset--a87eba3fabfa668fdbfc9985.md) | 117 | `result-track:a87eba3fabfa668fdbfc99855d9560505c9734213c1f49000a00a1ac03d00c51` |
| 10 | `theorem` | [finiteHamming_incidenceOfSupport_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/declarations/finitehamming-incidenceofsupport-of-disjoint--c4cbca6e75f20448b23916f6.md) | 131 | `result-track:c4cbca6e75f20448b23916f6f32d35600c300598eaf239277dbda2304a2ad314` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
