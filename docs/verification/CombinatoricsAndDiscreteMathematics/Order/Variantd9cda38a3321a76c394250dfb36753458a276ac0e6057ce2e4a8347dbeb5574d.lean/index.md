# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81eb5a1c7eecc9337021cdbad7cd96d297c90035",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81eb5a1c7eecc9337021cdbad7cd96d297c90035`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean.json)

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
| 1 | `def` | [IsMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isminor--49c80a9b721cf2456ef70299.md) | 56 | `declaration-track:49c80a9b721cf2456ef70299e8a3389fe86aba7aaff416955f1d86c7527e10e2` |
| 2 | `lemma` | [contract_delete_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/contract-delete-isminor--f8cc2a415799ecba1af8937a.md) | 62 | `result-track:f8cc2a415799ecba1af8937acd47bbb2a463c78277eda0ad9d1d7aa2ef161574` |
| 3 | `lemma` | [IsMinor.exists_eq_contract_delete_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isminor-exists-eq-contract-delete-disjoint--b379713c87bb37924e2df527.md) | 65 | `result-track:b379713c87bb37924e2df527b9aaa514410830b0e2659be1f6fe2ad72077b795` |
| 4 | `def` | [IsStrictMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor--ba2d359554bceeaea84e6837.md) | 75 | `declaration-track:ba2d359554bceeaea84e6837afaab37e5f7395e8f46aeb50ddde5a1dfd16a8f9` |
| 5 | `lemma` | [IsMinor.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isminor-subset--b008388750e40c2d416c351c.md) | 80 | `result-track:b008388750e40c2d416c351c9b1a6e6d71de6fe659702bfd6081082e69caa24c` |
| 6 | `lemma` | [IsMinor.refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isminor-refl--eabb5ff6511344014203a1ed.md) | 84 | `result-track:eabb5ff6511344014203a1ed7d770a9b10ecc583c006e5309c9c6e9cf69136a8` |
| 7 | `lemma` | [IsMinor.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isminor-trans--eddbd88e18b457b0d541f261.md) | 86 | `result-track:eddbd88e18b457b0d541f261a3f0728f7663bc1591c56b45a49604f9877929c9` |
| 8 | `lemma` | [IsMinor.eq_of_ground_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isminor-eq-of-ground-subset--d77a57b7a8e8bec845a4ae9e.md) | 91 | `result-track:d77a57b7a8e8bec845a4ae9efe1b283311f4b9c41a8568b0c1a377ff285cde7c` |
| 9 | `lemma` | [IsMinor.antisymm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isminor-antisymm--74a38e4c6d2115b77f7f3590.md) | 97 | `result-track:74a38e4c6d2115b77f7f3590217af118f65cba825098f49e9e41d351b3b01b5d` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/instance--f8b1d4459eb79196a4d9bb5b.md) | 102 | `declaration-track:f8b1d4459eb79196a4d9bb5b4857afe3057c13d970843df5f8d646b058e483e0` |
| 11 | `lemma` | [IsMinor.le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isminor-le--87ce087d2e4915d7f19d1dfe.md) | 109 | `result-track:87ce087d2e4915d7f19d1dfea39b917d0d15ae3dae5dd5402ac2a5c07fbe0d3f` |
| 12 | `lemma` | [IsStrictMinor.lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor-lt--945208ebfe558268902b36b9.md) | 111 | `result-track:945208ebfe558268902b36b9b87781b652c7d37885cd1fc15e279b5c6ace9cf9` |
| 13 | `lemma` | [le_eq_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/le-eq-isminor--a998543cec4c761adfdbac3a.md) | 114 | `result-track:a998543cec4c761adfdbac3a0edce8a43f3f7d2763dca21efece394c6c34edbc` |
| 14 | `lemma` | [lt_eq_isStrictMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/lt-eq-isstrictminor--a38c1529b4dc5b9f63c12808.md) | 117 | `result-track:a38c1529b4dc5b9f63c128085d6543a14ad8693cb4f177fee7ffcff39afb871c` |
| 15 | `lemma` | [isStrictMinor_iff_isMinor_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor-iff-isminor-ne--0456bdd62d9c54db7489ba9e.md) | 119 | `result-track:0456bdd62d9c54db7489ba9e3260eb0ecbc9768e7b81f66996c5401ed85590e8` |
| 16 | `lemma` | [IsStrictMinor.ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor-ne--4b7f090570405c85d3a35115.md) | 122 | `result-track:4b7f090570405c85d3a351157963a991c91da0543573797a56334987ad2dae67` |
| 17 | `lemma` | [isStrictMinor_irrefl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor-irrefl--89f41e8a15385733dfc779c5.md) | 125 | `result-track:89f41e8a15385733dfc779c5a42216b7b9d764888eca572c271d4d4333bd1740` |
| 18 | `lemma` | [IsStrictMinor.isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor-isminor--94dcfbd0da87180b0aa95bf1.md) | 128 | `result-track:94dcfbd0da87180b0aa95bf1e59f7a9187b7c2ed44b48ad468e01571d481f6f1` |
| 19 | `lemma` | [IsStrictMinor.not_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor-not-isminor--345f8381051642669e8e17c5.md) | 131 | `result-track:345f8381051642669e8e17c579a559fd732fcfec70e3dbe7a3827bf585ad1c1e` |
| 20 | `lemma` | [IsStrictMinor.ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor-ssubset--c539f3bdf49fda61b7e05a27.md) | 134 | `result-track:c539f3bdf49fda61b7e05a27afbd294c3eff35047eb295a5862cca6389a9232d` |
| 21 | `lemma` | [isStrictMinor_iff_isMinor_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor-iff-isminor-ssubset--5aa21186ac0fda1af8000096.md) | 137 | `result-track:5aa21186ac0fda1af8000096dd39459a1e44b01cd8c44dc77f7e8763b6ce5a67` |
| 22 | `lemma` | [IsStrictMinor.trans_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor-trans-isminor--87340a7ae31e603637bc67fd.md) | 140 | `result-track:87340a7ae31e603637bc67fd05405b09335916d18b25e7932f02d607cd37df55` |
| 23 | `lemma` | [IsMinor.trans_isStrictMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isminor-trans-isstrictminor--91c6840489fbdb69e2752785.md) | 143 | `result-track:91c6840489fbdb69e27527850e3beb3d95ffb3c68bc3b2da8d4c95cc77626efb` |
| 24 | `lemma` | [IsStrictMinor.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isstrictminor-trans--9a0a8d9b10940272be6dc971.md) | 146 | `result-track:9a0a8d9b10940272be6dc971382dec2d9697719992e1851163e67c09cb28576c` |
| 25 | `lemma` | [Indep.of_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/indep-of-isminor--a96b29f29fb162f34df7d1e5.md) | 149 | `result-track:a96b29f29fb162f34df7d1e56a6b74416aa94c33186490919f0eaf4bc1382884` |
| 26 | `lemma` | [IsNonloop.of_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isnonloop-of-isminor--a4a66f377e07ed0c474874fa.md) | 153 | `result-track:a4a66f377e07ed0c474874fa7694fe421c66294dd368688b2acf8a204cf3f50f` |
| 27 | `lemma` | [Dep.of_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/dep-of-isminor--00c3700c1bb4ac60996ca806.md) | 157 | `result-track:00c3700c1bb4ac60996ca806b78bd1564c3252627d68ea85cbf5da1f0d48627b` |
| 28 | `lemma` | [IsLoop.of_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/declarations/isloop-of-isminor--027db51f967a4288e4174999.md) | 160 | `result-track:027db51f967a4288e4174999fd7d6559a30ccb450c269e6ae067a705e4322305` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
