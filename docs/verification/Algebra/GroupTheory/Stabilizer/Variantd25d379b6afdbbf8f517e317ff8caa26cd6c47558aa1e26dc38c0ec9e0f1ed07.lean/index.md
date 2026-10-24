# Verification target: GRWTSK.Algebra.GroupTheory.Stabilizer.Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9478c7cfd3cba6a09dfbc13a05e1d8bbc0773cb0",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9478c7cfd3cba6a09dfbc13a05e1d8bbc0773cb0`.

Source path: `GRWTSK/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [stabilizer_empty](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-empty--28d018a715179a99f26681ea.md) | 37 | `result-track:28d018a715179a99f26681eab54b89297977efae79c8b993b6e437994e221f44` |
| 2 | `lemma` | [stabilizer_univ](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-univ--f5fa3644b288c054ae829a2d.md) | 41 | `result-track:f5fa3644b288c054ae829a2d9bce4ce0f7f8979c44fa76cbcd8903e0048b520e` |
| 3 | `lemma` | [stabilizer_singleton](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-singleton--72eda8106ee5bbf8d843ed7d.md) | 46 | `result-track:72eda8106ee5bbf8d843ed7d5b089769f67a6113a9df4ddf84ea49c88f726e8d` |
| 4 | `lemma` | [mem_stabilizer_set](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/mem-stabilizer-set--42259c93748c94883de0f53e.md) | 49 | `result-track:42259c93748c94883de0f53e3ec800fd2ea8321dbc73c3779955d20aff800743` |
| 5 | `lemma` | [map_stabilizer_le](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/map-stabilizer-le--e0c7e736280aa43643353345.md) | 56 | `result-track:e0c7e736280aa43643353345285791ea33962cb0ad5db66db71d5741a05243c9` |
| 6 | `lemma` | [stabilizer_mul_self](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-mul-self--dff9d7bb4c4f540c8d897a2f.md) | 64 | `result-track:dff9d7bb4c4f540c8d897a2fdbde29c0cfa64b1798ad413a8ef8275c936ecabf` |
| 7 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_apply₂](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-apply--91744ec0a0d01692c8f8ec40.md) | 72 | `result-track:91744ec0a0d01692c8f8ec402f7cb1487f0d9f521046f6f303813eebef415474` |
| 8 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_union](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-union--7896885742440d240a8e42db.md) | 77 | `result-track:7896885742440d240a8e42db21c166ba5c5baad120ace0c8bbd515792f7506d2` |
| 9 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_inter](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-inter--1855b2fc5723354ab308b5f2.md) | 82 | `result-track:1855b2fc5723354ab308b5f2dc06bd13b32a8b0de97c24eadaaac302da0d53ce` |
| 10 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_sdiff](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-sdiff--7f74eb1ff6e8353b19718500.md) | 87 | `result-track:7f74eb1ff6e8353b197185008255f448e3c63a3b7b2f878eecc41ef49e235041` |
| 11 | `lemma` | [stabilizer_union_eq_left](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-union-eq-left--d2ae5abe97d46157ec46c2de.md) | 92 | `result-track:d2ae5abe97d46157ec46c2deb99d4ed31e4a3bb40d4823e832e64900304a7161` |
| 12 | `lemma` | [stabilizer_union_eq_right](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-union-eq-right--3a4424c8164158f7503f1efd.md) | 107 | `result-track:3a4424c8164158f7503f1efd40b23f2a4d8161cac0ba8f4ce74917cfbadfac15` |
| 13 | `lemma` | [op_smul_set_stabilizer_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/op-smul-set-stabilizer-subset--b85f4c2dda218ee53c85374e.md) | 116 | `result-track:b85f4c2dda218ee53c85374eb9c83a2230893aa4456b9dd3c1fcaeeca4453df1` |
| 14 | `lemma` | [stabilizer_subset_div_right](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-subset-div-right--5bf6403d52cc115143677993.md) | 120 | `result-track:5bf6403d52cc11514367799303416bb0d8ad259522e798c7e4178c8caad41204` |
| 15 | `lemma` | [stabilizer_finite](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-finite--231c7ddfb4d4d0265835307a.md) | 124 | `result-track:231c7ddfb4d4d0265835307a57dba19a15ebd173b806346e8421a881b5f03fc8` |
| 16 | `lemma` | [smul_set_stabilizer_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/smul-set-stabilizer-subset--97ec0642ea457027ca3462f0.md) | 134 | `result-track:97ec0642ea457027ca3462f086bf3b021ec634c46af25c2e5e93a01e7eee10ba` |
| 17 | `lemma` | [stabilizer_subgroup](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-subgroup--df1f7ee88787737dca577bac.md) | 149 | `result-track:df1f7ee88787737dca577bacf54615b63e9aa80044d087b6174abf44f46fc04b` |
| 18 | `lemma` | [stabilizer_op_subgroup](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-op-subgroup--0fdd6f911e598a6aee85f913.md) | 155 | `result-track:0fdd6f911e598a6aee85f913ddf50e1680adb4bf0e588cab43176b0d1bcd7ede` |
| 19 | `lemma` | [stabilizer_subgroup_op](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-subgroup-op--4f4e9b8149a579d654179440.md) | 162 | `result-track:4f4e9b8149a579d65417944072e43f1116e06ed6f5d5ff43f35acdd46178a434` |
| 20 | `lemma` | [stabilizer_coe_finset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-coe-finset--2893396189734660cd86a5f1.md) | 176 | `result-track:2893396189734660cd86a5f1464496f4aeddf273cd7fc33448edd96dfbf6d5ae` |
| 21 | `lemma` | [stabilizer_finset_empty](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-finset-empty--a8509b1b5e4ab0c3c31380f1.md) | 180 | `result-track:a8509b1b5e4ab0c3c31380f1ccf9e25ab8e3081e3891f3a31fdcaf67598ded34` |
| 22 | `lemma` | [stabilizer_finset_univ](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-finset-univ--09743784e50d15f8bdb1ceed.md) | 184 | `result-track:09743784e50d15f8bdb1ceed97bb9d5ba92f1bd05bcc1900693c1bdf20c6b010` |
| 23 | `lemma` | [stabilizer_finset_singleton](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-finset-singleton--c8de15ef800194a2469e5a52.md) | 189 | `result-track:c8de15ef800194a2469e5a52275ae43a601c2db7ecd1e9675459b034ee9a66ea` |
| 24 | `lemma` | [mem_stabilizer_finset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/mem-stabilizer-finset--63ec309c351bb37cf51488b4.md) | 193 | `result-track:63ec309c351bb37cf51488b4414663e6af5206a513b58671e1c927e2485ba76b` |
| 25 | `lemma` | [mem_stabilizer_finset_iff_subset_smul_finset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/mem-stabilizer-finset-iff-subset-smul-finset--93f24fb9172ba1a46209c656.md) | 197 | `result-track:93f24fb9172ba1a46209c656963e3f5ce36fb01ec39998f414a6cd4468c51fbe` |
| 26 | `lemma` | [mem_stabilizer_finset_iff_smul_finset_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/mem-stabilizer-finset-iff-smul-finset-subset--96d5364c6d8ce6f1a8e8f296.md) | 202 | `result-track:96d5364c6d8ce6f1a8e8f296959be5cf74e894a887e063c038ea4c20d5a30421` |
| 27 | `lemma` | [mem_stabilizer_finset'](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/mem-stabilizer-finset--cb780c7819aaa886d66c0a2d.md) | 207 | `result-track:cb780c7819aaa886d66c0a2d8aa2e6b750c6b1f7e452352e0d7f2e77abead424` |
| 28 | `lemma` | [mem_stabilizer_set_iff_subset_smul_set](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/mem-stabilizer-set-iff-subset-smul-set--c1ac14878bcad2c7decf8a97.md) | 218 | `result-track:c1ac14878bcad2c7decf8a97f673adcdf21cc2f5bbe7724bdfb7df22e8731259` |
| 29 | `lemma` | [mem_stabilizer_set_iff_smul_set_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/mem-stabilizer-set-iff-smul-set-subset--fa43ce57a92ae7c867703b9a.md) | 226 | `result-track:fa43ce57a92ae7c867703b9af924c5e437e7416f70a32c419c9f885859999cd6` |
| 30 | `lemma` | [mem_stabilizer_set'](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/mem-stabilizer-set--e29630803232a0cc2895300e.md) | 240 | `result-track:e29630803232a0cc2895300e0602106d2143f35b2d6d03fc7f0c8b5fb38c5ef5` |
| 31 | `lemma` | [mul_stabilizer_self](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/mul-stabilizer-self--f4fa37754ee4b1abb2729e54.md) | 253 | `result-track:f4fa37754ee4b1abb2729e5492c5f18ee10e1df74194920d524dce0da4b22e46` |
| 32 | `lemma` | [stabilizer_image_coe_quotient](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantd25d379b6afdbbf8f517e317ff8caa26cd6c47558aa1e26dc38c0ec9e0f1ed07.lean/declarations/stabilizer-image-coe-quotient--0ffe5fb8580d8c17da515d3a.md) | 259 | `result-track:0ffe5fb8580d8c17da515d3a37838ae6b05e2b3c39f484c2d6f28712e74f2af2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
