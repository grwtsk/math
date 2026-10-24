# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5c42f4f2932c2cabefd6f852be48ae569fd3c2a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5c42f4f2932c2cabefd6f852be48ae569fd3c2a`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Irreducible.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prime](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/prime--a6e6c99f5443d018bdf6825f.md) | 47 | `declaration-track:a6e6c99f5443d018bdf6825f58b369e61aa8bc72595477dd3acffc78f125d930` |
| 2 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/ne-zero--fc979e6ef36d55e528260588.md) | 55 | `result-track:fc979e6ef36d55e52826058877c989d38c1a332994a028659214b584014e2c73` |
| 3 | `theorem` | [not_unit](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/not-unit--1af1335e1f99eef85c1fdf14.md) | 58 | `result-track:1af1335e1f99eef85c1fdf14d227ef4fbb18010f5e036eaf6d1ea4ad81f52197` |
| 4 | `theorem` | [not_dvd_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/not-dvd-one--40d86e1d705ee208909e9c22.md) | 61 | `result-track:40d86e1d705ee208909e9c2221d7e36ef6cd3ad3379bb5026f4c8820054fc626` |
| 5 | `theorem` | [ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/ne-one--6e508ae9286aa7b35cd6fac1.md) | 64 | `result-track:6e508ae9286aa7b35cd6fac11f07f63d987a39088eb47c39cd399ababbe1f9f0` |
| 6 | `theorem` | [dvd_or_dvd](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/dvd-or-dvd--2071dee1ca0d8341204069ec.md) | 66 | `result-track:2071dee1ca0d8341204069ec351f5b0c3b4d5ec8c44dfcffa7fc932a6b294c20` |
| 7 | `theorem` | [dvd_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/dvd-mul--78df8d8cb62f98c4927a3717.md) | 69 | `result-track:78df8d8cb62f98c4927a371731d814131cd2b1aa1749f015a10d6d3cf942866b` |
| 8 | `theorem` | [isPrimal](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/isprimal--6c3e1150a3ac2c1f1f736520.md) | 72 | `result-track:6c3e1150a3ac2c1f1f7365208d8c0f56bc92e89916f41db827f8dbde6601a021` |
| 9 | `theorem` | [not_dvd_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/not-dvd-mul--8c0c0ef8d18aa53b929ec28e.md) | 75 | `result-track:8c0c0ef8d18aa53b929ec28e98ceca206ea274c3327c59030e758687977b1223` |
| 10 | `theorem` | [dvd_of_dvd_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/dvd-of-dvd-pow--67f790e0f05c1232c8389a9d.md) | 78 | `result-track:67f790e0f05c1232c8389a9d8a5d26227dbbc907e9c645ca8a84d2e561ab79ec` |
| 11 | `theorem` | [dvd_pow_iff_dvd](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/dvd-pow-iff-dvd--a1b89d4b525407b0ed4d315b.md) | 91 | `result-track:a1b89d4b525407b0ed4d315b11da549d7325a8f30f33d819e252f1a40042d000` |
| 12 | `theorem` | [not_prime_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/not-prime-zero--e03cd0aa598574248de46c3b.md) | 97 | `result-track:e03cd0aa598574248de46c3b4dff5cdc5a0d262ad18db0425ffa3737d4c046aa` |
| 13 | `theorem` | [not_prime_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/not-prime-one--5b7ccea77f8846fd8b2fa2d4.md) | 100 | `result-track:5b7ccea77f8846fd8b2fa2d4fa69967123a79092668215de6344f5b9c416423f` |
| 14 | `theorem` | [Irreducible.not_dvd_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/irreducible-not-dvd-one--a66f36e427c0e969a5d52b85.md) | 104 | `result-track:a66f36e427c0e969a5d52b85115299bd92bcd6534d17b3dfc98cd032697a1d7a` |
| 15 | `theorem` | [not_irreducible_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/not-irreducible-zero--a66292a8e1aaef363ece98ed.md) | 108 | `result-track:a66292a8e1aaef363ece98ed86c36022a9dd65e58236b021619ea7b94a89e347` |
| 16 | `theorem` | [Irreducible.ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/irreducible-ne-zero--90f01f0cdb53d693b2b1ecc8.md) | 113 | `result-track:90f01f0cdb53d693b2b1ecc890bd549558e5ecb6bfbff181d0ce1958dfcdffef` |
| 17 | `theorem` | [Irreducible.dvd_symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/irreducible-dvd-symm--cf1855bee8fec5f7ba721644.md) | 117 | `result-track:cf1855bee8fec5f7ba721644b38397a1e93aecf1bd8451f26b179677a9e1e3df` |
| 18 | `theorem` | [Irreducible.dvd_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/irreducible-dvd-comm--996716bbfb0d4b2a95eedb85.md) | 122 | `result-track:996716bbfb0d4b2a95eedb853a009e58bb1c0f593f977598b24cf8ecd3f45037` |
| 19 | `theorem` | [Irreducible.prime_of_isPrimal](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/irreducible-prime-of-isprimal--8f7a25ce31060540bdba6757.md) | 130 | `result-track:8f7a25ce31060540bdba6757c97f6c3120d06e055cfdf463a840a0141ef6af72` |
| 20 | `theorem` | [Irreducible.prime](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/irreducible-prime--ce01c033575195e00c2dc929.md) | 136 | `result-track:ce01c033575195e00c2dc9298c11d6f5decfa56ba774a9e175ffeef12b688e9b` |
| 21 | `theorem` | [Prime.irreducible](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/prime-irreducible--2376dbec3f26116ee7406acc.md) | 145 | `result-track:2376dbec3f26116ee7406acc385591aa28e14ffbc84fccb26012b96d2f1f93ac` |
| 22 | `theorem` | [irreducible_iff_prime](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted7974ac736e2084b8cfc4df68aeaad70a746eb244d734e5ffd2a5a37b924b6b.lean/declarations/irreducible-iff-prime--bebcac1016aa98398fa429bb.md) | 154 | `result-track:bebcac1016aa98398fa429bb652f1a7b5e5e397d962054ab4cb1f90b2176dd31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
