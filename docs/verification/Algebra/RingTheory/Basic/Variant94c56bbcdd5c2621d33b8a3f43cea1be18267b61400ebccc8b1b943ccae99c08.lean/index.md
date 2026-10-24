# Verification target: GRWTSK.Algebra.RingTheory.Basic.Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ee1ef32222097e8a6385676554066fd2d1a549f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ee1ef32222097e8a6385676554066fd2d1a549f`.

Source path: `GRWTSK/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Finprod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsNilpotent.neg](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-neg--3b81a9f195a0dc167cfb7cc0.md) | 39 | `result-track:3b81a9f195a0dc167cfb7cc095c6282993c20e0f7a438047076d2226bbdf86e2` |
| 2 | `theorem` | [isNilpotent_neg_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-neg-iff--658a74c6bbd719a0b535ce77.md) | 45 | `result-track:658a74c6bbd719a0b535ce77b78a5048cf3c1b8fd3e6cd47b22bf32bf9cb24b0` |
| 3 | `lemma` | [IsNilpotent.smul](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-smul--3a83a495ea08eec47dcb74e8.md) | 48 | `result-track:3a83a495ea08eec47dcb74e861035a00a7f8cb0e465e4257e67a3e0d586752dd` |
| 4 | `theorem` | [IsNilpotent.isUnit_sub_one](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-isunit-sub-one--c9f243cc7899bbe35162e942.md) | 55 | `result-track:c9f243cc7899bbe35162e942aa4fbd48e61ff6b64c3a2786a8596192deaa312b` |
| 5 | `theorem` | [IsNilpotent.isUnit_one_sub](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-isunit-one-sub--a386a28da5f807e37b68b61d.md) | 61 | `result-track:a386a28da5f807e37b68b61dfc2617ccecfac6bb6a03abd560a890b944c2a7b3` |
| 6 | `theorem` | [IsNilpotent.isUnit_add_one](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-isunit-add-one--a2c3e32e7bc51e2c9c93ac24.md) | 65 | `result-track:a2c3e32e7bc51e2c9c93ac24fb5418f7dd8a6274e738356aa9c8efbe0824cad8` |
| 7 | `theorem` | [IsNilpotent.isUnit_one_add](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-isunit-one-add--58b97e9b65565e96c08bf144.md) | 69 | `result-track:58b97e9b65565e96c08bf144300f2f25e3a3f9970eac30e72b1c0f80d3d3aaa2` |
| 8 | `theorem` | [IsNilpotent.isUnit_add_left_of_commute](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-isunit-add-left-of-commute--e74e0312ece1c4514f744931.md) | 72 | `result-track:e74e0312ece1c4514f74493147cbf75a307a4d65a399d815b3646fd808d472d7` |
| 9 | `theorem` | [IsNilpotent.isUnit_add_right_of_commute](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-isunit-add-right-of-commute--6f5adfb021715e99855e1718.md) | 80 | `result-track:6f5adfb021715e99855e17186e6d928eb1874cdba4011bf6242170d4a623bb0a` |
| 10 | `lemma` | [IsUnit.not_isNilpotent](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isunit-not-isnilpotent--e9658850d2b68b91a5bee6ff.md) | 85 | `result-track:e9658850d2b68b91a5bee6fffbc7d5fb9ff8bccb57250cb6ff8c6992b1c7340b` |
| 11 | `lemma` | [IsNilpotent.not_isUnit](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-not-isunit--11162182a7c7050fb9de45eb.md) | 90 | `result-track:11162182a7c7050fb9de45ebde7bf8f081fd1a639ea827141d495a3f28c21fa2` |
| 12 | `lemma` | [IsIdempotentElem.eq_zero_of_isNilpotent](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isidempotentelem-eq-zero-of-isnilpotent--d1fcdc320f3583fd5c0d19be.md) | 94 | `result-track:d1fcdc320f3583fd5c0d19be45ed86303ffd5070559405029af14746bb219181` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/instance--4afe312b4114eaf84f9d0089.md) | 102 | `declaration-track:4afe312b4114eaf84f9d00895ca5d37eec6a5242dad4373a4ceefc9912aaf8b2` |
| 14 | `theorem` | [Prime.isRadical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/prime-isradical--bc7a5fb9dae900632686086e.md) | 106 | `result-track:bc7a5fb9dae900632686086e364237d12d12aa2e6c3ed4be1de69ee5b0f7d0cf` |
| 15 | `theorem` | [zero_isRadical_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/zero-isradical-iff--288f563303c719a3725abccc.md) | 109 | `result-track:288f563303c719a3725abccc52da0f1edf32e14b144e4b3749fcfb4678cc4db6` |
| 16 | `theorem` | [isReduced_iff_pow_one_lt](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isreduced-iff-pow-one-lt--ce2aac6ec8b84090baabc5ea.md) | 113 | `result-track:ce2aac6ec8b84090baabc5eaee7c2a1dc2aa19012c1f395a4de5fe848ebe7e6a` |
| 17 | `theorem` | [IsRadical.of_dvd](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isradical-of-dvd--ed2fa126a5bbf5d92c29242d.md) | 117 | `result-track:ed2fa126a5bbf5d92c29242df887a5198785d92ab8373abfae1869c71ad2332e` |
| 18 | `theorem` | [add_pow_eq_zero_of_add_le_succ_of_pow_eq_zero](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/add-pow-eq-zero-of-add-le-succ-of-pow-eq-zero--94e432f825f50d4104e3ecee.md) | 129 | `result-track:94e432f825f50d4104e3eceeada93e27ac379209e753b66ad6edd8a445df6386` |
| 19 | `theorem` | [add_pow_add_eq_zero_of_pow_eq_zero](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/add-pow-add-eq-zero-of-pow-eq-zero--a607b3467e74f00354646007.md) | 141 | `result-track:a607b3467e74f00354646007cb0e2b4b363f321ef6c04a835db41b025e47a60a` |
| 20 | `theorem` | [isNilpotent_add](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-add--7828cb7b5c95ede15c6c7dac.md) | 146 | `result-track:7828cb7b5c95ede15c6c7dac5686688453d32c27fffb2ebed13f045980508291` |
| 21 | `lemma` | [isNilpotent_sum](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-sum--5b8b4867078488d295a41b3b.md) | 152 | `result-track:5b8b4867078488d295a41b3b02d4bfa97ea458c4d45ef35c25be6e5c1687d5f1` |
| 22 | `theorem` | [isNilpotent_finsum](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-finsum--900028171c91731ada634562.md) | 166 | `result-track:900028171c91731ada634562e28a2faeb371c2ad327ea4fe9128b8f910d2d0a6` |
| 23 | `lemma` | [isNilpotent_mul_left_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-mul-left-iff--df36b7e30a013db93bacf90e.md) | 175 | `result-track:df36b7e30a013db93bacf90ed041564e2b768974bc1a87c45e42b112553461d0` |
| 24 | `lemma` | [isNilpotent_mul_right_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-mul-right-iff--64b86f128f439c7f1779fcb1.md) | 182 | `result-track:64b86f128f439c7f1779fcb143e9e0f35964e0047b71320651bcdf4da686f784` |
| 25 | `theorem` | [isNilpotent_sub](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-sub--e057d801936fced0f9bde2eb.md) | 195 | `result-track:e057d801936fced0f9bde2eb871ca428f190f7ec701b1a4c404e3294537c9b03` |
| 26 | `lemma` | [isNilpotent_sum](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-sum--33f4aa3a19f42851531e8f47.md) | 210 | `result-track:33f4aa3a19f42851531e8f475759b55aa0d6db6dbc5288f53b8f94e48e62f58d` |
| 27 | `theorem` | [isNilpotent_finsum](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/isnilpotent-finsum--7c9dedf208d8976bffd923da.md) | 215 | `result-track:7c9dedf208d8976bffd923da38573b12f21b906236c0fdd9669e887894d692df` |
| 28 | `lemma` | [NoZeroSMulDivisors.isReduced](../../../../../mathematics/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/declarations/nozerosmuldivisors-isreduced--87312fc743c94a4d523f2ae4.md) | 222 | `result-track:87312fc743c94a4d523f2ae41edb6684d1383f4efb43459aee5f47244d348614` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
