# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0a2207bd2f56c72bd0c6deda54815f96dba40a6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0a2207bd2f56c72bd0c6deda54815f96dba40a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Finset.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/finset-fintype--f6c05a9331addea568e22984.md) | 18 | `declaration-track:f6c05a9331addea568e229840a914a137ae30edb78c757c5730e99ec7bd3fa75` |
| 2 | `theorem` | [Fintype.card_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/fintype-card-finset--ead647f43b9d24d13c29a58b.md) | 22 | `result-track:ead647f43b9d24d13c29a58b04c70c9b9df75685cbc3adf93e4628802b4cc911` |
| 3 | `lemma` | [powerset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/powerset-univ--7e63a8bb47782f7817502f5c.md) | 28 | `result-track:7e63a8bb47782f7817502f5c302b3afe060b007c407d09767dc60e8c69e41163` |
| 4 | `lemma` | [filter_subset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/filter-subset-univ--f151653fb02dc622f403e8e5.md) | 31 | `result-track:f151653fb02dc622f403e8e59efe45b8a7eb7b5c047f13d09758dde942b1f9bd` |
| 5 | `lemma` | [powerset_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/powerset-eq-univ--b3e555b8a6714d368dbb7b7c.md) | 34 | `result-track:b3e555b8a6714d368dbb7b7c1739627e11c4ccdc3e066f12ed8ac5f2043f2c98` |
| 6 | `lemma` | [mem_powersetCard_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/mem-powersetcard-univ--eff6a6511c36704b5bed7af6.md) | 37 | `result-track:eff6a6511c36704b5bed7af6c5796f0b92ab3fc0f64eb6ea3cad7f7dec42e504` |
| 7 | `lemma` | [univ_filter_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/univ-filter-card-eq--5bd980ce724664febdb8056c.md) | 42 | `result-track:5bd980ce724664febdb8056c9d0be3eca4c3a4feb4068cf582303864567d8ccd` |
| 8 | `theorem` | [Fintype.card_finset_len](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/fintype-card-finset-len--04998e8655eff48cb1d3671d.md) | 48 | `result-track:04998e8655eff48cb1d3671da92ad6d3619308a5774d99a31084269fb24d0e1f` |
| 9 | `instance` | [Set.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/set-fintype--a529cde66337ae885338dd66.md) | 52 | `declaration-track:a529cde66337ae885338dd66d221e286701734e347ce987ef5512b98d9e15b2a` |
| 10 | `instance` | [Set.instFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/set-instfinite--f5d3d4366f07cc1058d11d5d.md) | 59 | `declaration-track:f5d3d4366f07cc1058d11d5d28eda777a4793d38b1c11795cdd62d5ddf15cd51` |
| 11 | `theorem` | [Fintype.card_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5fa7ac8968c73cc08bed6eb24667e45f6b09934e4d5c5983fa7c09d0e2aabd19.lean/declarations/fintype-card-set--126b22372e0c0f588d203c55.md) | 64 | `result-track:126b22372e0c0f588d203c558061d72d1d9a0a42e319420b89978d366cd49c0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
