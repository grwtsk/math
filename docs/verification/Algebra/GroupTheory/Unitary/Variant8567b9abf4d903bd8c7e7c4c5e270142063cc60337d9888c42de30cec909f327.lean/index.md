# Verification target: GRWTSK.Algebra.GroupTheory.Unitary.Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6215a6484f4c5b24c3d5502860a3a6169706141",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6215a6484f4c5b24c3d5502860a3a6169706141`.

Source path: `GRWTSK/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitary](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/unitary--4a9e167571ba8b73a58ff5c0.md) | 29 | `declaration-track:4a9e167571ba8b73a58ff5c05526c7a79583167b3310eb0ea902b85168bf1fac` |
| 2 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/mem-iff--9daec90513901dc6d9b66a3e.md) | 52 | `result-track:9daec90513901dc6d9b66a3e8ea3f8a97c5b945c6802aeed20bf5dae301ad24e` |
| 3 | `theorem` | [star_mul_self_of_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/star-mul-self-of-mem--b53411f07c4c57383a6dea1d.md) | 57 | `result-track:b53411f07c4c57383a6dea1ddc95a3d09e334db1a135323607bff02b5b5cf7d6` |
| 4 | `theorem` | [mul_star_self_of_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/mul-star-self-of-mem--b01854c6f12dcdeb98755cca.md) | 62 | `result-track:b01854c6f12dcdeb98755ccafd354793864fee326db2d9e7cccef16385f0829b` |
| 5 | `theorem` | [star_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/star-mem--ab935e7e811b709ce316745a.md) | 66 | `result-track:ab935e7e811b709ce316745a936920858d6af23a6dab54cf1cfd4c027476e169` |
| 6 | `theorem` | [star_mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/star-mem-iff--6816998ed29b24778f23265c.md) | 71 | `result-track:6816998ed29b24778f23265c9a6d714adc50c225e03ce1b40414e42af57ba4c3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/instance--6cc6865965a3d55b90c197a0.md) | 75 | `declaration-track:6cc6865965a3d55b90c197a059ec7256b8fcc8689e82db8e90072a167c19f145` |
| 8 | `theorem` | [coe_star](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/coe-star--51c20a1dba452d22b43b46de.md) | 79 | `result-track:51c20a1dba452d22b43b46de8daa5e91ead4b523cbe77c2e965bbcdaff31e220` |
| 9 | `theorem` | [coe_star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/coe-star-mul-self--c118a1c453e0d23f2d0f200b.md) | 83 | `result-track:c118a1c453e0d23f2d0f200b4ca206f2716532cb9a6276d9137d15efec0643a9` |
| 10 | `theorem` | [coe_mul_star_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/coe-mul-star-self--50d3e104c8895166318fab11.md) | 87 | `result-track:50d3e104c8895166318fab111e5efd4c1b759945fb972ae10b7bfecc4c33ebfe` |
| 11 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/star-mul-self--cc37901f43707493be85a17a.md) | 92 | `result-track:cc37901f43707493be85a17a864d78e0043922bcac5bddb0b3aa9e06888267e8` |
| 12 | `theorem` | [mul_star_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/mul-star-self--1106d4428e088b58e6eaa06d.md) | 97 | `result-track:1106d4428e088b58e6eaa06d589b7cf08a630b3304d12fd4d871cd386f298ed9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/instance--fb4e86f236cb9bfb815c2ead.md) | 101 | `declaration-track:fb4e86f236cb9bfb815c2ead918cb2f6e5ce236e7fd0f6ddf7b02cbe84696b2d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/instance--afb423648f3f3a0e818eb22c.md) | 106 | `declaration-track:afb423648f3f3a0e818eb22c0b4c47a1c924f02836ca81ef54621b308a905e0c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/instance--983aab2d3b4cfa9192d6882e.md) | 112 | `declaration-track:983aab2d3b4cfa9192d6882e738b5fdf07c32d8985a0ff949bd2d032fe5263cd` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/instance--bbb7a01cd501651d87d064b2.md) | 118 | `declaration-track:bbb7a01cd501651d87d064b2a83eb59f087d56caa99da2756c0321d2f014295f` |
| 17 | `theorem` | [star_eq_inv](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/star-eq-inv--2c9cd6b96a80a07f2f605abb.md) | 121 | `result-track:2c9cd6b96a80a07f2f605abbaa6040f3df992ed84592552bb50217c1d9da5a2e` |
| 18 | `theorem` | [star_eq_inv'](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/star-eq-inv--4fd45e9671f220ed811d10f0.md) | 125 | `result-track:4fd45e9671f220ed811d10f01c1a0e3fac19ccab8142d580e180506d265591f4` |
| 19 | `def` | [toUnits](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/tounits--9404e89f39df9724053edc57.md) | 131 | `declaration-track:9404e89f39df9724053edc579d6439c88ddea2542efa8a9cc2e9f9f36710dec1` |
| 20 | `theorem` | [to_units_injective](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/to-units-injective--2e4a15daab90f808a721aaa2.md) | 138 | `result-track:2e4a15daab90f808a721aaa23250a845618d00af637a2a6562f06af05b3e1cc1` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/instance--3579b78930755d8d8a03ebea.md) | 148 | `declaration-track:3579b78930755d8d8a03ebea1f340ea4790a62e566a9fe75910db01c8bfe2422` |
| 22 | `theorem` | [mem_iff_star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/mem-iff-star-mul-self--f46cfef84447bf5dab1b00c6.md) | 151 | `result-track:f46cfef84447bf5dab1b00c65fbb6f3174cd62cc405a1d46409cf76d37a14cbf` |
| 23 | `theorem` | [mem_iff_self_mul_star](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/mem-iff-self-mul-star--48912539f265aed1026fa99a.md) | 155 | `result-track:48912539f265aed1026fa99aac0af564d2ce48aaaf00a17ced6224f236e6af54` |
| 24 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/coe-inv--362e05f60ea7e67d5bd00b81.md) | 166 | `result-track:362e05f60ea7e67d5bd00b81e9224528401f86c2e7025c240030c4d76632f465` |
| 25 | `theorem` | [coe_div](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/coe-div--34dce71682f1d666fb97b5dd.md) | 171 | `result-track:34dce71682f1d666fb97b5dd23aa712fc007ec64bd13a721c7da40d97e38bf49` |
| 26 | `theorem` | [coe_zpow](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/coe-zpow--f1d277c3860220bad75f04f2.md) | 176 | `result-track:f1d277c3860220bad75f04f2290263266b61a517e8151bfaa0ed4f11fa2c76ff` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/instance--6de195fbc15cecfc964fb1d5.md) | 188 | `declaration-track:6de195fbc15cecfc964fb1d5d5f2d1b624b2ffb1b4dfc7aae9f61c09cd72fcf9` |
| 28 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/coe-neg--8543343b28081f7baffc95eb.md) | 193 | `result-track:8543343b28081f7baffc95ebefe6084d56acc69ade4545c80802213c8690efc1` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/declarations/instance--47022e93f59a40eec3acf70c.md) | 197 | `declaration-track:47022e93f59a40eec3acf70cd4c6f2ea333e852663df6d0b1ce1d6e2a3a45f3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
