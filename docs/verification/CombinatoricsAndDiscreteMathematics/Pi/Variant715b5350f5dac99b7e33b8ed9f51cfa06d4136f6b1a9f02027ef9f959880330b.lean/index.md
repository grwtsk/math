# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "deb31b47a01b7883b0b9e3275487615e45b5c334",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `deb31b47a01b7883b0b9e3275487615e45b5c334`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finAntidiagonal.aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/finantidiagonal-aux--1774a1a939f1ed4f5476663c.md) | 65 | `declaration-track:1774a1a939f1ed4f5476663c4d24b7b00037432e4b6f825c985626a3cdd9ac85` |
| 2 | `def` | [finAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/finantidiagonal--e485a18c830f44c13fc534b6.md) | 92 | `declaration-track:e485a18c830f44c13fc534b6065f4a911cdd66be0927575d2dcfc19db8523c02` |
| 3 | `lemma` | [mem_finAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/mem-finantidiagonal--fe72d1e71a634d127e3770ad.md) | 94 | `result-track:fe72d1e71a634d127e3770adbcebf8e61208c3bd82b734a65c0d8f60b482dd35` |
| 4 | `def` | [piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/piantidiag--4bc890fca7bb3e2d797ab96d.md) | 106 | `declaration-track:4bc890fca7bb3e2d797ab96d2005ee85b18cd9f4fbf122de231de0ec3d7a94a3` |
| 5 | `lemma` | [mem_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/mem-piantidiag--3e02fe28474f5d3051e4c1fc.md) | 122 | `result-track:3e02fe28474f5d3051e4c1fcf4b63965927013d83f948adc9157c3736a50e30d` |
| 6 | `lemma` | [piAntidiag_empty_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/piantidiag-empty-zero--598f69afe37438ab8050020d.md) | 135 | `result-track:598f69afe37438ab8050020d24056475a62d9a5083f82d8730f138296b20b9cf` |
| 7 | `lemma` | [piAntidiag_empty_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/piantidiag-empty-of-ne-zero--ffdf7c2bb21b95e85ca0d54b.md) | 138 | `result-track:ffdf7c2bb21b95e85ca0d54b8df6acd3bd4230187314fc22448c7174c1f9e3dc` |
| 8 | `lemma` | [piAntidiag_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/piantidiag-empty--a75457414eb26f737d6f6729.md) | 141 | `result-track:a75457414eb26f737d6f6729649bedcff9a24e2a2eeeee35eca61127555af60c` |
| 9 | `lemma` | [finset_congr_piAntidiag_eq_antidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/finset-congr-piantidiag-eq-antidiag--ed65965266c0f5a48dca1844.md) | 144 | `result-track:ed65965266c0f5a48dca1844834a8b6e6f867fb5c5d242171303455ad5832794` |
| 10 | `lemma` | [pairwiseDisjoint_piAntidiag_map_addRightEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/pairwisedisjoint-piantidiag-map-addrightembedding--73d430a5db127b931211302f.md) | 160 | `result-track:73d430a5db127b931211302fc5b64cb953d8609e34706be1ae3c505961782f90` |
| 11 | `lemma` | [piAntidiag_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/piantidiag-cons--9e381012fe5313d1143378d8.md) | 169 | `result-track:9e381012fe5313d1143378d8b8d94a0eacbcc96a45426adb2292c10ae5b543de` |
| 12 | `lemma` | [piAntidiag_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/piantidiag-insert--e8e3fef8cc4ed3e224bf3431.md) | 184 | `result-track:e8e3fef8cc4ed3e224bf343106dcd46649e7034dc496e7f8beb8e1578fffea19` |
| 13 | `lemma` | [piAntidiag_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/piantidiag-zero--70f48f5798f7101c2d80d562.md) | 195 | `result-track:70f48f5798f7101c2d80d5620baeb713af348bc59b4e09bab10e908763e93ef7` |
| 14 | `lemma` | [piAntidiag_univ_fin_eq_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/piantidiag-univ-fin-eq-antidiagonaltuple--590473a3ae683a0d12675292.md) | 205 | `result-track:590473a3ae683a0d12675292178102d813c0f0f869e59880eb9d8b64b723892c` |
| 15 | `lemma` | [nsmul_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/nsmul-piantidiag--9f7751dd46e4dd0a7c234640.md) | 209 | `result-track:9f7751dd46e4dd0a7c2346402d045f5431c143b5b276dcdfa49db13ded0b37c5` |
| 16 | `lemma` | [map_nsmul_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/map-nsmul-piantidiag--596dd28e2e153c0c383a09cc.md) | 227 | `result-track:596dd28e2e153c0c383a09cceaa17b708f471935ec174ec1314e7ab457a9a8e3` |
| 17 | `lemma` | [nsmul_piAntidiag_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/nsmul-piantidiag-univ--0ebdd18a78be73318160e95c.md) | 232 | `result-track:0ebdd18a78be73318160e95c76584c31f41350ab52cb7bf737958047e7bc2a29` |
| 18 | `lemma` | [map_nsmul_piAntidiag_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/map-nsmul-piantidiag-univ--a16981c8e0a079afcb0a8a8d.md) | 236 | `result-track:a16981c8e0a079afcb0a8a8d43e0a3749c743401d69c7590ad574fd4960ce1ae` |
| 19 | `lemma` | [map_sym_eq_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant715b5350f5dac99b7e33b8ed9f51cfa06d4136f6b1a9f02027ef9f959880330b.lean/declarations/map-sym-eq-piantidiag--2f22278fb658e443acb308d9.md) | 243 | `result-track:2f22278fb658e443acb308d99aeb484d7e57fe535c473ddd4393469db68b75f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
