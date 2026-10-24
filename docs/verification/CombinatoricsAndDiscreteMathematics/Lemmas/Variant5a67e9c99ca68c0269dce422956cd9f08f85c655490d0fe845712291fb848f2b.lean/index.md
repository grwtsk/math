# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d46b7c08e150bee130af4eadc7260de1402109ce",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d46b7c08e150bee130af4eadc7260de1402109ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Insert` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_iff_inter_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/disjoint-iff-inter-eq-empty--2670e39d7ace4b4f112d4c62.md) | 43 | `result-track:2670e39d7ace4b4f112d4c62567d58feaff27652f6115616e61fe2cbb129f1e9` |
| 2 | `theorem` | [union_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/union-empty--f237680052e35077220e20d4.md) | 49 | `result-track:f237680052e35077220e20d449f700a0b4ddce952f40f0c1a1c240d5ed072e15` |
| 3 | `theorem` | [empty_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/empty-union--c15d355d30add1115a61bfc4.md) | 53 | `result-track:c15d355d30add1115a61bfc4ee4d5062985764be011b6487b2c9c15c046d1ba2` |
| 4 | `theorem` | [Nonempty.inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/nonempty-inl--d4d1f552feba434bbbf790cd.md) | 57 | `result-track:d4d1f552feba434bbbf790cd30301302fa0836b5a55c3e38c02f4c311d5dc1e4` |
| 5 | `theorem` | [Nonempty.inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/nonempty-inr--13813aca7b6dc9e8cf728690.md) | 61 | `result-track:13813aca7b6dc9e8cf7286903dc2b2d6e584418cf0ddbe6ac3175880d94050b0` |
| 6 | `theorem` | [insert_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/insert-eq--cacd94e382cfa6e58910dcd8.md) | 64 | `result-track:cacd94e382cfa6e58910dcd80efed43165e9a3a2202f434da1257605d9b31a95` |
| 7 | `theorem` | [insert_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/insert-union--ff8a8771c35dba0e7b4868a8.md) | 68 | `result-track:ff8a8771c35dba0e7b4868a82707c2975d94608f9265f8312379aabfb799653a` |
| 8 | `theorem` | [union_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/union-insert--26721222da370e56a637a46b.md) | 72 | `result-track:26721222da370e56a637a46b40b06fe0ab7945d2acdadee8c9d46d69c645abd7` |
| 9 | `theorem` | [insert_union_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/insert-union-distrib--6ec88c31365850a7f125862c.md) | 75 | `result-track:6ec88c31365850a7f125862cd602274410a94b4862f56b1314c3fa2b140f52fc` |
| 10 | `theorem` | [induction_on_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/induction-on-union--0a115abb4fad5aecc0993344.md) | 85 | `result-track:0a115abb4fad5aecc0993344265cee1c30b42eeb4db2ac5c4c3e0a32bdb3314e` |
| 11 | `theorem` | [inter_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/inter-empty--e60183e569baf414716f3299.md) | 99 | `result-track:e60183e569baf414716f3299377f13d7dd7c13e553d15043c74b20d21016d4c5` |
| 12 | `theorem` | [empty_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/empty-inter--4fd3e4416a98ead15b10d476.md) | 103 | `result-track:4fd3e4416a98ead15b10d476e5741659c44694f83339c99841dc861fc09d7b74` |
| 13 | `theorem` | [insert_inter_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/insert-inter-of-mem--6c94065bae23cd27dce76937.md) | 107 | `result-track:6c94065bae23cd27dce769376dff3aaf6d9cc330678020ccb492bd7d81509bc1` |
| 14 | `theorem` | [inter_insert_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/inter-insert-of-mem--d5049ece0cc95dfae6100f87.md) | 114 | `result-track:d5049ece0cc95dfae6100f8742a0bfae18921cdf926e6279708cc341ddfdf131` |
| 15 | `theorem` | [insert_inter_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/insert-inter-of-notmem--e3b7b84773ed75172cea7dce.md) | 118 | `result-track:e3b7b84773ed75172cea7dce748ea68fdf6bb16beed35ca044aaf8815dc1a2fc` |
| 16 | `theorem` | [inter_insert_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/inter-insert-of-notmem--dc1337b0c9a4c07c29b9ef68.md) | 127 | `result-track:dc1337b0c9a4c07c29b9ef686d5b7dcd7893a8adbaecaf9d19e6455bbb69e836` |
| 17 | `theorem` | [singleton_inter_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/singleton-inter-of-mem--18c89a6eb34d9b9600931f2a.md) | 133 | `result-track:18c89a6eb34d9b9600931f2ae977716eeeb87d5cdfad44147382961d2ece2eb0` |
| 18 | `theorem` | [singleton_inter_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/singleton-inter-of-notmem--301d0c0485a10ac79bc3014e.md) | 137 | `result-track:301d0c0485a10ac79bc3014e9f5806c49523ff4bc472aa4d6d7c19ea7b60f087` |
| 19 | `lemma` | [singleton_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/singleton-inter--9cf9bc705e0061774e1a1ced.md) | 143 | `result-track:9cf9bc705e0061774e1a1cedcbb1c9fd45c4c3c2b2f047a6a4879aad01a3f816` |
| 20 | `theorem` | [inter_singleton_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/inter-singleton-of-mem--2eb560e99786b22c82b5be3a.md) | 148 | `result-track:2eb560e99786b22c82b5be3a301b0aaff782a3380e38aec1ed8b576f7851f32c` |
| 21 | `theorem` | [inter_singleton_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/inter-singleton-of-notmem--6beef9ffa6e1354110e1d13c.md) | 152 | `result-track:6beef9ffa6e1354110e1d13cba7ed87ac0b7c64a25049c4bb4bbaa224be80201` |
| 22 | `lemma` | [inter_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/inter-singleton--11c615c47c762de9aac43aa6.md) | 157 | `result-track:11c615c47c762de9aac43aa6a9f95d9e4ae370e0f67f0bf2649aed8b539a6b26` |
| 23 | `lemma` | [union_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/union-eq-empty--82b6714adfb182772ec39db0.md) | 161 | `result-track:82b6714adfb182772ec39db08f3c15ed332a22b1df4ca535d69f030718ef13d8` |
| 24 | `lemma` | [union_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/union-nonempty--a168d8caf8485c4698beaa23.md) | 162 | `result-track:a168d8caf8485c4698beaa236d12fa8a75a04ec0955db605b20d1d61a825caa5` |
| 25 | `theorem` | [insert_union_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/insert-union-comm--c89e6f605bdb9221ef5f46d0.md) | 165 | `result-track:c89e6f605bdb9221ef5f46d067ef2d4651191798e1a3bb92f268aecde04d7b9b` |
| 26 | `theorem` | [toFinset_append](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant5a67e9c99ca68c0269dce422956cd9f08f85c655490d0fe845712291fb848f2b.lean/declarations/tofinset-append--1173e2455ddd852b1a71b545.md) | 177 | `result-track:1173e2455ddd852b1a71b54561620b47f3ba9c74f425e83fd28fab25063e05e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
