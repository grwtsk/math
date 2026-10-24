# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a23b6df0704206ee4f6dfc020fdb8b15e3aa314",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a23b6df0704206ee4f6dfc020fdb8b15e3aa314`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Internal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GradedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedring--e931820fb8312d16dfa5658a.md) | 71 | `declaration-track:e931820fb8312d16dfa5658a54fa45e194e66b4ee07ac758ab7210546c7dfecd` |
| 2 | `def` | [decomposeRingEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decomposeringequiv--4ab37b779dcf9c453b167b2d.md) | 79 | `declaration-track:4ab37b779dcf9c453b167b2d975feb6bd72592c9bee27b9aef8abcb8d4d06c33` |
| 3 | `theorem` | [decompose_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decompose-one--bc2d7da055d900f05e4839e4.md) | 85 | `result-track:bc2d7da055d900f05e4839e472a53af30ad17556c06dcbcd56da79e73b4f47e8` |
| 4 | `theorem` | [decompose_symm_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decompose-symm-one--bba92a8df479416400d5d77a.md) | 89 | `result-track:bba92a8df479416400d5d77ac68423797f3d083d840e04c451a5731892615771` |
| 5 | `theorem` | [decompose_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decompose-mul--d612bd9b323082e01b64aef9.md) | 93 | `result-track:d612bd9b323082e01b64aef9911e9ce0033dfb75f0c9ff5b7019e27fb57e51b2` |
| 6 | `theorem` | [decompose_symm_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decompose-symm-mul--f6db5631110c5006a630b1fd.md) | 97 | `result-track:f6db5631110c5006a630b1fd021da4a555406c8598b814ff08167bb35e6ba8e8` |
| 7 | `def` | [GradedRing.proj](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedring-proj--d3152ef74227fc81ed370769.md) | 104 | `declaration-track:d3152ef74227fc81ed3707692868347927997e63168810828636d7e0f39ad857` |
| 8 | `theorem` | [GradedRing.proj_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedring-proj-apply--f95ca835e0cf17162f633ba6.md) | 110 | `result-track:f95ca835e0cf17162f633ba67021d179bef8002fafa661926c2fff2ef320ff09` |
| 9 | `theorem` | [GradedRing.proj_recompose](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedring-proj-recompose--5f9c70936a559912ea4b32de.md) | 114 | `result-track:5f9c70936a559912ea4b32de1c5dc9e3076883679728a48a64e61766bb77e1cf` |
| 10 | `theorem` | [GradedRing.mem_support_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedring-mem-support-iff--eef00ec9eca40be4a8a5a672.md) | 118 | `result-track:eef00ec9eca40be4a8a5a6721c5f7e63e54caa5c4efc05260cbc88d047c4886a` |
| 11 | `theorem` | [coe_decompose_mul_add_of_left_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coe-decompose-mul-add-of-left-mem--e04c7798097e0ac3c23de0b3.md) | 133 | `result-track:e04c7798097e0ac3c23de0b3de633e2f1b0e8c7877f42492e96e755f610320f3` |
| 12 | `theorem` | [coe_decompose_mul_add_of_right_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coe-decompose-mul-add-of-right-mem--6fc7227013e73ababffd35d8.md) | 138 | `result-track:6fc7227013e73ababffd35d80c2ae7b2f2d24ff7f99f8078462659507f76a54b` |
| 13 | `theorem` | [decompose_mul_add_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decompose-mul-add-left--1f8676797aa2ccd2081a2079.md) | 143 | `result-track:1f8676797aa2ccd2081a20797b190f1f929b31e9b00ba3ab425f9a566efec032` |
| 14 | `theorem` | [decompose_mul_add_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decompose-mul-add-right--96ce0d7f50ac2aeae09d6091.md) | 148 | `result-track:96ce0d7f50ac2aeae09d6091a1284c8f5509d9c97af4b02dd69ceb4ea4b69c6b` |
| 15 | `theorem` | [coe_decompose_mul_of_left_mem_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coe-decompose-mul-of-left-mem-zero--023e9e31a52d8d75bf6f9c8e.md) | 153 | `result-track:023e9e31a52d8d75bf6f9c8ed80cbd8b987857265fba92833d861e27b7cd75ec` |
| 16 | `theorem` | [coe_decompose_mul_of_right_mem_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coe-decompose-mul-of-right-mem-zero--be32ce18c206d352c7977f96.md) | 158 | `result-track:be32ce18c206d352c7977f96cbea863f6ec467f5a3fecdb24198e595f85b1156` |
| 17 | `abbrev` | [GradedAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedalgebra--ecd038a68fa067d24516e518.md) | 174 | `declaration-track:ecd038a68fa067d24516e518a92d31792063d45818289d1871a76e678869e8fc` |
| 18 | `abbrev` | [GradedAlgebra.ofAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedalgebra-ofalghom--af6de603800a088349517413.md) | 182 | `declaration-track:af6de603800a088349517413ac2c451ed057b31f9836a1d0ff6634597986c9dc` |
| 19 | `def` | [decomposeAlgEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decomposealgequiv--59c10c1ccc86e46f98730bb6.md) | 200 | `declaration-track:59c10c1ccc86e46f98730bb60aff9b572a0caaf397280f95d124aade5fc65752` |
| 20 | `lemma` | [decomposeAlgEquiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decomposealgequiv-apply--bbc00d29428cf2a10c4ce117.md) | 207 | `result-track:bbc00d29428cf2a10c4ce1173f90afe35a1f9709ffa592a00435ac45774d3fda` |
| 21 | `lemma` | [decomposeAlgEquiv_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decomposealgequiv-symm-apply--e0c354a2442734e882373e09.md) | 211 | `result-track:e0c354a2442734e882373e09a15271ec9ce426c65f3b8595b5e914b4056ee3ed` |
| 22 | `lemma` | [decompose_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decompose-algebramap--3e552c7d43134899c9975225.md) | 215 | `result-track:3e552c7d43134899c99752259d3a0a8053ad1cfd80e484b606a2f96afedeb9ba` |
| 23 | `lemma` | [decompose_symm_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/decompose-symm-algebramap--c79945aceb9a4484050e4866.md) | 220 | `result-track:c79945aceb9a4484050e486680eede06212c89f8269062eac5c57ba668338d61` |
| 24 | `def` | [GradedAlgebra.proj](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedalgebra-proj--69cb48ed8b7fa1074e7c3fbf.md) | 229 | `declaration-track:69cb48ed8b7fa1074e7c3fbf64f7bb66a782305bdd0860912e66111bf0df7f6f` |
| 25 | `theorem` | [GradedAlgebra.proj_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedalgebra-proj-apply--fd987afa22f1adc83a954fec.md) | 233 | `result-track:fd987afa22f1adc83a954fecfeaa17e880a8c07af9e64c1f6c24c4d0178b2bb7` |
| 26 | `theorem` | [GradedAlgebra.proj_recompose](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedalgebra-proj-recompose--e01d27f8581f9c6900095ea7.md) | 237 | `result-track:e01d27f8581f9c6900095ea7ca6a2d21b2e38c1bf3e1c6f7484c62f674e69ae2` |
| 27 | `theorem` | [GradedAlgebra.mem_support_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedalgebra-mem-support-iff--27d4920479faded4cc9bafda.md) | 241 | `result-track:27d4920479faded4cc9bafdac4feedd6a0a32cb52a46f2f7d63c851dc0575876` |
| 28 | `def` | [GradedRing.projZeroRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedring-projzeroringhom--db925f16313770167b8c3bed.md) | 259 | `declaration-track:db925f16313770167b8c3bed44c42f107d4d7c422f223cc5713893e10461448c` |
| 29 | `def` | [GradedRing.projZeroRingHom'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedring-projzeroringhom--b378da04d4273f2071b3dead.md) | 299 | `declaration-track:b378da04d4273f2071b3dead6d56ac060c4071521ba8731ef7471d926323fa25` |
| 30 | `lemma` | [GradedRing.coe_projZeroRingHom'_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedring-coe-projzeroringhom-apply--3eb2ae73c530f747ddef0d89.md) | 303 | `result-track:3eb2ae73c530f747ddef0d89b76f41cc1c7237dd5f41715f9f6e9c8e5b56213d` |
| 31 | `lemma` | [GradedRing.projZeroRingHom'_apply_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedring-projzeroringhom-apply-coe--310a79a15c90e378bf2852d7.md) | 306 | `result-track:310a79a15c90e378bf2852d7bf6eb655bc2194be94d5946da95c7f77b5989b04` |
| 32 | `lemma` | [GradedRing.projZeroRingHom'_surjective](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedring-projzeroringhom-surjective--c4e082fbb3f17b4a2dbe0be3.md) | 311 | `result-track:c4e082fbb3f17b4a2dbe0be3e3e13a36273fba1802aac718bfa1d90309f9d5f4` |
| 33 | `theorem` | [coe_decompose_mul_of_left_mem_of_not_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coe-decompose-mul-of-left-mem-of-not-le--5acac561b5f9d08ce5e6bb39.md) | 321 | `result-track:5acac561b5f9d08ce5e6bb390819473d1d4760e45cc304df99a5c85e73e3b648` |
| 34 | `theorem` | [coe_decompose_mul_of_right_mem_of_not_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coe-decompose-mul-of-right-mem-of-not-le--b63aa60c123157ae7bcad687.md) | 326 | `result-track:b63aa60c123157ae7bcad687f8d8af79a7a842c0c161fb73ba3b1156af7daddd` |
| 35 | `theorem` | [coe_decompose_mul_of_left_mem_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coe-decompose-mul-of-left-mem-of-le--04118c0cde1f825a57526746.md) | 333 | `result-track:04118c0cde1f825a57526746b2173fd86b1a693781e5e168c921c6dea13980b6` |
| 36 | `theorem` | [coe_decompose_mul_of_right_mem_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coe-decompose-mul-of-right-mem-of-le--fa374d8e7ca3f592f5a5386d.md) | 338 | `result-track:fa374d8e7ca3f592f5a5386da984e1df98998f012d35ad20772194ad64a9d56b` |
| 37 | `theorem` | [coe_decompose_mul_of_left_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coe-decompose-mul-of-left-mem--ed89d6f5e6ba7f4efb2293ab.md) | 343 | `result-track:ed89d6f5e6ba7f4efb2293abc7c7b2174cc63c5a9ecfe37cc35ddf693bd69a76` |
| 38 | `theorem` | [coe_decompose_mul_of_right_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coe-decompose-mul-of-right-mem--7cbba136c2276b16a55b8583.md) | 348 | `result-track:7cbba136c2276b16a55b8583dc3ba0ecf526eb157c9fe32574711d928a7b413b` |
| 39 | `def` | [coeAlgEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/coealgequiv--19393e1de47823b00fee570a.md) | 365 | `declaration-track:19393e1de47823b00fee570a99790c0d635df6d20f5187d213eabb26e843560b` |
| 40 | `def` | [gradedAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/declarations/gradedalgebra--73e4ac8f27757272db831805.md) | 375 | `declaration-track:73e4ac8f27757272db8318058733fe358ee0d50257647daf8ab253e0c9fff80f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
