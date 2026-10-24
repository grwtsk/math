# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "937a34af09a6daef68ae1a23c86737ca44251b9c",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `937a34af09a6daef68ae1a23c86737ca44251b9c`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/withone--57cfcf6198d34c9601953735.md) | 37 | `declaration-track:57cfcf6198d34c960195373593615daad8a8f3677850682c85ef55abb07a4261` |
| 2 | `instance` | [WithZero.instRepr](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/withzero-instrepr--98304e126cc16f3dd3428700.md) | 40 | `declaration-track:98304e126cc16f3dd342870062318693d0de8b2d1363bc4f1fb2584d2f1d5871` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instance--05532ce2850a585572e12fba.md) | 49 | `declaration-track:05532ce2850a585572e12fbae287f975ee8b2b74acdaefcc6fcfe9cabd36ee73` |
| 4 | `instance` | [instMonad](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instmonad--94db070d7b83786aea76e2ee.md) | 56 | `declaration-track:94db070d7b83786aea76e2eec00b33b02fb350ae734d3a2889775fc098665f59` |
| 5 | `instance` | [instOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instone--592571920ea799099aca5426.md) | 60 | `declaration-track:592571920ea799099aca542694916c6e0b8909915be85280d779302bd70524d5` |
| 6 | `instance` | [instMul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instmul--611e8b11d85fbe978fc30a1b.md) | 64 | `declaration-track:611e8b11d85fbe978fc30a1bb2ed0fd793d3b10f587b71b8e782d42e5dcedd7d` |
| 7 | `instance` | [instInv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instinv--4e31a8676d1026869f83812b.md) | 68 | `declaration-track:4e31a8676d1026869f83812bfda86691c1ce70d57c77bc1c4b6ccac103eef036` |
| 8 | `instance` | [instInvOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instinvoneclass--1b56cf0fa549b6b3e4f55e11.md) | 72 | `declaration-track:1b56cf0fa549b6b3e4f55e118ea84240347624ef4d33a83b5c1dcaa57db76e5b` |
| 9 | `instance` | [inhabited](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/inhabited--0d5a14bb29eb6ce787e3b1eb.md) | 76 | `declaration-track:0d5a14bb29eb6ce787e3b1eba9473598638c411eab7e0178d622c40a175a16a1` |
| 10 | `instance` | [instNontrivial](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instnontrivial--48794f1df06eaf69ea09b63c.md) | 80 | `declaration-track:48794f1df06eaf69ea09b63cd1d86d5180e9314abfd3fdc13f699e83a3296f29` |
| 11 | `def` | [coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/coe--69e5d4028953d974fca36bf9.md) | 85 | `declaration-track:69e5d4028953d974fca36bf98db39c0314968902e0ef6ee08f5204e53cd72254` |
| 12 | `instance` | [instCoeTC](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instcoetc--d5ca18385641f05c484dcdd0.md) | 89 | `declaration-track:d5ca18385641f05c484dcdd0175f556efe89432dc0f82bc77ee475b8c8f3f338` |
| 13 | `def` | [_root_.WithZero.recZeroCoe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/root-withzero-reczerocoe--c3c56e3650db36d1673f535d.md) | 94 | `declaration-track:c3c56e3650db36d1673f535d0a9f2ee180da1c7470e3752568f156beccee2a56` |
| 14 | `def` | [recOneCoe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/reconecoe--593b8840c8d59960911908ed.md) | 101 | `declaration-track:593b8840c8d59960911908eddf8956a6576305537a0885f6c033704608b4f8a0` |
| 15 | `lemma` | [recOneCoe_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/reconecoe-one--66fa36c9dc33423e6723c888.md) | 107 | `result-track:66fa36c9dc33423e6723c888ec320af0df533ce0cde41069dbe616f1b617f91e` |
| 16 | `lemma` | [recOneCoe_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/reconecoe-coe--32c2925c4b81dc3607fbf175.md) | 112 | `result-track:32c2925c4b81dc3607fbf175037d1f7265662ebb2bfa5c983fd66324e3c7cb64` |
| 17 | `def` | [unone](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/unone--79ab7308e91ce5f5330fd2f1.md) | 119 | `declaration-track:79ab7308e91ce5f5330fd2f130658798493902974447e430975e6e708ca39f3b` |
| 18 | `theorem` | [unone_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/unone-coe--dcd028e621b6713c97950f6e.md) | 122 | `result-track:dcd028e621b6713c97950f6e7939c4711ec61585af24c966cc7df3e3909d8761` |
| 19 | `lemma` | [coe_unone](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/coe-unone--338b319244c55a767bb490b8.md) | 126 | `result-track:338b319244c55a767bb490b83e8eec46f37919a82ebcb08ae71427256e1319b2` |
| 20 | `theorem` | [coe_ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/coe-ne-one--12967d1ce27976719bf88ae5.md) | 130 | `result-track:12967d1ce27976719bf88ae5517c1447971b0dce12e864d5b0a8c3a585d662ba` |
| 21 | `theorem` | [one_ne_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/one-ne-coe--d33e1d49935e48f8b0adcbec.md) | 134 | `result-track:d33e1d49935e48f8b0adcbec13616c849fb2a6254e76b775538d29b018f65e0a` |
| 22 | `theorem` | [ne_one_iff_exists](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/ne-one-iff-exists--b68828bdb4b04e5a2173d58a.md) | 138 | `result-track:b68828bdb4b04e5a2173d58a698cd7b41ffb24b36805a495764223e6d9cf5acf` |
| 23 | `instance` | [instCanLift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instcanlift--555b912c71997c1484387aba.md) | 142 | `declaration-track:555b912c71997c1484387abadc31193a9f765a39d87fb3281306a84d5316896e` |
| 24 | `theorem` | [coe_inj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/coe-inj--95872f1da776dc429a441ab7.md) | 146 | `result-track:95872f1da776dc429a441ab7ceeff7242ef637e178b6a2734a293602aca129f8` |
| 25 | `theorem` | [cases_on](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/cases-on--d0cc9884ffdcb3d413be5dc0.md) | 150 | `result-track:d0cc9884ffdcb3d413be5dc036fd72b1e66d8416d658eaea526ddf2825cd9855` |
| 26 | `instance` | [instMulOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instmuloneclass--0f4ce91cd3c3812cff581767.md) | 154 | `declaration-track:0f4ce91cd3c3812cff581767f04691fc084dfadb48791f6bcbf676b6d74e53ed` |
| 27 | `lemma` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/coe-mul--6995457dacc8c4c49b60bdda.md) | 161 | `result-track:6995457dacc8c4c49b60bddab5afa92e6902cff4051a217b7f7cba81e450de50` |
| 28 | `instance` | [instMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instmonoid--69ae015270fa31221823f4f8.md) | 164 | `declaration-track:69ae015270fa31221823f4f80ea42d0cf67c106246698a3d170975cbefd640c8` |
| 29 | `instance` | [instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/instcommmonoid--2815d138d3aa121827795647.md) | 173 | `declaration-track:2815d138d3aa12182779564704c013afea2c6b1b4fb44a37168b049483396005` |
| 30 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6698a7874867633cf8d10265cd71ed5a99e5bf4e2c262823017ca3028b14cf2a.lean/declarations/coe-inv--fbe656a3b11647fcec31da62.md) | 181 | `result-track:fbe656a3b11647fcec31da620fa05f257d6badd9b84a540dbfb6460e034f5e7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
