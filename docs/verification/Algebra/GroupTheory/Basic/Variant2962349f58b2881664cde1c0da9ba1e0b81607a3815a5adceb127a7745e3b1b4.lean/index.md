# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe4d2bb207ba36bfc083798f726b9bc91ae35cf0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe4d2bb207ba36bfc083798f726b9bc91ae35cf0`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/instance--c14fff6adb620cb91f97d607.md) | 48 | `declaration-track:c14fff6adb620cb91f97d6076b1fe6ea71de32c4cb7dbab6bc0da6c1292997e3` |
| 2 | `theorem` | [Dvd.intro](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-intro--965752c53ddb2317599b3c5f.md) | 53 | `result-track:965752c53ddb2317599b3c5f122c1ecc0b0e023a616616b5b4cb38e266521c97` |
| 3 | `theorem` | [exists_eq_mul_right_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/exists-eq-mul-right-of-dvd--0b9aeee5a8ca6649c2435dc8.md) | 58 | `result-track:0b9aeee5a8ca6649c2435dc8575f958cb8966a959ccd4d66cae0ff186660cd39` |
| 4 | `theorem` | [dvd_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-def--cd3f88e5237429841f11fe32.md) | 61 | `result-track:cd3f88e5237429841f11fe321311a141756bd5a27e9b66d940ca007125565a66` |
| 5 | `theorem` | [Dvd.elim](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-elim--25afd7f4d66a043c74e1e4b8.md) | 66 | `result-track:25afd7f4d66a043c74e1e4b82970cd7af019cb0be49f33d3e8cda985133bffbe` |
| 6 | `theorem` | [dvd_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-trans--0923284d7f58515a6e5aa71b.md) | 72 | `result-track:0923284d7f58515a6e5aa71b26f80ac46c590c581a05ba7092a9bd8e9245de5f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/instance--871e3d27b7acc30029c7372a.md) | 78 | `declaration-track:871e3d27b7acc30029c7372a8744550cae9021a0b34916fee4f309a0c403826b` |
| 8 | `theorem` | [dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-mul-right--63c28faf7d92015c8c2d9336.md) | 82 | `result-track:63c28faf7d92015c8c2d9336ee5ce5469d9470173d3787a343bcf8a1606764a0` |
| 9 | `theorem` | [dvd_mul_of_dvd_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-mul-of-dvd-left--8f5d4d07b701242b797ab6cb.md) | 85 | `result-track:8f5d4d07b701242b797ab6cbdbbbd33530e39e10d58056fef4eeebd7ffb41026` |
| 10 | `theorem` | [dvd_of_mul_right_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-of-mul-right-dvd--f3e2672cdf9d6f63d18e5d96.md) | 90 | `result-track:f3e2672cdf9d6f63d18e5d96a299b9ce1b1a27bfe2cf0b7cfdf753b425f30bdc` |
| 11 | `def` | [IsPrimal](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/isprimal--1c852468ee925280fdb2bb8c.md) | 95 | `declaration-track:1c852468ee925280fdb2bb8ce1a583da375070ed6a21b3799e00fec70d974c14` |
| 12 | `class` | [DecompositionMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/decompositionmonoid--b98417bde6a079a4218407d8.md) | 101 | `declaration-track:b98417bde6a079a4218407d82cfc2045d7c58c13dfa25bbddd7f796d31808881` |
| 13 | `theorem` | [exists_dvd_and_dvd_of_dvd_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/exists-dvd-and-dvd-of-dvd-mul--88aaea6d6084890dcb5de0dd.md) | 104 | `result-track:88aaea6d6084890dcb5de0ddce5c0fd907992662c20a2eef81aa191a87bd9ad5` |
| 14 | `theorem` | [dvd_refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-refl--30eecf2382089306023adc5a.md) | 113 | `result-track:30eecf2382089306023adc5ac677cd434c958a8b75a4db4badfafe33876407cb` |
| 15 | `theorem` | [dvd_rfl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-rfl--e60d432dbea8bc05c712430d.md) | 116 | `result-track:e60d432dbea8bc05c712430d32b383c7b4c97e1b85e055d0b8c06be6bab8cb9b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/instance--399c0597c7e8d838351720f5.md) | 118 | `declaration-track:399c0597c7e8d838351720f524b8de55969ae36dc5b288efe2a2c6750872012c` |
| 17 | `theorem` | [one_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/one-dvd--7731d6f2edfdf501c641eb96.md) | 121 | `result-track:7731d6f2edfdf501c641eb9696e1abf0eb26d3d265c38291b1b7aefee44a4021` |
| 18 | `theorem` | [dvd_of_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-of-eq--8f4a6d1aa7074dd772485333.md) | 124 | `result-track:8f4a6d1aa7074dd7724853333d096d3305fbe155a9a9a078724a542bb11799d6` |
| 19 | `lemma` | [pow_dvd_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/pow-dvd-pow--8a6710f28313ac64bba3c2e6.md) | 128 | `result-track:8a6710f28313ac64bba3c2e686221edf4289c37220579ea813d6567ae20e5cd3` |
| 20 | `lemma` | [dvd_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-pow--3793bf5b54f1121190b56d8c.md) | 131 | `result-track:3793bf5b54f1121190b56d8c89da9e77ac74265c6ed8149d0d62393e8de66062` |
| 21 | `lemma` | [dvd_pow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-pow-self--f7a3d03df0011972e6d00f45.md) | 137 | `result-track:f7a3d03df0011972e6d00f45aacf119365431da68eafae215c2dddad768b3e80` |
| 22 | `theorem` | [mul_dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/mul-dvd-mul-left--bd7b35a2364c4c1b7ee3823e.md) | 139 | `result-track:bd7b35a2364c4c1b7ee3823e6963119d4fbf81c2dcae54dceb774158bea971d8` |
| 23 | `theorem` | [Dvd.intro_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-intro-left--8da69efcccdc6b7258d532c6.md) | 150 | `result-track:8da69efcccdc6b7258d532c667767b7fa79d951ba10ae7d0843be1a90a0c913b` |
| 24 | `theorem` | [exists_eq_mul_left_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/exists-eq-mul-left-of-dvd--d489cd7439a14ed54bce56d6.md) | 155 | `result-track:d489cd7439a14ed54bce56d60fa57f42d4b377c95fd4ed93abd25c1c4c2cb71f` |
| 25 | `theorem` | [dvd_iff_exists_eq_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-iff-exists-eq-mul-left--524901d8b7017c0d775f9d4d.md) | 158 | `result-track:524901d8b7017c0d775f9d4dab6a18145cb072a072812726556e7186c9c0b5ea` |
| 26 | `theorem` | [Dvd.elim_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-elim-left--eaa9251074111619765dee88.md) | 163 | `result-track:eaa9251074111619765dee886ed711e58553f783eee35f950c26ecbb2ae297f4` |
| 27 | `theorem` | [dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-mul-left--6b470bec1441d0c08def21ff.md) | 167 | `result-track:6b470bec1441d0c08def21ff969e4dbc06d89860a46d1b760e3cc4ec2bc4a951` |
| 28 | `theorem` | [dvd_mul_of_dvd_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-mul-of-dvd-right--db945d529a016329278582f2.md) | 170 | `result-track:db945d529a016329278582f28478125a31963988863e8122fa5a72eaf2cb2a24` |
| 29 | `theorem` | [mul_dvd_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/mul-dvd-mul--bf4ce0a6e542ea95bbab0046.md) | 177 | `result-track:bf4ce0a6e542ea95bbab0046c70df739202543a0dca7415f5d29f781086c42c5` |
| 30 | `theorem` | [dvd_of_mul_left_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-of-mul-left-dvd--68e0b6977de6f2f03410a38a.md) | 180 | `result-track:68e0b6977de6f2f03410a38ad8e245f37d429419fb87beae42895a57722fa0a3` |
| 31 | `theorem` | [dvd_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/dvd-mul--3d426806cef7809787eb6bf9.md) | 183 | `result-track:3d426806cef7809787eb6bf900056c767020557d6184930ae2bd8aff96aafc1d` |
| 32 | `theorem` | [mul_dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/mul-dvd-mul-right--da9ffcf1c7e1bb6916c031bc.md) | 195 | `result-track:da9ffcf1c7e1bb6916c031bc4016ba625c5adf95f24aee4dc758231b369245eb` |
| 33 | `theorem` | [pow_dvd_pow_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2962349f58b2881664cde1c0da9ba1e0b81607a3815a5adceb127a7745e3b1b4.lean/declarations/pow-dvd-pow-of-dvd--1605ffcbb6de244fcb8aad7c.md) | 198 | `result-track:1605ffcbb6de244fcb8aad7c2290ca44dd02bcb58dce9835381f1a5527f4f095` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
