# Verification target: GRWTSK.Algebra.Jacobson.Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9efe5286cceb347fd2e22fdfdc22b70211a69a4e",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/index.md) · [Full source](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9efe5286cceb347fd2e22fdfdc22b70211a69a4e`.

Source path: `GRWTSK/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Away.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.JacobsonIdeal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsJacobson](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson--8f15a5daf4b470c9d4dfffd2.md) | 54 | `declaration-track:8f15a5daf4b470c9d4dfffd27708aae1bf90ee71281e62977103495e351d3960` |
| 2 | `theorem` | [isJacobson_iff](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-iff--fa5a935f0163852da903c216.md) | 58 | `result-track:fa5a935f0163852da903c21663e421dff58303e0e792bfca59ad8d8b104d87be` |
| 3 | `theorem` | [IsJacobson.out](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-out--41ebc3135f80e93ae98f3fc5.md) | 63 | `result-track:41ebc3135f80e93ae98f3fc5283773813476defd786c5bff8a7f9010ac161ba1` |
| 4 | `theorem` | [isJacobson_iff_prime_eq](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-iff-prime-eq--4fac10ae2cc570f7c3896099.md) | 70 | `result-track:4fac10ae2cc570f7c3896099df8e6b2be07c204e02feaad87becad1374b348e9` |
| 5 | `theorem` | [isJacobson_iff_sInf_maximal](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-iff-sinf-maximal--8c6eeba67b6fe76505ee8109.md) | 84 | `result-track:8c6eeba67b6fe76505ee810921ab3a95988ac0272078eb882f26a86e0ee38467` |
| 6 | `theorem` | [isJacobson_iff_sInf_maximal'](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-iff-sinf-maximal--b3c0d2eeba383aaf0d29f293.md) | 90 | `result-track:b3c0d2eeba383aaf0d29f293e1f6a07889845300aa9e0e58b9fafdc2b6b570d9` |
| 7 | `theorem` | [radical_eq_jacobson](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/radical-eq-jacobson--df08f2698d29bae21730c5c8.md) | 96 | `result-track:df08f2698d29bae21730c5c8035d0874fc7b5e8d42a43c983bb40767447821bc` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/instance--eb3ce9599782e38a06e1f9b7.md) | 102 | `declaration-track:eb3ce9599782e38a06e1f9b747925b644babf46a53fb433ee0efe62b25fdb0f2` |
| 9 | `theorem` | [isJacobson_of_surjective](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-of-surjective--9614d5de46d230e32f62229f.md) | 108 | `result-track:9614d5de46d230e32f62229f11d7920ed629a6e9f0cf8aaab727b108718ce3ef` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/instance--44bee072af2b42a04a97b08d.md) | 120 | `declaration-track:44bee072af2b42a04a97b08d250bf494546ef222ab2bcceca17948ae1e95213b` |
| 11 | `theorem` | [isJacobson_iso](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-iso--65de16e7eb5d6c7ec21aeba7.md) | 127 | `result-track:65de16e7eb5d6c7ec21aeba76dcc3b2202d036b3918977506cc5be018e18ccd5` |
| 12 | `theorem` | [isJacobson_of_isIntegral](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-of-isintegral--9525c027e1a94995309f30e0.md) | 132 | `result-track:9525c027e1a94995309f30e0e0a7aec644585b48f1b676f7c711822409f82a9b` |
| 13 | `theorem` | [isJacobson_of_isIntegral'](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-of-isintegral--12ffd7e61511a25e4c8ca8a9.md) | 151 | `result-track:12ffd7e61511a25e4c8ca8a99abd710257aa74507b61a4c2d67ab03cbf2cb866` |
| 14 | `theorem` | [disjoint_powers_iff_not_mem](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/disjoint-powers-iff-not-mem--7bc72806a45064eb9742dfc1.md) | 165 | `result-track:7bc72806a45064eb9742dfc1963bd8aa6bf76aa654a69166646b6c3a08c21fb3` |
| 15 | `theorem` | [isMaximal_iff_isMaximal_disjoint](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/ismaximal-iff-ismaximal-disjoint--df7ecd57a562495e24cec063.md) | 179 | `result-track:df7ecd57a562495e24cec063ba1097d0d8f179ceee30af5c9989460277ebae71` |
| 16 | `theorem` | [isMaximal_of_isMaximal_disjoint](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/ismaximal-of-ismaximal-disjoint--59ae430c56cc3b7665ca7667.md) | 214 | `result-track:59ae430c56cc3b7665ca7667a7b7c8b262b1389617c5fdbcf93a890e78cc326a` |
| 17 | `def` | [orderIsoOfMaximal](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/orderisoofmaximal--c24a0ad96e52bec5ac4944b9.md) | 224 | `declaration-track:c24a0ad96e52bec5ac4944b961eb35377a7dc78d415902adc0cc7cca5a8e7a4b` |
| 18 | `theorem` | [isJacobson_localization](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-localization--416077bee9d04a02e9930770.md) | 238 | `result-track:416077bee9d04a02e99307708e2222730c4a8cc5aeba224c7bea282ee0036460` |
| 19 | `lemma` | [Subring.mem_closure_image_of](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/subring-mem-closure-image-of--7f4f3572f4b3210397ba63bc.md) | 277 | `result-track:7f4f3572f4b3210397ba63bc7143f0fd9dd680e0092f7e8f9fa8acfa1f57f506` |
| 20 | `lemma` | [mem_closure_X_union_C](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/mem-closure-x-union-c--1991fced092cec5c4ce31af1.md) | 287 | `result-track:1991fced092cec5c4ce31af183869d5c48db306bf057f1c0f86800e179564e05` |
| 21 | `theorem` | [isIntegral_isLocalization_polynomial_quotient](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isintegral-islocalization-polynomial-quotient--063b24498dedfd01a4ae6cfc.md) | 311 | `result-track:063b24498dedfd01a4ae6cfcada21ed11fb1637061524e3f28dfea55ef3a6c93` |
| 22 | `theorem` | [jacobson_bot_of_integral_localization](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/jacobson-bot-of-integral-localization--a43025ac8a7554c802a558e0.md) | 369 | `result-track:a43025ac8a7554c802a558e0067925cc3191596ce62db534296d043d70190960` |
| 23 | `theorem` | [isJacobson_polynomial_of_domain](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-polynomial-of-domain--6787943cdb408c63e3fb4d64.md) | 415 | `result-track:6787943cdb408c63e3fb4d64abc5f88eb6ce77259b375d50b484adf2076e78e6` |
| 24 | `theorem` | [isJacobson_polynomial_of_isJacobson](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-polynomial-of-isjacobson--73548940d99a6cae3befabe9.md) | 437 | `result-track:73548940d99a6cae3befabe9ecb6229deaa89e544fe0e634cb1e11b70f9223b4` |
| 25 | `theorem` | [isJacobson_polynomial_iff_isJacobson](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-polynomial-iff-isjacobson--37a5be62214ffd5768d146c2.md) | 466 | `result-track:37a5be62214ffd5768d146c2fdf5c8abc2496267ebfaa65f78609d19c25853e3` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/instance--46cd2d31bd49db89d17c5f66.md) | 473 | `declaration-track:46cd2d31bd49db89d17c5f6614dd5ae89e5a177e3847c255610e303eb86c421d` |
| 27 | `theorem` | [isMaximal_comap_C_of_isMaximal](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/ismaximal-comap-c-of-ismaximal--9fe0f7e13032be67af3778b2.md) | 484 | `result-track:9fe0f7e13032be67af3778b2153a01124696069fcb7200074d7a46e1be12aeed` |
| 28 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson'](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--712e36e1063afee729e8055f.md) | 530 | `result-track:712e36e1063afee729e8055f01eb6536230be5ebfb649a831d83b5cf6639d2fd` |
| 29 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--5d593340c057f2a18a1e126a.md) | 566 | `result-track:5d593340c057f2a18a1e126a0b236d217bdeb56a31487cc94b57770846933a20` |
| 30 | `theorem` | [isMaximal_comap_C_of_isJacobson](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/ismaximal-comap-c-of-isjacobson--9eb5bb5c5c4f380a90b30182.md) | 592 | `result-track:9eb5bb5c5c4f380a90b3018200f542d63281aa3181df22584c979f6bccfee6cb` |
| 31 | `lemma` | [isMaximal_comap_C_of_isJacobson'](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/ismaximal-comap-c-of-isjacobson--b76485699bda8e197b9839f4.md) | 599 | `result-track:b76485699bda8e197b9839f45cb7d9e609b031657d904ee2e12a6828d00a3bdd` |
| 32 | `theorem` | [comp_C_integral_of_surjective_of_jacobson](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/comp-c-integral-of-surjective-of-jacobson--1272b48f38bd3e62ddaa8d93.md) | 604 | `result-track:1272b48f38bd3e62ddaa8d938a1047b123e306d88fe7e783c39434357ffa2c7c` |
| 33 | `theorem` | [isJacobson_MvPolynomial_fin](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson-mvpolynomial-fin--68b8fa46754b9cca4bdb4e08.md) | 626 | `result-track:68b8fa46754b9cca4bdb4e087b397783e6fdaf991aa4d431d34059a03c80133c` |
| 34 | `instance` | [isJacobson](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/isjacobson--629057efad35430ffc7bb5ad.md) | 638 | `declaration-track:629057efad35430ffc7bb5ad50a88349669db31630c38162212dbdfc12fdb35a` |
| 35 | `def` | [Cₐ](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/c--bb8da866a5efa4e3ec5a6146.md) | 653 | `declaration-track:bb8da866a5efa4e3ec5a614644ff754f14da2ce820586b8d929c2f4e5461dd1d` |
| 36 | `lemma` | [aux_IH](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/aux-ih--d1a3a96e18cd453813f022af.md) | 657 | `result-track:d1a3a96e18cd453813f022af60c2ee65c38185020243fd98f2c2e389e012f6ae` |
| 37 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson'](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--2a5f6d3a0ecfcd5390f52c19.md) | 688 | `result-track:2a5f6d3a0ecfcd5390f52c19cea957d6416437f7fa6e5076132da71cb101c67e` |
| 38 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--bc9a0c07c97667321c40404c.md) | 697 | `result-track:bc9a0c07c97667321c40404c7f73cc3c9c41c47606c122197efeed898f6db123` |
| 39 | `theorem` | [comp_C_integral_of_surjective_of_jacobson](../../../../mathematics/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/declarations/comp-c-integral-of-surjective-of-jacobson--b776729f073a3caa47eca4b2.md) | 706 | `result-track:b776729f073a3caa47eca4b2d6a2cedf125c2ee9a6a8e124490fb9f1746c3ba0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
