# Verification target: GRWTSK.Algebra.LinearAlgebra.Length.Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f205bbb307f205d0c688071d46cb98b311d999a9",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f205bbb307f205d0c688071d46cb98b311d999a9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean.json)

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
| 1 | `def` | [Module.length](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length--bfa928310a6ff981b226cfcc.md) | 40 | `declaration-track:bfa928310a6ff981b226cfcc32c7bdd24e3565db0b73badaf052d2dd811f5515` |
| 2 | `lemma` | [Module.coe_length](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-coe-length--60ce68588de7666de1386a0b.md) | 43 | `result-track:60ce68588de7666de1386a0b57fd029aadfe91f8573ef700baea39c22d34b8c0` |
| 3 | `lemma` | [Module.length_eq_height](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-height--e0fb69883b6dcdd4803b6c23.md) | 47 | `result-track:e0fb69883b6dcdd4803b6c23b757642df796e4b938318bd3fe66cfaf408f8510` |
| 4 | `lemma` | [Module.length_eq_coheight](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-coheight--bd0c86658540ccd06658a5b9.md) | 51 | `result-track:bd0c86658540ccd06658a5b903e79d119170e7a7728a2599bd2ad4ca891e7d3c` |
| 5 | `lemma` | [Module.length_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-zero-iff--3ea5c985eed7a7b36b12a033.md) | 57 | `result-track:3ea5c985eed7a7b36b12a03320e756261b8176d5c8f31e0fcdd3aa0e2af499ce` |
| 6 | `lemma` | [Module.length_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-zero--4fbf4dd69ce5c6218d789a4c.md) | 62 | `result-track:4fbf4dd69ce5c6218d789a4caad266bed6c0785c44b8b4abbdb66c0f935d9358` |
| 7 | `lemma` | [Module.length_eq_zero_of_subsingleton_ring](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-zero-of-subsingleton-ring--9dfc222aedaec2b5445dc8e3.md) | 66 | `result-track:9dfc222aedaec2b5445dc8e34bf2e8efd65735d6313034570d9be02388bb8067` |
| 8 | `lemma` | [Module.length_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-pos-iff--f1276da6a78bdfc738d7ce4d.md) | 70 | `result-track:f1276da6a78bdfc738d7ce4d0c28b3a0ec7cbbbeba616a81527ef130107d7ff8` |
| 9 | `lemma` | [Module.length_pos](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-pos--a00468f9e057213d9110ee79.md) | 73 | `result-track:a00468f9e057213d9110ee7914d4c0da98c15dbef10fb7438583c49fc8b518b2` |
| 10 | `lemma` | [Module.length_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-compositionseries--2bfee47d6b7388f1a566466f.md) | 76 | `result-track:2bfee47d6b7388f1a566466f375f118127b8c4c2a4153fc42a0e7c8386fb7736` |
| 11 | `lemma` | [Module.length_eq_top_iff_infiniteDimensionalOrder](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-top-iff-infinitedimensionalorder--10ff0f024b246a168a8abfc7.md) | 93 | `result-track:10ff0f024b246a168a8abfc7e7933a0b66675ddbeb5f2dd487d41f9f56c83a53` |
| 12 | `lemma` | [Module.length_ne_top_iff_finiteDimensionalOrder](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-ne-top-iff-finitedimensionalorder--958643537b9da04b20512558.md) | 98 | `result-track:958643537b9da04b20512558e431d2b8067b2c0162e8bf09bf314cc9fa048596` |
| 13 | `lemma` | [Module.length_ne_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-ne-top-iff--5699df1f53d2843e3a754a7e.md) | 102 | `result-track:5699df1f53d2843e3a754a7ee4a402133f022bc3fd1ed7d9531e20c6f9e97d90` |
| 14 | `lemma` | [Module.length_ne_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-ne-top--0b66534b7d18d1ccc51a6d46.md) | 114 | `result-track:0b66534b7d18d1ccc51a6d462632fce960216e91689d78e04be2e64741b23547` |
| 15 | `lemma` | [Module.finiteDimensionalOrder_submodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-finitedimensionalorder-submodule-iff--8bfa71160d67911f73067a3b.md) | 119 | `result-track:8bfa71160d67911f73067a3bb08b0fee83e184c2049d9d94054bf74518a968c4` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/instance--a8128b7a3c4a6f1c5e085e96.md) | 123 | `declaration-track:a8128b7a3c4a6f1c5e085e9615253d2d3a109c61c6b37b98056b457a745d66ed` |
| 17 | `lemma` | [Module.length_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-submodule--da113b6f66fb1d08c4a4d434.md) | 127 | `result-track:da113b6f66fb1d08c4a4d43445f6b626bbc0db39d1017342dad46bcefdc72854` |
| 18 | `lemma` | [Module.length_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-quotient--8182552ff0c3154a537895dc.md) | 132 | `result-track:8182552ff0c3154a537895dc250fe15870858901776a61d5f48527b45c385c30` |
| 19 | `lemma` | [LinearEquiv.length_eq](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/linearequiv-length-eq--c4a53130799dcfe08ee4fc54.md) | 138 | `result-track:c4a53130799dcfe08ee4fc5443a656352a1934f4a09b936e7d13dc38c85c79f3` |
| 20 | `theorem` | [Module.length_eq_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-of-surjective--f11b7fa893ee9ccea4d1c05f.md) | 144 | `result-track:f11b7fa893ee9ccea4d1c05ff31881787df652fb1bebd4f7e221821b0217b499` |
| 21 | `lemma` | [Module.length_bot](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-bot--3ceed91004226e4fbe48fcc3.md) | 152 | `result-track:3ceed91004226e4fbe48fcc37341467acce20e50b60c8390b96918598e4670e8` |
| 22 | `lemma` | [Module.length_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-top--00bdb7d8d31174a6a949f178.md) | 156 | `result-track:00bdb7d8d31174a6a949f1781c195dee6a3bd195c9ac860e6c8032d7210a9d1c` |
| 23 | `lemma` | [Submodule.height_lt_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/submodule-height-lt-top--34b52ba13c35ab582530acef.md) | 160 | `result-track:34b52ba13c35ab582530acef3d4410b6dac6125bb8258b8a76bab639ac63785c` |
| 24 | `lemma` | [Submodule.height_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/submodule-height-strictmono--d1534159ed03d9cd1be7f31e.md) | 164 | `result-track:d1534159ed03d9cd1be7f31e7d3810d471dc14a4a6f80b00da68ef220fcb0763` |
| 25 | `lemma` | [Submodule.length_lt](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/submodule-length-lt--17f37036a8d25e13c97f8d24.md) | 168 | `result-track:17f37036a8d25e13c97f8d24c8eda466d0f52727598ac2d673a0c6780ba42264` |
| 26 | `lemma` | [Module.length_eq_add_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-add-of-exact--c1fa4b5ff7a814b298a88747.md) | 178 | `result-track:c1fa4b5ff7a814b298a887474fe1ccfca9fe01091c14a15dd82e256bcd28367c` |
| 27 | `lemma` | [Module.length_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-le-of-injective--c053b06394b4b3c8c7e8054c.md) | 205 | `result-track:c053b06394b4b3c8c7e8054c46ccc343c69231a69b3e71d3273502562c5814ae` |
| 28 | `lemma` | [Module.length_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-le-of-surjective--fd05153f8b31889c3655627c.md) | 211 | `result-track:fd05153f8b31889c3655627c3458558cb76d6a53cab443f514bcb0adae85f565` |
| 29 | `lemma` | [Module.length_prod](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-prod--a93f9603f51331909bd001ca.md) | 218 | `result-track:a93f9603f51331909bd001caa05bf3ccf472260cc174ce547b8e0cac92ec2291` |
| 30 | `lemma` | [Module.length_pi_of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-pi-of-fintype--45931b6148fdf5c7be655f99.md) | 224 | `result-track:45931b6148fdf5c7be655f999561c8ed510f4d7c286455e5e9a8056d01f2b162` |
| 31 | `lemma` | [Module.length_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-finsupp--19346660c4018106e1593e95.md) | 238 | `result-track:19346660c4018106e1593e9584586ac4bc653db2e546b884043c1fd418b2e691` |
| 32 | `lemma` | [Module.length_pi](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-pi--763c52ef05fe135ecc0b867b.md) | 255 | `result-track:763c52ef05fe135ecc0b867b1c13f75cbf52a54bd262903f4a4368c0bd781f12` |
| 33 | `lemma` | [Module.length_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-of-free--98af8d6c575410fff91a3994.md) | 268 | `result-track:98af8d6c575410fff91a3994f0aac54984b89e61b33193e1a48c5457c081f0d9` |
| 34 | `lemma` | [Module.length_of_free_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-of-free-of-finite--02a890a319e77e77fe0e5182.md) | 281 | `result-track:02a890a319e77e77fe0e51820e8ed58fd8dc5515413cbea02505c3e767268d43` |
| 35 | `lemma` | [Module.length_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-one-iff--f8015ac9182a5f01c377d895.md) | 286 | `result-track:f8015ac9182a5f01c377d895e163af331546d282a408f9f364f89f71eb517b40` |
| 36 | `lemma` | [Module.length_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-one--9b60d0da44f67c411cc5c58d.md) | 293 | `result-track:9b60d0da44f67c411cc5c58d44b6c5bbeb81ad95a92f4149ba4e8f37ecce63d5` |
| 37 | `lemma` | [Module.length_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-rank--1fa1e79c1782ebc08dcf65fd.md) | 297 | `result-track:1fa1e79c1782ebc08dcf65fd46523db5c696c22fbf533116b5d297d09c0da99d` |
| 38 | `lemma` | [Module.length_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/module-length-eq-finrank--a96846c905a0e72ee6862c45.md) | 302 | `result-track:a96846c905a0e72ee6862c45bb2c7055dd606d5b865de4d1a821b5d21efc531c` |
| 39 | `theorem` | [Submodule.length_le_length_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/submodule-length-le-length-restrictscalars--fa1b9a5ec2298149f05b1acd.md) | 307 | `result-track:fa1b9a5ec2298149f05b1acdd1b58feab5ef147fb3503ff21d8a6041780aa0d5` |
| 40 | `theorem` | [Submodule.length_quotient_lt](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/declarations/submodule-length-quotient-lt--73d73ceb1138e36916ce5945.md) | 313 | `result-track:73d73ceb1138e36916ce5945735dcc6b169ab40bf6fb05a4270fd6218b1ebe1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
