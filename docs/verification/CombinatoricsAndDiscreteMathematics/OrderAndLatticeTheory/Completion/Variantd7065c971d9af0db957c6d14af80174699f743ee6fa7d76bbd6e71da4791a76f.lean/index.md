# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Completion.Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "000cbffa67190499cd61c09afb49738cb2807895",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `000cbffa67190499cd61c09afb49738cb2807895`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.CompleteLattice` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DedekindCut](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/dedekindcut--6a4244b558251229b53a9129.md) | 60 | `declaration-track:6a4244b558251229b53a91292431f74b3319baf0dd10c18835e863cec3077c1a` |
| 2 | `abbrev` | [left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/left--63bd2d75c3c368d2d30c944e.md) | 68 | `declaration-track:63bd2d75c3c368d2d30c944e4ff8bcbfc3aaa04626db1306df336404cd7105d7` |
| 3 | `abbrev` | [right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/right--82b230588efb68ddcc72f3e3.md) | 71 | `declaration-track:82b230588efb68ddcc72f3e3d96ebe9f22f32513964865f25691a6c9faac1790` |
| 4 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/ext--b5dbe4e5137b6a782f773148.md) | 74 | `result-track:b5dbe4e5137b6a782f773148d9a254fcfd4331f12889aa9999022173ed7c0763` |
| 5 | `theorem` | [ext'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/ext--b2c15859aa9264bd33181770.md) | 77 | `result-track:b2c15859aa9264bd33181770365bfc3b37d16211bc17ce7c7222b7cdfcb9ee48` |
| 6 | `theorem` | [upperBounds_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/upperbounds-left--6935def2d4ab1198be105bd5.md) | 80 | `result-track:6935def2d4ab1198be105bd5d32c8c06720f086a69eec14e97dc69a04b8c872c` |
| 7 | `theorem` | [lowerBounds_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/lowerbounds-right--b7f2208d2df4130916ad7998.md) | 84 | `result-track:b7f2208d2df4130916ad79981e8a440272e5ad98eb76540b4b800a99026dccdf` |
| 8 | `theorem` | [image_left_subset_lowerBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/image-left-subset-lowerbounds--28dbe30cbee827251671cf2f.md) | 87 | `result-track:28dbe30cbee827251671cf2f10edaef1fd9baa0cde29cc76aceee784f80f7350` |
| 9 | `theorem` | [image_right_subset_upperBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/image-right-subset-upperbounds--33dab1768e93d65725c21260.md) | 92 | `result-track:33dab1768e93d65725c2126002d44d4de9236485c29952460240b180e3a38cdf` |
| 10 | `def` | [principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principal--586e45e0a449074f57e0b441.md) | 99 | `declaration-track:586e45e0a449074f57e0b44176d9fc841ec35a5622127824c62ad0e63873a7a3` |
| 11 | `theorem` | [left_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/left-principal--d96e6b052bc07db5136b408c.md) | 104 | `result-track:d96e6b052bc07db5136b408c46313d194443f6158fe14f1fbf14560c81139568` |
| 12 | `theorem` | [right_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/right-principal--5840a444bfe03a6179993470.md) | 105 | `result-track:5840a444bfe03a617999347083306519e6b908200eafc5cf525370916f4984d0` |
| 13 | `theorem` | [ofObject_eq_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/ofobject-eq-principal--f0a62b4d6f6e67a11b5c73dc.md) | 107 | `result-track:f0a62b4d6f6e67a11b5c73dc97d2285f3fc632f9dff31e564d183d97a7cccba9` |
| 14 | `theorem` | [ofAttribute_eq_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/ofattribute-eq-principal--8a63a8138829135fb6a48e9c.md) | 109 | `result-track:8a63a8138829135fb6a48e9c8866b3e2410a7225252d7fe214be4f95e39254a1` |
| 15 | `theorem` | [principal_le_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principal-le-principal--ea7cb36e4667599e4e186db5.md) | 113 | `result-track:ea7cb36e4667599e4e186db58a1e70059eca391386aabb69e20ff3ee40866d87` |
| 16 | `theorem` | [principal_lt_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principal-lt-principal--b740e61f68bd0af2a65376e6.md) | 117 | `result-track:b740e61f68bd0af2a65376e620f7711eb2793dceb6a586bbb1cc8cf46c53843e` |
| 17 | `lemma` | [principal_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principal-le-iff--9e8b13f163e5c5489cb6464f.md) | 120 | `result-track:9e8b13f163e5c5489cb6464feec7f0ad253b7ad38f6a1220f780de8b8c703017` |
| 18 | `lemma` | [le_principal_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/le-principal-iff--ed99d3e5a4378a5eac885cb9.md) | 125 | `result-track:ed99d3e5a4378a5eac885cb9583dc61bbf89028858969db827651adb5f2477fe` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/instance--965061f48d29a490c1744a41.md) | 131 | `declaration-track:965061f48d29a490c1744a4125c6f7c67f1703c2ed5a06721557cd8827c868cf` |
| 20 | `theorem` | [principal_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principal-inj--0e8603ad7fd28faaf16b0ab2.md) | 140 | `result-track:0e8603ad7fd28faaf16b0ab223f67019ce6831b1c7dc60abfa26542037399a11` |
| 21 | `def` | [principalEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principalembedding--54e4daf845ce51b8f83da8a6.md) | 145 | `declaration-track:54e4daf845ce51b8f83da8a63762c6adb52e25929740ae46893bbaa0ea289d82` |
| 22 | `theorem` | [coe_principalEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/coe-principalembedding--a52dad950e5792dbdf694ae5.md) | 150 | `result-track:a52dad950e5792dbdf694ae52fd814d08199e0d0c56830fe9edb6f57a56923aa` |
| 23 | `theorem` | [principal_sSup_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principal-ssup-left--1836b1b6e4f47a970470e9f5.md) | 158 | `result-track:1836b1b6e4f47a970470e9f5abdfc92f7d36a992fe06677dfee1b08ac03fdbc3` |
| 24 | `theorem` | [principal_sInf_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principal-sinf-right--5c11c40cbad6db86e6bddbca.md) | 164 | `result-track:5c11c40cbad6db86e6bddbca8bbe0ee724d21aaa9e9fe34b15a73b58ec9c1d53` |
| 25 | `def` | [factorEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/factorembedding--b736afbb544fc588d8bdf421.md) | 173 | `declaration-track:b736afbb544fc588d8bdf421d870ef305a347af0f641c781ffb0f5cde84f8830` |
| 26 | `theorem` | [factorEmbedding_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/factorembedding-apply--d40c2606c7f9c99d0ebc8a07.md) | 182 | `result-track:d40c2606c7f9c99d0ebc8a0732833ef1dff2e65cc67e5800c1d0c41e5f60b0b2` |
| 27 | `theorem` | [factorEmbedding_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/factorembedding-principal--326e3af29f630c9e5b77d71a.md) | 187 | `result-track:326e3af29f630c9e5b77d71a3f5a8e15c3c43649a33b66c0bdc08f899a9441f2` |
| 28 | `theorem` | [principalEmbedding_trans_factorEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principalembedding-trans-factorembedding--2c3620706719e43ad6f60395.md) | 196 | `result-track:2c3620706719e43ad6f60395f56f77f54a57c34a6f10444065265cd0b7911699` |
| 29 | `def` | [principalIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principaliso--003a70dbee6d9e70adf4ffc9.md) | 207 | `declaration-track:003a70dbee6d9e70adf4ffc96a75da71f05c40a840300a71a425ad88c32083fe` |
| 30 | `theorem` | [principalIso_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principaliso-symm-apply--6c6ffc97c79cd88d6416f402.md) | 213 | `result-track:6c6ffc97c79cd88d6416f40208e20228d75eace994dfc43da5f8433b7be26068` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/instance--3129aa3eab76a7ab0b015417.md) | 221 | `declaration-track:3129aa3eab76a7ab0b015417b15f62a3d73edb7ba6a15cece1c2a83296dec39c` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/instance--37103884358c32ef1b567644.md) | 224 | `declaration-track:37103884358c32ef1b567644b17769f8af7da497b9e6d952090012af14d11783` |
| 33 | `theorem` | [lt_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/lt-iff-exists--d306b7f076db73fac87a54ac.md) | 231 | `result-track:d306b7f076db73fac87a54ac1c7ccc0fe8507e4fe595212d94299affe409e3c3` |
| 34 | `theorem` | [lt_iff_exists'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/lt-iff-exists--a9866c35e1f96f2d36128b31.md) | 238 | `result-track:a9866c35e1f96f2d36128b31d4a2bdc341da39bfacd8b6679bb333e579a10ae4` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/instance--d0b4260e208f963867049278.md) | 244 | `declaration-track:d0b4260e208f963867049278725ecffb59bdc6c9572676dc41f41c3b4b1b124e` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/instance--13cf1382c8b21eb851766d05.md) | 249 | `declaration-track:13cf1382c8b21eb851766d055e8f46ab628a17ff8a2a95c4657476d3f9f86fc4` |
| 37 | `theorem` | [principal_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/principal-lt-iff--ada45c07fbc0c858c8c81421.md) | 257 | `result-track:ada45c07fbc0c858c8c81421c6478e38809751dbaf347a9d6adf3409529a24c6` |
| 38 | `theorem` | [lt_principal_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantd7065c971d9af0db957c6d14af80174699f743ee6fa7d76bbd6e71da4791a76f.lean/declarations/lt-principal-iff--3e86d2722eb3b64e319e742d.md) | 264 | `result-track:3e86d2722eb3b64e319e742d853867c1b03d548a3af7239b36b16aeaa9e2699e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
