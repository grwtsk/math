# Verification target: GRWTSK.Algebra.GroupTheory.Ring.Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9f802372208fb86bae82fa31f0bd5c0497c21da",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9f802372208fb86bae82fa31f0bd5c0497c21da`.

Source path: `GRWTSK/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/instance--ab89411734fc62701d74ce8a.md) | 30 | `declaration-track:ab89411734fc62701d74ce8a7034b9ab71e78aec79f2724697ec7d627acc0591` |
| 2 | `theorem` | [coe_add](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/coe-add--cdcfe4eeb734c0504b6a53f0.md) | 34 | `result-track:cdcfe4eeb734c0504b6a53f0c93304239a6a742521d6d53b155c61585b3aa285` |
| 3 | `instance` | [addSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/addsemigroup--fe0be4bf127445ae849bdde5.md) | 38 | `declaration-track:fe0be4bf127445ae849bdde537b7494eec74227adfda9422c5e0de697d3543dc` |
| 4 | `instance` | [addCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/addcommsemigroup--7fc2decf9e7d30ec025c4d0a.md) | 42 | `declaration-track:7fc2decf9e7d30ec025c4d0a7f8980524b3a83947727314875526a1632ece2f8` |
| 5 | `instance` | [addLeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/addleftcancelsemigroup--51902e67bdf5c864acd6c31e.md) | 47 | `declaration-track:51902e67bdf5c864acd6c31e294f007008147dd2dc2d8dcf2da1cbf5a676f4f5` |
| 6 | `instance` | [addRightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/addrightcancelsemigroup--3f43fa2bc1895c04eeeef62c.md) | 52 | `declaration-track:3f43fa2bc1895c04eeeef62c47afd237c20c6150d04c61dfc32b6babb3ec9811` |
| 7 | `instance` | [covariantClass_add_lt](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/covariantclass-add-lt--bae176983aca6da7b08ca81b.md) | 57 | `declaration-track:bae176983aca6da7b08ca81bbe3462ff084034fe0a019b5dc41db4300b1780b0` |
| 8 | `instance` | [covariantClass_swap_add_lt](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/covariantclass-swap-add-lt--c404dac7f34a9fc1f293d14c.md) | 62 | `declaration-track:c404dac7f34a9fc1f293d14ccfea766e075d88e7811ecf7dea08800daced554f` |
| 9 | `instance` | [contravariantClass_add_lt](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/contravariantclass-add-lt--7ffdd9647fb506081f4554ac.md) | 67 | `declaration-track:7ffdd9647fb506081f4554ac076620149626e72b84b9547b34ac3c9e176d1991` |
| 10 | `instance` | [contravariantClass_swap_add_lt](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/contravariantclass-swap-add-lt--addbdef9ea4725f2aec81f42.md) | 72 | `declaration-track:addbdef9ea4725f2aec81f4254542c7ee56b4b62b6fb1ea38c03439cac14adc1` |
| 11 | `instance` | [contravariantClass_add_le](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/contravariantclass-add-le--28c4529a083ec317a5f06f02.md) | 77 | `declaration-track:28c4529a083ec317a5f06f021801248d3ef4fe4b41995bebee51cf365434096e` |
| 12 | `instance` | [contravariantClass_swap_add_le](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/contravariantclass-swap-add-le--09656ee42e4bb2c34a263716.md) | 82 | `declaration-track:09656ee42e4bb2c34a263716e678607e86af7b5eae04c19afbd271d96acbe521` |
| 13 | `instance` | [covariantClass_add_le](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/covariantclass-add-le--bf144bb7f8a8e644ba856561.md) | 89 | `declaration-track:bf144bb7f8a8e644ba856561b0dc172aacef0a8bd6414ddf82128ea286aec04e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/instance--44622361f9520ac2d73d72c7.md) | 99 | `declaration-track:44622361f9520ac2d73d72c73eae11b95a1291539483e92029e788f2153b3d3d` |
| 15 | `theorem` | [val_mul](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/val-mul--ee9486b916c151c7679bad8f.md) | 103 | `result-track:ee9486b916c151c7679bad8ff06ac56c36065fd9ece0e088916b0ecf8a106ce0` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/instance--a2e75c36b455c10dfc4c8744.md) | 107 | `declaration-track:a2e75c36b455c10dfc4c8744d14866854ba815182e6341a743ba1a0263110ff4` |
| 17 | `theorem` | [val_pow](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/val-pow--9853b51674ca0ec6fb44b542.md) | 111 | `result-track:9853b51674ca0ec6fb44b542828d28cb622212f64f9ac095317c669ad063a6e6` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/instance--0afec9dd7db7933b148900f3.md) | 116 | `declaration-track:0afec9dd7db7933b148900f35e32447ee8915867e12da7c7c096339324bed101` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/instance--351dc1a25cfb9274254fb556.md) | 119 | `declaration-track:351dc1a25cfb9274254fb55680d90b08ab046496df4382f3fa7ed9e189c252fe` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/instance--06f8180e05e467819cac672a.md) | 122 | `declaration-track:06f8180e05e467819cac672a7656e60aee6892a66d8227a8df6389e35ab3c6e8` |
| 21 | `theorem` | [val_one](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/val-one--a2f28c137772a72540aa0853.md) | 126 | `result-track:a2f28c137772a72540aa0853c91aa5e4bb634b8f8449ec741ae9cd7c417a0441` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/instance--b6f3a97bbe6f5595a8b7ff00.md) | 130 | `declaration-track:b6f3a97bbe6f5595a8b7ff00e991e66845a57bd7ebd81cf317432b685d1f852d` |
| 23 | `instance` | [orderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/orderedcommmonoid--19c399fd41b349be7e3fe76d.md) | 137 | `declaration-track:19c399fd41b349be7e3fe76d7711f45e1251098a4911c5311ca0427dabae840c` |
| 24 | `instance` | [linearOrderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/declarations/linearorderedcancelcommmonoid--44fc237681bd20b9c9329a3c.md) | 147 | `declaration-track:44fc237681bd20b9c9329a3ced286b731ecd82011782a1a91e838408e9286456` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
