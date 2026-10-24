# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25e9243f386bae2e75ee8117aadc0835c31d83da",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25e9243f386bae2e75ee8117aadc0835c31d83da`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Finset.Scalar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.NatAntidiagonal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/finantidiagonal--46c2fc62dafd94b5be4ad18d.md) | 69 | `declaration-track:46c2fc62dafd94b5be4ad18df5b03a210f7206dd155be3ea1e1e3a8ea49fb8c5` |
| 2 | `lemma` | [mem_finAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/mem-finantidiagonal--6a815ce151e3e175e21e039a.md) | 105 | `result-track:6a815ce151e3e175e21e039ae091525bb3f855611074c57145f7050651093eac` |
| 3 | `def` | [piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/piantidiag--fb4321a65f2cf995b748738e.md) | 117 | `declaration-track:fb4321a65f2cf995b748738ecbaa7d21beb8fd9e3c513c7e66bda7c3f2db903a` |
| 4 | `lemma` | [mem_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/mem-piantidiag--c93e41f0b502318ffaa0a4c0.md) | 132 | `result-track:c93e41f0b502318ffaa0a4c05313d9d60c81616921de246a2d3ba3115df6614d` |
| 5 | `lemma` | [piAntidiag_empty_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/piantidiag-empty-zero--79c5eac98b4526ffa3c712ff.md) | 145 | `result-track:79c5eac98b4526ffa3c712ffd3523135fc1e406e592882b10d91ab61816c991d` |
| 6 | `lemma` | [piAntidiag_empty_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/piantidiag-empty-of-ne-zero--88a61352f4a80d1873c79490.md) | 148 | `result-track:88a61352f4a80d1873c79490cac9bac7e8bab225c22b9d4abed8de952697aeb8` |
| 7 | `lemma` | [piAntidiag_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/piantidiag-empty--1f69050bfc9b5737e1ba9118.md) | 151 | `result-track:1f69050bfc9b5737e1ba91184de160ebf39b3c79a4df7ecf31fa0840d93af7ca` |
| 8 | `lemma` | [finsetCongr_piAntidiag_eq_antidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/finsetcongr-piantidiag-eq-antidiag--49081bd2a1576b552e88f8fd.md) | 154 | `result-track:49081bd2a1576b552e88f8fd63e7c7dd9430250cad9546e6943de36a86cc5ad8` |
| 9 | `lemma` | [pairwiseDisjoint_piAntidiag_map_addRightEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/pairwisedisjoint-piantidiag-map-addrightembedding--fd8dd65a08a57a22396a6030.md) | 167 | `result-track:fd8dd65a08a57a22396a6030ec90db352b433d39b87ae4ad03e8abfb4b009bac` |
| 10 | `lemma` | [piAntidiag_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/piantidiag-cons--cacb9a702fadc5d0ca4705ff.md) | 176 | `result-track:cacb9a702fadc5d0ca4705ff3fbd3790d39b82aa0b7e343227affb9de95c53b4` |
| 11 | `lemma` | [piAntidiag_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/piantidiag-insert--97d70a2990aa339a8e50c3bd.md) | 192 | `result-track:97d70a2990aa339a8e50c3bd8f33e271a5313a5837d448b788140f72b0cfcd2d` |
| 12 | `lemma` | [piAntidiag_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/piantidiag-zero--43dce09c33339643b6b999ca.md) | 203 | `result-track:43dce09c33339643b6b999ca43fbc3f35c77c4adb121b88702bb3af4b5fadbcb` |
| 13 | `lemma` | [piAntidiag_univ_fin_eq_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/piantidiag-univ-fin-eq-antidiagonaltuple--2214a52f9883cf291558f31a.md) | 215 | `result-track:2214a52f9883cf291558f31a9f8d8a092cc99fa1946187957553897dfb7b144c` |
| 14 | `lemma` | [nsmul_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/nsmul-piantidiag--c032be8dd1308d81ecaa0015.md) | 219 | `result-track:c032be8dd1308d81ecaa00158a695dd6989a2922cc1ce337f2404ebdef3fea90` |
| 15 | `lemma` | [map_nsmul_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/map-nsmul-piantidiag--a604c368a7cea627db7c548a.md) | 238 | `result-track:a604c368a7cea627db7c548aa31add0e9fbc7c25ee4637117280b0421085bc6f` |
| 16 | `lemma` | [nsmul_piAntidiag_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/nsmul-piantidiag-univ--9276d32c62b1c8511bb0cfea.md) | 244 | `result-track:9276d32c62b1c8511bb0cfea1b33d30bdd85fe6e2a49ec22c6769a463d075b90` |
| 17 | `lemma` | [map_nsmul_piAntidiag_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/map-nsmul-piantidiag-univ--e8583f91c102ac90dd9d494f.md) | 248 | `result-track:e8583f91c102ac90dd9d494fd807da8089b468b0b7f51ad916f8d65266587051` |
| 18 | `lemma` | [map_sym_eq_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/declarations/map-sym-eq-piantidiag--20fb28b6af1ac1c828398f7b.md) | 256 | `result-track:20fb28b6af1ac1c828398f7bde7ed65b4009a0ccce259fd6a8af8a47df6efa29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
