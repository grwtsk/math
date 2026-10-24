# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de4c7bfc2bd58ef8c3ecc82a0f1ec57a0f771fb2",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de4c7bfc2bd58ef8c3ecc82a0f1ec57a0f771fb2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectivizationSetoid](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/projectivizationsetoid--cbc235908a7c0710613371a3.md) | 38 | `declaration-track:cbc235908a7c0710613371a3917111ab32301f9a3485d83abc413818febe6b32` |
| 2 | `def` | [Projectivization](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/projectivization--a745218edd856c0db9a17459.md) | 43 | `declaration-track:a745218edd856c0db9a1745916be13236c7f0e757eab9ba18c8b2f870e121dba` |
| 3 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/mk--51e2f6356672298e35eb062a.md) | 55 | `declaration-track:51e2f6356672298e35eb062ac7d148399516c4eee17d65d57e47e0490911e349` |
| 4 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/mk--c214a21a60297fbea009bc71.md) | 59 | `declaration-track:c214a21a60297fbea009bc71b2f5265d7c563631c9dc967edcde6f1dea688b6a` |
| 5 | `theorem` | [mk'_eq_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/mk-eq-mk--bb7330ceb03214999d684137.md) | 63 | `result-track:bb7330ceb03214999d6841378e14438d9e5bb2d652f0a62dcbd150f7d62e5b8d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/instance--0261c1e17eb7ea3556de2b66.md) | 65 | `declaration-track:0261c1e17eb7ea3556de2b66e5c9ab58a5262214b2299538cfbc157d3a95264e` |
| 7 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/lift--0f640edd615fc57b5d3c14da.md) | 73 | `declaration-track:0f640edd615fc57b5d3c14da3cd6188af7454301d42022cbcf156efd3345fa54` |
| 8 | `lemma` | [lift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/lift-mk--cab5e9d2bfe335854965d95d.md) | 79 | `result-track:cab5e9d2bfe335854965d95d1e84209bd31cd160b55d53724f69eb2a92c65e74` |
| 9 | `def` | [rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/rep--44f86eded32aaf8877418249.md) | 86 | `declaration-track:44f86eded32aaf88774182498de22d93fd62aba5388593750d5b4153fb133211` |
| 10 | `theorem` | [rep_nonzero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/rep-nonzero--63754f9f239f1cd4d3d5eb53.md) | 89 | `result-track:63754f9f239f1cd4d3d5eb535eb60921f79a6c2acc5700d42428a2979340589f` |
| 11 | `theorem` | [mk_rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/mk-rep--2021170e370bf2700d1c0f00.md) | 93 | `result-track:2021170e370bf2700d1c0f002c2978684f45a6500f758eff1cb74fb5d13661fd` |
| 12 | `def` | [submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/submodule--ebfe20bbb8c1b42aa6aed5e4.md) | 98 | `declaration-track:ebfe20bbb8c1b42aa6aed5e490d8205a73c2b74aef8fbd00bde7fcb3e2091991` |
| 13 | `theorem` | [mk_eq_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/mk-eq-mk-iff--6a0bf15b864c73e6c808ee21.md) | 105 | `result-track:6a0bf15b864c73e6c808ee218a85ad4b84cafdbf622860b5df0b0918ca7d50b4` |
| 14 | `theorem` | [mk_eq_mk_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/mk-eq-mk-iff--049488dc0debcaf2ebdffac5.md) | 111 | `result-track:049488dc0debcaf2ebdffac5a03b5007c30a1e4ee808dc999421d1fcfbbbf38b` |
| 15 | `theorem` | [exists_smul_eq_mk_rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/exists-smul-eq-mk-rep--c2ac19ee8781f3b63cefbb7a.md) | 121 | `result-track:c2ac19ee8781f3b63cefbb7a48acfa0fa48e5668e2222857ae316f3c608ad220` |
| 16 | `theorem` | [ind](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/ind--3466c82778d0d9c3d04b9d94.md) | 128 | `result-track:3466c82778d0d9c3d04b9d947fe8781a84dd23d18d84c596efa2aa39d7945753` |
| 17 | `theorem` | [submodule_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/submodule-mk--6a4216a64d5cf2d9b77381bc.md) | 132 | `result-track:6a4216a64d5cf2d9b77381bccd62a2a3939c3289a99165443966371a3b25bfd4` |
| 18 | `theorem` | [submodule_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/submodule-eq--17c56cd5a852ac4d42eababc.md) | 135 | `result-track:17c56cd5a852ac4d42eababc94d0b8f24cf7f05ddf4830e804bbe016ce87a97f` |
| 19 | `theorem` | [finrank_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/finrank-submodule--0b201adaa057e70c7ea64743.md) | 139 | `result-track:0b201adaa057e70c7ea64743928839165c1bd9862524d78668b8e5de34d6874f` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/instance--83b800bd60e07614ed441d62.md) | 143 | `declaration-track:83b800bd60e07614ed441d62a9dc02978979e618e0143cf20f8dd1b5d2b133f1` |
| 21 | `theorem` | [submodule_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/submodule-injective--0df2dc4c30d2df7cfb1d564a.md) | 148 | `result-track:0df2dc4c30d2df7cfb1d564a1ec6542b1449bdcdd60166a975e2b14af1bb6ac3` |
| 22 | `def` | [equivSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/equivsubmodule--3dd248ffee5809f46b5320c7.md) | 159 | `declaration-track:3dd248ffee5809f46b5320c713139a06e5aefa87206eaabba361bd95b486b689` |
| 23 | `def` | [mk''](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/mk--edc35af31ec690c4b0ff44f9.md) | 172 | `declaration-track:edc35af31ec690c4b0ff44f9deafd705009281aea1b9f47cac5cf3726753689c` |
| 24 | `theorem` | [submodule_mk''](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/submodule-mk--ff3bdbfb89cabc9c9011f6e7.md) | 176 | `result-track:ff3bdbfb89cabc9c9011f6e77d68d0fbcacbddebc37703762ba2bb4b2c4267bf` |
| 25 | `theorem` | [mk''_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/mk-submodule--13a78adf2f6af7a3b1c12337.md) | 180 | `result-track:13a78adf2f6af7a3b1c1233762ef6c5a6a37057615791f6dd78428d78c7f3b1a` |
| 26 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/map--43a7207340f64ef6a6f4ac53.md) | 188 | `declaration-track:43a7207340f64ef6a6f4ac533dd71d117d421b98c6c92784c0f62e2b0f546f33` |
| 27 | `theorem` | [map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/map-mk--6fa0e096b39f8cefea06517f.md) | 196 | `result-track:6fa0e096b39f8cefea06517fc0bdc8bd6c4443f7a2346ba78a51a584c71e94f9` |
| 28 | `theorem` | [map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/map-injective--3d05dbab61b3c1403dc75eed.md) | 202 | `result-track:3d05dbab61b3c1403dc75eed8ebf3248a146d571cc47444e7d43a676b60eb756` |
| 29 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/map-id--af183c8782f44a4d40ddb596.md) | 211 | `result-track:af183c8782f44a4d40ddb5968081119ddb3a66d19d2587aaaaf55bd01d516b1a` |
| 30 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/declarations/map-comp--59f6a7d50a4abd1e8e36f28f.md) | 216 | `result-track:59f6a7d50a4abd1e8e36f28f5f983cc204c3ec4ec6b296043e99c08b8b54d3c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
