# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8eb6013d69ae7b44e82eb67c2c0cdef0ceebf6c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8eb6013d69ae7b44e82eb67c2c0cdef0ceebf6c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/add-left--5f9b9370932cd7680449e2de.md) | 69 | `result-track:5f9b9370932cd7680449e2de1959381fe9dca237868628f7280d814ac9171b79` |
| 2 | `theorem` | [smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/smul-left--522b1c970af49508dc756a7a.md) | 71 | `result-track:522b1c970af49508dc756a7a7a386ca5ddcba447887bafc08989ec5a3abe9013` |
| 3 | `theorem` | [add_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/add-right--d64c38274a66296526796e59.md) | 73 | `result-track:d64c38274a66296526796e59f2fef469dce7ebda18e76b0cb278942f5770e7a4` |
| 4 | `theorem` | [smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/smul-right--2672c4d3a3c1d1834d6e9d24.md) | 75 | `result-track:2672c4d3a3c1d1834d6e9d24aadcbd764c0b247f4cbeae57677c3481083ff062` |
| 5 | `theorem` | [zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/zero-left--75cc768e7abcfa106dbfd6e0.md) | 77 | `result-track:75cc768e7abcfa106dbfd6e03e101db3c8a0016fdc0768ac968a12dd846f11f2` |
| 6 | `theorem` | [zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/zero-right--bf2340c77eb7b99349f57d1f.md) | 79 | `result-track:bf2340c77eb7b99349f57d1f15d297764c44c9b160e9723df006b4302530ef95` |
| 7 | `theorem` | [neg_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/neg-left--96e03f83030d6f8b3c494146.md) | 81 | `result-track:96e03f83030d6f8b3c49414657e5dbc9a78f1617cdfea7ca8e3b34284961b9a0` |
| 8 | `theorem` | [neg_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/neg-right--14ca6251ed7fcd6aba7e7f56.md) | 83 | `result-track:14ca6251ed7fcd6aba7e7f568704d8e50d954526229af234088ff63dd401d597` |
| 9 | `theorem` | [sub_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/sub-left--c4de2f346aa8b74a429bc1d7.md) | 85 | `result-track:c4de2f346aa8b74a429bc1d70ec36159ba096c188e3daaee4b598291c85b02d1` |
| 10 | `theorem` | [sub_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/sub-right--a9c8a8135ce73f5f3ad52a93.md) | 87 | `result-track:a9c8a8135ce73f5f3ad52a930fffa70d2077706592b620aacf651915f5a42878` |
| 11 | `lemma` | [smul_left_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/smul-left-of-tower--4e4ee333895f569ebe1b8cb7.md) | 89 | `result-track:4e4ee333895f569ebe1b8cb71e0071992d6c2bcc40e6a677d07320f519aa2cb0` |
| 12 | `lemma` | [smul_right_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/smul-right-of-tower--a6d6b18d80337e253bb9a661.md) | 92 | `result-track:a6d6b18d80337e253bb9a661ff043001bc9beb4e35b46cd673c95972317c1137` |
| 13 | `theorem` | [coe_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/coe-injective--bcad9a617fcc2c4face1f357.md) | 98 | `result-track:bcad9a617fcc2c4face1f357a21959213014e84f6719ccbd2d0b22f0371c9351` |
| 14 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/ext--5adf2c8011aae7555d371c52.md) | 104 | `result-track:5adf2c8011aae7555d371c525ef72fc0dad7e6e68d2b9937a48b14da86867e39` |
| 15 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/congr-fun--4c06c97b99da5d81ae47a19a.md) | 106 | `result-track:4c06c97b99da5d81ae47a19ad4253a350f8ece931b106275a188983d210ecb06` |
| 16 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/zero-apply--c8390e11cbdfc9640f0f82c2.md) | 109 | `result-track:c8390e11cbdfc9640f0f82c2296e5fd2eccbbd1b0fca87306869f5f630b32018` |
| 17 | `theorem` | [add_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/add-apply--12132f00227f4e260598beec.md) | 115 | `result-track:12132f00227f4e260598beec2ae35fc781a4d869ff8526b3a38fab12eed8bdff` |
| 18 | `theorem` | [neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/neg-apply--87b5c869ceb763b043aea092.md) | 119 | `result-track:87b5c869ceb763b043aea092f0bdc84b3eed9e3b0e36b2dcd09e39bb7188db1f` |
| 19 | `theorem` | [sub_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/sub-apply--60fbf4d7fecda1354e852b8b.md) | 123 | `result-track:60fbf4d7fecda1354e852b8bdf3c508f78397751740f2ef878e0b356b2ee9e59` |
| 20 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/coefnaddmonoidhom--1a1f71c04d17b71fbda4cb01.md) | 128 | `declaration-track:1a1f71c04d17b71fbda4cb014e7cd481f40430625274dd822a428fae661f02e0` |
| 21 | `def` | [flipHomAux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/fliphomaux--40d24c161ec993194658a2b9.md) | 138 | `declaration-track:40d24c161ec993194658a2b93235747ac85fce2f2783639683555d73dfa215b0` |
| 22 | `theorem` | [flip_flip_aux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/flip-flip-aux--aefa0e826200c057c06b8c16.md) | 147 | `result-track:aefa0e826200c057c06b8c1605b0382601efea72f48b18ffef6acb2200cf87fc` |
| 23 | `def` | [flipHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/fliphom--400544ab878f7a24a010ad5a.md) | 153 | `declaration-track:400544ab878f7a24a010ad5a88db8bdd7da73a98d4f36ca39a3f8c0d1bc21aaa` |
| 24 | `theorem` | [flip_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/flip-apply--093df40b976776103323281b.md) | 160 | `result-track:093df40b976776103323281bb5936aa36c3026075402994ad72c8e22992a3817` |
| 25 | `theorem` | [flip_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/flip-flip--16c41c1548398c04cca1b37a.md) | 163 | `result-track:16c41c1548398c04cca1b37a092b07f69466d40a50b15ab96bf68643bd60a5cd` |
| 26 | `abbrev` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/flip--e02676cb9124333447935747.md) | 170 | `declaration-track:e02676cb91243334479357475e54e2e887fbbbeee32feb115329d8077b632361` |
| 27 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant876c6e63edc73ce5f0d2a20b2e765d369bb1db2e21cb2628f138973d888476ae.lean/declarations/restrict--42766c350e0e972bf1d38eaa.md) | 177 | `declaration-track:42766c350e0e972bf1d38eaa6ef54c03138542a400b9d5758986661da67379bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
