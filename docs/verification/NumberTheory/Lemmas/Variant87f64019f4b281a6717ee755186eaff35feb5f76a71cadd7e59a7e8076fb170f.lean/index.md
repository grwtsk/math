# Verification target: GRWTSK.NumberTheory.Lemmas.Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef5cace8de3dafea543d9085523c19a05c4b70e1",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef5cace8de3dafea543d9085523c19a05c4b70e1`.

Source path: `GRWTSK/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.MulChar.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Complex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eq_iff](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/eq-iff--694aa8a93398d2930ddf63fc.md) | 25 | `result-track:694aa8a93398d2930ddf63fcabc61898f31b82191b268e506fc12702b7e1104d` |
| 2 | `def` | [starComp](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/starcomp--30da70d62140e1f0139c8396.md) | 38 | `declaration-track:30da70d62140e1f0139c8396e2c50f05beed8ffdb55ef09c415bb03f74b3d974` |
| 3 | `instance` | [instStarMul](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/inststarmul--00ad75b153955b38a2cbd5ad.md) | 41 | `declaration-track:00ad75b153955b38a2cbd5ad977c9f4a72faa87110ec91e4a599e0235d4757ab` |
| 4 | `lemma` | [star_apply](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/star-apply--0a7e11b3f846e9f1e1a24c51.md) | 52 | `result-track:0a7e11b3f846e9f1e1a24c5126fbb46ec40b3ecc58524313272d9f65ce15f274` |
| 5 | `lemma` | [apply_mem_rootsOfUnity](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/apply-mem-rootsofunity--a188d88e6daa88000a8df969.md) | 56 | `result-track:a188d88e6daa88000a8df96999eace91cac3459317386627e6c235ae31264627` |
| 6 | `lemma` | [star_eq_inv](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/star-eq-inv--58fb11a3bbe8bf2f4f5eb7ec.md) | 64 | `result-track:58fb11a3bbe8bf2f4f5eb7ecad59b1491125ac250a2db3f212e50da4b7b16698` |
| 7 | `lemma` | [star_apply'](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/star-apply--948055abcecbfe1e888e0210.md) | 70 | `result-track:948055abcecbfe1e888e02106e8b2087d7e9a7c6f3b47f5a9e3fe88d7d830f9b` |
| 8 | `def` | [ofRootOfUnity](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/ofrootofunity--5a1bf47a830576d2da5159d1.md) | 87 | `declaration-track:5a1bf47a830576d2da5159d12bb6962ba18f78b2ccfee16b6da40b3a6fe8bcef` |
| 9 | `lemma` | [ofRootOfUnity_spec](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/ofrootofunity-spec--23334aa562c1e6134a554257.md) | 95 | `result-track:23334aa562c1e6134a5542572b377458477e6e8b24d330b836cb934815a6a08e` |
| 10 | `def` | [equiv_rootsOfUnity](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/equiv-rootsofunity--edd1096886d3d80f19e32a1e.md) | 104 | `declaration-track:edd1096886d3d80f19e32a1e409bd726cccb8081421d49a2dfea7000549693a3` |
| 11 | `lemma` | [exists_mulChar_orderOf](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/exists-mulchar-orderof--47edec61f5dca87d7bde2d08.md) | 134 | `result-track:47edec61f5dca87d7bde2d0825b9827fc957265f741102265120278d00b6d5e7` |
| 12 | `lemma` | [orderOf_dvd_card_sub_one](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/orderof-dvd-card-sub-one--a998c56ff60d5c250f020e74.md) | 157 | `result-track:a998c56ff60d5c250f020e74ecb89e32fe077bbf839059b092347f27589d16f1` |
| 13 | `lemma` | [exists_mulChar_orderOf_eq_card_units](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/exists-mulchar-orderof-eq-card-units--6ef7be1446793cc5abda67f2.md) | 164 | `result-track:6ef7be1446793cc5abda67f2f98fb0c21c8cc06f231b58b3f8dc73fa9eb47c48` |
| 14 | `lemma` | [apply_mem_rootsOfUnity_orderOf](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/apply-mem-rootsofunity-orderof--1880c0d439464f49eb79c1f8.md) | 175 | `result-track:1880c0d439464f49eb79c1f84809004f826d020c852e1c30839ba097be00da57` |
| 15 | `lemma` | [apply_mem_rootsOfUnity_of_pow_eq_one](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/apply-mem-rootsofunity-of-pow-eq-one--c8f3571825f7a0c925c2aa21.md) | 186 | `result-track:c8f3571825f7a0c925c2aa2126f163da85f120bf6a24d833907cd40348eb7302` |
| 16 | `lemma` | [exists_apply_eq_pow](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/exists-apply-eq-pow--56f5764a9b78f49246f6260b.md) | 197 | `result-track:56f5764a9b78f49246f6260b791cce5f8fe5835589131b2235a80796fb76f434` |
| 17 | `lemma` | [apply_mem_algebraAdjoin_of_pow_eq_one](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/apply-mem-algebraadjoin-of-pow-eq-one--0ec43b4d3562478c68a968b7.md) | 207 | `result-track:0ec43b4d3562478c68a968b7f0312550065a8d7535edb209936659c7b588e4e1` |
| 18 | `lemma` | [apply_mem_algebraAdjoin](../../../../mathematics/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/declarations/apply-mem-algebraadjoin--782eccbac8209ced5ad0c5e0.md) | 219 | `result-track:782eccbac8209ced5ad0c5e07da1b3668106f9a7dcd2d68477082b55171c71b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
