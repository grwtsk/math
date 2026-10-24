# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2856d3375b29633a78e0745b9910f627fe39555",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2856d3375b29633a78e0745b9910f627fe39555`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [PrimeSpectrum.rankAtStalk_pos_iff_mem_range_comap](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/primespectrum-rankatstalk-pos-iff-mem-range-comap--067ab7190ade3a37e9e0d0d4.md) | 52 | `result-track:067ab7190ade3a37e9e0d0d4daf8c204795b34a59c6e8cb50f1f1db2db738a1e` |
| 2 | `lemma` | [PrimeSpectrum.rankAtStalk_pos_iff_comap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/primespectrum-rankatstalk-pos-iff-comap-surjective--872b8f7d7829ee5025838085.md) | 58 | `result-track:872b8f7d7829ee50258380857620a04f952657b30049eb1bb0dd6cacd07bb060` |
| 3 | `lemma` | [PrimeSpectrum.comap_surjective_iff_injective_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/primespectrum-comap-surjective-iff-injective-of-finite--6d61c72027c07cacefcbe2d2.md) | 65 | `result-track:6d61c72027c07cacefcbe2d277addaf80a01ed318159ab1ad881fc11af1b29af` |
| 4 | `lemma` | [Module.rankAtStalk_pos_iff_algebraMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/module-rankatstalk-pos-iff-algebramap-injective--77b6d0fadac41c2345c6ba72.md) | 84 | `result-track:77b6d0fadac41c2345c6ba7202eb773817bc3adf141974367b7a8b732706514a` |
| 5 | `lemma` | [Module.algebraMap_surjective_of_rankAtStalk_le_one](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/module-algebramap-surjective-of-rankatstalk-le-one--c74bc13027b66a07e9dc6213.md) | 90 | `result-track:c74bc13027b66a07e9dc6213f3c406fb520cc087ad032d8b916ad6f0192e661e` |
| 6 | `lemma` | [Module.Flat.tfae_algebraMap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/module-flat-tfae-algebramap-surjective--b13da91902cd2a9c58088641.md) | 107 | `result-track:b13da91902cd2a9c58088641c7f964e3076619c821850b0e1a3111b78dfc1039` |
| 7 | `lemma` | [Module.rankAtStalk_le_one_iff_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/module-rankatstalk-le-one-iff-surjective--e567d7037cd3b632ca816e6a.md) | 122 | `result-track:e567d7037cd3b632ca816e6a53a1cdedddee4cf5a7bff28115a45c0b324b9a9d` |
| 8 | `lemma` | [Module.algebraMap_bijective_iff_rankAtStalk](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/module-algebramap-bijective-iff-rankatstalk--b0e0fe8b16dbd7f787cc3c35.md) | 128 | `result-track:b0e0fe8b16dbd7f787cc3c35e77593a192476c26799ac45a6b2b047c8d0a75bc` |
| 9 | `def` | [RingHom.finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/ringhom-finrank--0a267bc9fb43ba022d312982.md) | 146 | `declaration-track:0a267bc9fb43ba022d31298293286cdc4dba1b41d489edb469601ffdd1dbb8f6` |
| 10 | `lemma` | [RingHom.finrank_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/ringhom-finrank-algebramap--b94e82562cf4f0642d77c6f2.md) | 152 | `result-track:b94e82562cf4f0642d77c6f2fbcc337f53eed445533210f07d247ff0c7d3ff9e` |
| 11 | `lemma` | [Algebra.rankAtStalk_eq_of_isPushout](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/algebra-rankatstalk-eq-of-ispushout--a137c5f7e12c30f97fa03a4c.md) | 157 | `result-track:a137c5f7e12c30f97fa03a4c43ea7c5982031f6e59298985c8c690c15a2be926` |
| 12 | `lemma` | [RingHom.finrank_comp_left_of_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/ringhom-finrank-comp-left-of-bijective--84bd8c578a25864744615334.md) | 167 | `result-track:84bd8c578a258647446153346b9f0136f80f59ca352bf09fd89e78e6a6aaf60c` |
| 13 | `lemma` | [RingHom.finrank_comp_right_of_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/ringhom-finrank-comp-right-of-bijective--89a567e2ef9581fbffeb5766.md) | 175 | `result-track:89a567e2ef9581fbffeb5766b269d157f727e52de0217110154712456e3a2002` |
| 14 | `lemma` | [CommRingCat.finrank_eq_of_isPushout](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/declarations/commringcat-finrank-eq-of-ispushout--dec3d9d7996861fabb75f082.md) | 187 | `result-track:dec3d9d7996861fabb75f082044aaaa8c071e795b5f7d068b77203afc3faa254` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
