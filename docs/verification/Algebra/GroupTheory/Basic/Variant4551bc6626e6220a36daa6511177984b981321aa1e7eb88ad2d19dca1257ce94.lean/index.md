# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "592b85e20f27d7d02190661a53d96d5b13c24e41",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `592b85e20f27d7d02190661a53d96d5b13c24e41`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Semiconj.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [SemiconjBy.function_semiconj_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/semiconjby-function-semiconj-mul-left--9922d81567287aab2a9b0efc.md) | 24 | `result-track:9922d81567287aab2a9b0efcf93c0ac248534358e8872ba68e116843ea2d4fa0` |
| 2 | `lemma` | [Commute.function_commute_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/commute-function-commute-mul-left--527d51debd4c3c9d0ea8ccce.md) | 28 | `result-track:527d51debd4c3c9d0ea8ccceeb35e3fcf03b2fd2058bbb82b39f2be4ca3f40ea` |
| 3 | `lemma` | [SemiconjBy.function_semiconj_mul_right_swap](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/semiconjby-function-semiconj-mul-right-swap--abb10d0713a55aeba22b9243.md) | 32 | `result-track:abb10d0713a55aeba22b924308a75c7ad9723424e0e097aacf9cf1083dacd607` |
| 4 | `lemma` | [Commute.function_commute_mul_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/commute-function-commute-mul-right--225cef1e036163b6bfecf740.md) | 36 | `result-track:225cef1e036163b6bfecf7403bb1a4cf37601ad54fd8b787af82c221889a1b72` |
| 5 | `theorem` | [inv_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/inv-inv--989992970d2d898e616d93af.md) | 48 | `result-track:989992970d2d898e616d93afbf4417c2ece62014594833b4d4d54d34e48fa869` |
| 6 | `theorem` | [inv_inv_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/inv-inv-iff--609ee8400c518cda76ed853a.md) | 52 | `result-track:609ee8400c518cda76ed853a9c62f28785ed9186fa4d2bdf445558413a1de1c5` |
| 7 | `theorem` | [div_mul_div_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/div-mul-div-comm--dbbe752c152f9a487d4478ef.md) | 56 | `result-track:dbbe752c152f9a487d4478efe4d11b110834a95f5756f6361b5fffe4062274b5` |
| 8 | `theorem` | [mul_div_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/mul-div-mul-comm--85fe1035713e5fbeebc78688.md) | 61 | `result-track:85fe1035713e5fbeebc78688ac0a163f76d95b2901e4fd7fadd4a9e78d309390` |
| 9 | `theorem` | [div_div_div_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/div-div-div-comm--c51b2b14f381ffe23e071ed9.md) | 66 | `result-track:c51b2b14f381ffe23e071ed908094e8ce49e044c7330f9ad4ea2ca42cf4df622` |
| 10 | `lemma` | [inv_left_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/inv-left-iff--ff9cf0a65a0b669d6011b670.md) | 77 | `result-track:ff9cf0a65a0b669d6011b6700721cea276958d84dcb5396e8ca430d2cf0c355d` |
| 11 | `lemma` | [inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/inv-right-iff--deaccbc9230a2fdf1a97e481.md) | 82 | `result-track:deaccbc9230a2fdf1a97e481eecb5b3b90b8a4a7769264133ec0f3a4442ad9f9` |
| 12 | `lemma` | [inv_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/inv-mul-cancel--8e8877893dea542878ec723f.md) | 87 | `result-track:8e8877893dea542878ec723f5d17ea6f0c9b4e6ff358c6f81f1a04d60a4e02ff` |
| 13 | `lemma` | [inv_mul_cancel_assoc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/inv-mul-cancel-assoc--ba5c09b471290afca5f61d4b.md) | 91 | `result-track:ba5c09b471290afca5f61d4b5816e3ccf12bbdde1eac3d8173800b083ed5982d` |
| 14 | `theorem` | [conj_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/conj-iff--7e9a3843619ed19a02df6374.md) | 95 | `result-track:7e9a3843619ed19a02df6374a9f7e815bd43959160f26db46048df2c58192f17` |
| 15 | `theorem` | [conj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/conj--24dcd7a87c0d9bb49693461e.md) | 99 | `result-track:24dcd7a87c0d9bb49693461ee45132d5c97bdb6f554976045c71cf8b341c09eb` |
| 16 | `lemma` | [zpow_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/zpow-right--1a39604e19658747314c4703.md) | 103 | `result-track:1a39604e19658747314c47036957d11b2b886a067713ff7c0efbf0143b3dfa18` |
| 17 | `lemma` | [zpow_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/zpow-left--d4adc1c90d421941f9a9264e.md) | 106 | `result-track:d4adc1c90d421941f9a9264eea4c53df4b46b6dc3fe48747ff0e3d8752e8c045` |
| 18 | `lemma` | [zpow_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/zpow-zpow--2475764e56cb6850564c346f.md) | 108 | `result-track:2475764e56cb6850564c346f4f1ad8caaa9b3a087fc1aa4b0389725677bd3edb` |
| 19 | `lemma` | [self_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/self-zpow--4d39ee95ef8b8f03bb7a1dc1.md) | 113 | `result-track:4d39ee95ef8b8f03bb7a1dc16cfe26db53cd19fb6bf10f3e6afa2e33d7503fd9` |
| 20 | `lemma` | [zpow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/zpow-self--fce04c3d4bf5fa1c06423a05.md) | 115 | `result-track:fce04c3d4bf5fa1c06423a050b63544493faaa380c600d96b32a244c2f81f5d0` |
| 21 | `lemma` | [zpow_zpow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/zpow-zpow-self--72075b8b9a9205057e5ea61d.md) | 117 | `result-track:72075b8b9a9205057e5ea61df6084a1bb7fa06c7d6aee43c9e2382c16af44ded` |
| 22 | `lemma` | [pow_inv_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4551bc6626e6220a36daa6511177984b981321aa1e7eb88ad2d19dca1257ce94.lean/declarations/pow-inv-comm--454766e803fe174d6fa70251.md) | 125 | `result-track:454766e803fe174d6fa702514d6fbeede4f8ae8ffad739a70ab4d80398bbc2e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
