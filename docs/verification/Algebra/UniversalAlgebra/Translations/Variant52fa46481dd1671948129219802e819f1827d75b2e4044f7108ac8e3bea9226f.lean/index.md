# Verification target: GRWTSK.Algebra.UniversalAlgebra.Translations.Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c6dde47372eadb19ae8f655d02727f8f86b8d82",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c6dde47372eadb19ae8f655d02727f8f86b8d82`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [terminatedAt_iff_s_terminatedAt](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/terminatedat-iff-s-terminatedat--92a6e08fd047c5b5c69f819a.md) | 33 | `result-track:92a6e08fd047c5b5c69f819a509e24d2f25cd6418490c58634dfe584f7308157` |
| 2 | `theorem` | [terminatedAt_iff_s_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/terminatedat-iff-s-none--fb6f100d3e155f34a589039a.md) | 35 | `result-track:fb6f100d3e155f34a589039a2eadf0a8160e193ddb272ecfd1dab2ed629190e0` |
| 3 | `theorem` | [partNum_none_iff_s_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/partnum-none-iff-s-none--edc29cef41d7bf6bef3e503d.md) | 37 | `result-track:edc29cef41d7bf6bef3e503d541772dcd15d7053cfd785a3c2624f41715272bd` |
| 4 | `theorem` | [terminatedAt_iff_partNum_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/terminatedat-iff-partnum-none--ce77cb5c0e6a123e157141b3.md) | 40 | `result-track:ce77cb5c0e6a123e157141b3bc08145c287665a56e8c8945e898ed775e8c0996` |
| 5 | `theorem` | [partDen_none_iff_s_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/partden-none-iff-s-none--bf8aba80ae4217dfd1d5be65.md) | 43 | `result-track:bf8aba80ae4217dfd1d5be658b8e5d9dfb1f66be57b220de390f225bab62c0a0` |
| 6 | `theorem` | [terminatedAt_iff_partDen_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/terminatedat-iff-partden-none--b50f0c8a89c9b5df1050fc6d.md) | 46 | `result-track:b50f0c8a89c9b5df1050fc6df06759ef30fea45f241c44b4c0d9fa6180419bc8` |
| 7 | `theorem` | [partNum_eq_s_a](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/partnum-eq-s-a--9d5c29d07ecead9fce03bf23.md) | 49 | `result-track:9d5c29d07ecead9fce03bf23b3b5ad33c0ce0fdb54e262a68ac9a7e9500170f1` |
| 8 | `theorem` | [partDen_eq_s_b](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/partden-eq-s-b--a5df0f5d18aec7538c3c6ae5.md) | 52 | `result-track:a5df0f5d18aec7538c3c6ae5a7ad9c429823b2351e3141f807a9298be1014202` |
| 9 | `theorem` | [exists_s_a_of_partNum](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/exists-s-a-of-partnum--73b325dcb4a9cdf264b37b9c.md) | 55 | `result-track:73b325dcb4a9cdf264b37b9c87e7e4cbd6bbc7f966d26d40c8235cbd85c4335d` |
| 10 | `theorem` | [exists_s_b_of_partDen](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/exists-s-b-of-partden--f525ec62797b8b14bdd18dfd.md) | 59 | `result-track:f525ec62797b8b14bdd18dfd725b16c9b131218746c453056466471f774e5367` |
| 11 | `theorem` | [nth_cont_eq_succ_nth_contAux](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/nth-cont-eq-succ-nth-contaux--192083443751707a589b679e.md) | 78 | `result-track:192083443751707a589b679ea52327bd38b9982e5c3e4b2f389ae208e9b8467b` |
| 12 | `theorem` | [num_eq_conts_a](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/num-eq-conts-a--7675cf8ddc4669585ccc3170.md) | 81 | `result-track:7675cf8ddc4669585ccc317001694210304097606c2bf0fecc77b006578c0cd2` |
| 13 | `theorem` | [den_eq_conts_b](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/den-eq-conts-b--c111dcddf0412dcb2e79c2df.md) | 84 | `result-track:c111dcddf0412dcb2e79c2dfe82db6fb120d3958710b937eb4b2f58343ada89d` |
| 14 | `theorem` | [conv_eq_num_div_den](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/conv-eq-num-div-den--2a9167cc99fc697c04252b5b.md) | 87 | `result-track:2a9167cc99fc697c04252b5b7d631edbca7453a280cf51573457098507edfae6` |
| 15 | `theorem` | [conv_eq_conts_a_div_conts_b](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/conv-eq-conts-a-div-conts-b--3dca2c6f720be06ea61fb3c7.md) | 90 | `result-track:3dca2c6f720be06ea61fb3c72987a0c86f8d99891d16e037718ab87499cc9582` |
| 16 | `theorem` | [exists_conts_a_of_num](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/exists-conts-a-of-num--48fd4e481b5bd256dc0353fc.md) | 94 | `result-track:48fd4e481b5bd256dc0353fc3bcf337f62efea33a4672c84b0cd0577ed24c4bb` |
| 17 | `theorem` | [exists_conts_b_of_den](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/exists-conts-b-of-den--46a830d87aa8bb6a075d2052.md) | 97 | `result-track:46a830d87aa8bb6a075d205205b893efdbf6b4dd06a638b864970ca3c7288776` |
| 18 | `theorem` | [zeroth_contAux_eq_one_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/zeroth-contaux-eq-one-zero--d80146de9caa8162e0091c7d.md) | 101 | `result-track:d80146de9caa8162e0091c7ddec4a4fe5dda5c3b20f6e3e6a97cd8fe62930087` |
| 19 | `theorem` | [first_contAux_eq_h_one](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/first-contaux-eq-h-one--060b38ef27b18c721fbb29ae.md) | 105 | `result-track:060b38ef27b18c721fbb29aeed9f57e553e0bbce394bd21142f69ae760bf9598` |
| 20 | `theorem` | [zeroth_cont_eq_h_one](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/zeroth-cont-eq-h-one--d6be8d1dfb53ae2c62a5989d.md) | 109 | `result-track:d6be8d1dfb53ae2c62a5989daf6d99f54a962093339f03ea779ff2315fbaf3c4` |
| 21 | `theorem` | [zeroth_num_eq_h](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/zeroth-num-eq-h--c7ac286f3d52b0baee7ff95e.md) | 113 | `result-track:c7ac286f3d52b0baee7ff95e6ddef7e9bbec55e2586e191cda789ab7915fa034` |
| 22 | `theorem` | [zeroth_den_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/zeroth-den-eq-one--b6605fc8afb7b821b31f5611.md) | 117 | `result-track:b6605fc8afb7b821b31f561152bcb6e119cc618696867bddf7c6dcf4e2654ffb` |
| 23 | `theorem` | [zeroth_conv_eq_h](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/zeroth-conv-eq-h--8c5ef6121e92f0951f084855.md) | 121 | `result-track:8c5ef6121e92f0951f08485565eeaecb9a1c2f6fc5d60c3d72019950d82276e5` |
| 24 | `theorem` | [second_contAux_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/second-contaux-eq--85a83a7badda842119697b15.md) | 124 | `result-track:85a83a7badda842119697b153a320ff69afa5de16290daeb985c786ea6088c2b` |
| 25 | `theorem` | [first_cont_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/first-cont-eq--51ceb90d01e85b085430bf65.md) | 128 | `result-track:51ceb90d01e85b085430bf65cb03139595ec40ab4c93ba3b7a8a6ea25d0650a9` |
| 26 | `theorem` | [first_num_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/first-num-eq--811cd532b86a57cf09a32550.md) | 132 | `result-track:811cd532b86a57cf09a32550d51d05df0b7cb60d4f865d7f6c24fbfa56c97426` |
| 27 | `theorem` | [first_den_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/first-den-eq--73503a4df12828932e798755.md) | 135 | `result-track:73503a4df12828932e798755977e708b05ecbe3ea5309e6a4f1f766b660f7447` |
| 28 | `theorem` | [zeroth_conv'Aux_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/zeroth-conv-aux-eq-zero--4efe9e85e13672f4f4aa6faf.md) | 139 | `result-track:4efe9e85e13672f4f4aa6faffe168605a8a962e18fe431b20803bd092f24d22d` |
| 29 | `theorem` | [zeroth_conv'_eq_h](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/zeroth-conv-eq-h--e4436cb7bc1755d9b8542a45.md) | 144 | `result-track:e4436cb7bc1755d9b8542a45f30e88d752a99429219afd3abbce1d52dbf1f2f5` |
| 30 | `theorem` | [convs'Aux_succ_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/convs-aux-succ-none--99f8d8cc17735df3176e57f6.md) | 146 | `result-track:99f8d8cc17735df3176e57f614087d4673f8215e7a5dd21c970f0658fe903e5c` |
| 31 | `theorem` | [convs'Aux_succ_some](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f.lean/declarations/convs-aux-succ-some--85a24b9b476b800d3b489c69.md) | 149 | `result-track:85a24b9b476b800d3b489c692a4230b8cd9dfad3cb5db5829d6534eabd0d0e7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
