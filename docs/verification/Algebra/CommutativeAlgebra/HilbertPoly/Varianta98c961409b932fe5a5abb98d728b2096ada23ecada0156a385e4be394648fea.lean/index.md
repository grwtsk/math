# Verification target: GRWTSK.Algebra.CommutativeAlgebra.HilbertPoly.Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7218ab8f1af2bdbd02cd77a6f6c0ae4b7b83f882",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7218ab8f1af2bdbd02cd77a6f6c0ae4b7b83f882`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean.json)

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
| 1 | `def` | [preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/prehilbertpoly--0ed93bef288a02e63dd77423.md) | 71 | `declaration-track:0ed93bef288a02e63dd774239b8d3aa13ffd2c3097d96f70adf79e092f7ec5ec` |
| 2 | `lemma` | [natDegree_preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/natdegree-prehilbertpoly--8de5eefd3d4123842c0304cf.md) | 74 | `result-track:8de5eefd3d4123842c0304cf81d0b5ef4bf5766e0b9578f9648231ef93631bd9` |
| 3 | `lemma` | [coeff_preHilbertPoly_self](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/coeff-prehilbertpoly-self--085535212bc8220485caee57.md) | 80 | `result-track:085535212bc8220485caee570248772cb631e98313d72f5c5d115eb89fb1af2f` |
| 4 | `lemma` | [leadingCoeff_preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/leadingcoeff-prehilbertpoly--8d934874108051a779e5da0a.md) | 94 | `result-track:8d934874108051a779e5da0a1af5c69c5030a256b82ee48956d2857cb575f765` |
| 5 | `lemma` | [preHilbertPoly_eq_choose_add_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/prehilbertpoly-eq-choose-add-sub--0e8e6a692df186a1114ff7b0.md) | 98 | `result-track:0e8e6a692df186a1114ff7b0c6570475b38792125fba0ade7bc6d7c9335e549c` |
| 6 | `def` | [hilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly--ee1f4230c2fd72c492494054.md) | 125 | `declaration-track:ee1f4230c2fd72c492494054079cb728eb0186af3678f0b5bcc19214741dadd6` |
| 7 | `lemma` | [hilbertPoly_zero_left](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly-zero-left--e0070b785604512ce5ed3101.md) | 129 | `result-track:e0070b785604512ce5ed31014eb6b37ba1b6cab99f8e1cadf163800d67bb8372` |
| 8 | `lemma` | [hilbertPoly_zero_right](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly-zero-right--21f5834796047421164676e5.md) | 134 | `result-track:21f5834796047421164676e53b4bb1a7e98778077b554ef7d0a86d0142612b8b` |
| 9 | `lemma` | [hilbertPoly_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly-succ--02ab283ef19c1ac8d6977fce.md) | 136 | `result-track:02ab283ef19c1ac8d6977fce3daf5dee5df10a5ccbe314401c937dc2f663f3ef` |
| 10 | `lemma` | [hilbertPoly_X_pow_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly-x-pow-succ--07752215b9239564b038d185.md) | 139 | `result-track:07752215b9239564b038d185e88d42de3d7c88067bc65dbae49b40211f1aa771` |
| 11 | `lemma` | [hilbertPoly_add_left](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly-add-left--ac0d0a81d66c68b883cf2895.md) | 143 | `result-track:ac0d0a81d66c68b883cf2895c865e7568e9321e06abbae7f051dd998dcbc337d` |
| 12 | `lemma` | [hilbertPoly_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly-smul--e0bdf68c7733ffa19ea35caf.md) | 153 | `result-track:e0bdf68c7733ffa19ea35cafcbed3a4d73d5057fafc414cbefbb28bc3b04dd46` |
| 13 | `def` | [hilbertPoly_linearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly-linearmap--390fb3dc3c15f8ce26ad036f.md) | 169 | `declaration-track:390fb3dc3c15f8ce26ad036f11a84dad626dfbe59e586a270e45d0ec8a4e89a8` |
| 14 | `theorem` | [coeff_mul_invOneSubPow_eq_hilbertPoly_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/coeff-mul-invonesubpow-eq-hilbertpoly-eval--62bb0a5b11a90567e990fac2.md) | 181 | `result-track:62bb0a5b11a90567e990fac291c08fae25b7478c9669dcc9730906103774cb77` |
| 15 | `theorem` | [existsUnique_hilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/existsunique-hilbertpoly--9bc437593d3894f246d0313d.md) | 211 | `result-track:9bc437593d3894f246d0313d49a534f98bf9b7f86d4b70c57f692cb6ed7b6dca` |
| 16 | `theorem` | [eq_hilbertPoly_of_forall_coeff_eq_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/eq-hilbertpoly-of-forall-coeff-eq-eval--9b6577c9f054fd0784c77526.md) | 229 | `result-track:9b6577c9f054fd0784c7752637e5aa231e6dcf7fae8b842ec1b5bb786f2d7b3b` |
| 17 | `lemma` | [hilbertPoly_mul_one_sub_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly-mul-one-sub-succ--f850d945b4d59c711c9ff9a1.md) | 236 | `result-track:f850d945b4d59c711c9ff9a1d9fc9a5aced73cf4c12caba10e8e3ec63fc5b65a` |
| 18 | `lemma` | [hilbertPoly_mul_one_sub_pow_add](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly-mul-one-sub-pow-add--f8b1d270959263349b18c27c.md) | 244 | `result-track:f8b1d270959263349b18c27cfec7724a05a3ecbd4c0e0969a52ff587f2fa243a` |
| 19 | `lemma` | [hilbertPoly_eq_zero_of_le_rootMultiplicity_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/hilbertpoly-eq-zero-of-le-rootmultiplicity-one--012b570ed45e657f1e90b7a3.md) | 250 | `result-track:012b570ed45e657f1e90b7a31715ecfe1aa7111f8e1303c124ad4323e4bbcd06` |
| 20 | `theorem` | [natDegree_hilbertPoly_of_ne_zero_of_rootMultiplicity_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/natdegree-hilbertpoly-of-ne-zero-of-rootmultiplicity-lt--70111548a09b4adc40c6dae1.md) | 262 | `result-track:70111548a09b4adc40c6dae115cd4b89dfb8cac33720fb47c886299c8c4738aa` |
| 21 | `theorem` | [natDegree_hilbertPoly_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/declarations/natdegree-hilbertpoly-of-ne-zero--c4b32335244840fcb24993f9.md) | 283 | `result-track:c4b32335244840fcb24993f9c744ad5674d60694b6234eaa488438bcf90b38df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
