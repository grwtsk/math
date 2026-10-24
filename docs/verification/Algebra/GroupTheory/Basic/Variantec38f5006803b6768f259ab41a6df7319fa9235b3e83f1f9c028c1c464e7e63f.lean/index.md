# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e31fc5fe3915eb945c90386dfa00a71a8a0a7c5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e31fc5fe3915eb945c90386dfa00a71a8a0a7c5`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/instance--d8d97731d4be95ffff5e1305.md) | 49 | `declaration-track:d8d97731d4be95ffff5e1305e0c8db0a14543ab452e7ea68bcc513a96f38120f` |
| 2 | `theorem` | [Dvd.intro](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-intro--fa25e0620fdf68d5a918096b.md) | 55 | `result-track:fa25e0620fdf68d5a918096be8abebfe85e69c594c7e99717576289cf3558f01` |
| 3 | `theorem` | [exists_eq_mul_right_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/exists-eq-mul-right-of-dvd--792121fb940a5fcc4785c3c8.md) | 62 | `result-track:792121fb940a5fcc4785c3c889132bd7319ac67cf7bd5877b929e389067d2885` |
| 4 | `theorem` | [dvd_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-def--63751d7ab87c87bb3def42a4.md) | 66 | `result-track:63751d7ab87c87bb3def42a420d5d7dca5a4744e3dabae53894f912261729e89` |
| 5 | `theorem` | [Dvd.elim](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-elim--972d6bf97c3d3366557116ce.md) | 71 | `result-track:972d6bf97c3d3366557116ce2fe8c8f63d25c9b40c7d1cca8115aa6503c9601b` |
| 6 | `theorem` | [dvd_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-trans--8862d97486674ec0544b3e5a.md) | 78 | `result-track:8862d97486674ec0544b3e5a705fe6e17dcdf7ba47584eeba877884e06645390` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/instance--daa4ba6b42fbaff44051bc0a.md) | 85 | `declaration-track:daa4ba6b42fbaff44051bc0a005a30e3a1b5b61803afcac7b87d6e31919448f0` |
| 8 | `theorem` | [dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-mul-right--5fe644865bebae51dcf6f787.md) | 89 | `result-track:5fe644865bebae51dcf6f78707121662cc4f1d41c61d64d0e19f7dae481b25b6` |
| 9 | `theorem` | [dvd_mul_of_dvd_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-mul-of-dvd-left--f4eb37427ece3122e31d5449.md) | 93 | `result-track:f4eb37427ece3122e31d544942a4f1062c6e1a407894d88dd50cb1ae6143b310` |
| 10 | `theorem` | [dvd_of_mul_right_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-of-mul-right-dvd--467a238b39b97bfa3e1dff73.md) | 99 | `result-track:467a238b39b97bfa3e1dff73fa6c1acbe0b4ebce077bb703fb01b70a75354da5` |
| 11 | `theorem` | [map_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/map-dvd--19661e10152199360f328bfb.md) | 107 | `result-track:19661e10152199360f328bfb51933838640d21b1a4aa596e432fc703e90e1945` |
| 12 | `theorem` | [MulHom.map_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/mulhom-map-dvd--ad5947e8e82db56b5bdafc19.md) | 111 | `result-track:ad5947e8e82db56b5bdafc1936d7f6352be9b7c6168ae1272d85387fa88dd390` |
| 13 | `theorem` | [MonoidHom.map_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/monoidhom-map-dvd--fb7a78d5a21a5d6086b1f094.md) | 115 | `result-track:fb7a78d5a21a5d6086b1f0940d2642d2982997d76bd8767fc339c8b4953ffa64` |
| 14 | `theorem` | [dvd_refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-refl--e55a7f8c1a722b53fedad9f8.md) | 128 | `result-track:e55a7f8c1a722b53fedad9f88650657ce430870dd470d5fdca7accbf566d345c` |
| 15 | `theorem` | [dvd_rfl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-rfl--1b581dd921155401bac0cc4f.md) | 132 | `result-track:1b581dd921155401bac0cc4f020a7d56b2dd3de0541d904425eddbb8cd5106ec` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/instance--8fef215923db04e387017f67.md) | 135 | `declaration-track:8fef215923db04e387017f672a956fe18419de1bfa43dd790d0d36e657cf0adf` |
| 17 | `theorem` | [one_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/one-dvd--93a78e165ee5bed7f53f64bc.md) | 138 | `result-track:93a78e165ee5bed7f53f64bc084ddae7a0929ff8705e308b995be538d206d696` |
| 18 | `theorem` | [dvd_of_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-of-eq--b815a5e82c1f7a2664bc6e18.md) | 142 | `result-track:b815a5e82c1f7a2664bc6e188faf4eec43d71a9f71856f3cabc52abf9cf2e95e` |
| 19 | `theorem` | [Dvd.intro_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-intro-left--8fc2cb1cae1e7969f93d7920.md) | 154 | `result-track:8fc2cb1cae1e7969f93d7920f7307664075d2b9bc0750b7104197a64a3efdabe` |
| 20 | `theorem` | [exists_eq_mul_left_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/exists-eq-mul-left-of-dvd--6b4369bcbb51e749adce1363.md) | 161 | `result-track:6b4369bcbb51e749adce1363413043002232c6271f1d1e4ae48b102fcf21f29e` |
| 21 | `theorem` | [dvd_iff_exists_eq_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-iff-exists-eq-mul-left--beb83f7082fa04d72f0f4fae.md) | 165 | `result-track:beb83f7082fa04d72f0f4fae1e401dfcf621f8783ddadb0b81e6c7c0ade1efbc` |
| 22 | `theorem` | [Dvd.elim_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-elim-left--b6ddb8343120891a6391f352.md) | 171 | `result-track:b6ddb8343120891a6391f352c6be93b15b360dd408bf6dde66a140d4520c2437` |
| 23 | `theorem` | [dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-mul-left--a370e4f5da78d56552098a9d.md) | 176 | `result-track:a370e4f5da78d56552098a9db110949201431df092e8128a5f3c64e77c3e39b0` |
| 24 | `theorem` | [dvd_mul_of_dvd_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-mul-of-dvd-right--7a05f69dd589fcccba55c367.md) | 180 | `result-track:7a05f69dd589fcccba55c3670c84c8cde48a7b078c5b14f687751563d7d76140` |
| 25 | `theorem` | [mul_dvd_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/mul-dvd-mul--8324099a1b6224aa71cbeb9f.md) | 188 | `result-track:8324099a1b6224aa71cbeb9fd7d5e674b07d751cf4c9d74d06b0900c375c288c` |
| 26 | `theorem` | [dvd_of_mul_left_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/dvd-of-mul-left-dvd--45dcabc68be438ff05b53d7a.md) | 192 | `result-track:45dcabc68be438ff05b53d7acbd1295e9fd99426c7264070cd38fc9e05ab73fd` |
| 27 | `theorem` | [mul_dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/mul-dvd-mul-left--81cce5274290b838ae53d501.md) | 202 | `result-track:81cce5274290b838ae53d501fa948fd7bfad8780ae37157e9f2660943cadf40e` |
| 28 | `theorem` | [mul_dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/mul-dvd-mul-right--b5c3fbcabe116ad1ff4d9715.md) | 206 | `result-track:b5c3fbcabe116ad1ff4d97152ac3ed566c782de7c814af5b4a64e24d8a2fd79b` |
| 29 | `theorem` | [pow_dvd_pow_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/declarations/pow-dvd-pow-of-dvd--4f2e9a6b6339fefbb180a92f.md) | 210 | `result-track:4f2e9a6b6339fefbb180a92f3a600834c2dc7bc3ba646c9d9bcd7e84d457a5bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
