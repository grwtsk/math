# Verification target: GRWTSK.Algebra.GroupTheory.Int.Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db105f968fd5897b7efb7ad51499f9310e9801c8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db105f968fd5897b7efb7ad51499f9310e9801c8`.

Source path: `GRWTSK/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natCast_strictMono](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/natcast-strictmono--9322d6320e187a43a34ebce7.md) | 32 | `result-track:9322d6320e187a43a34ebce78da8771e87dc0a7d8bafbbb97d31be2d0b305df8` |
| 2 | `theorem` | [abs_eq_natAbs](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/abs-eq-natabs--25cc43eedc98e246c49873a5.md) | 36 | `result-track:25cc43eedc98e246c49873a584dcd4fc9f85362bc04c521840dff9a91d1b663a` |
| 3 | `lemma` | [natCast_natAbs](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/natcast-natabs--a2aee5b291ad4b13b81712b6.md) | 40 | `result-track:a2aee5b291ad4b13b81712b6e5e55e428dd4606bbeab29ab5ebdafe46a2f15b5` |
| 4 | `theorem` | [natAbs_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/natabs-abs--0be87f92360bd3ba90c7b298.md) | 42 | `result-track:0be87f92360bd3ba90c7b2985b46952b8f6ba116e2a9eb171576283cbfe99e8b` |
| 5 | `theorem` | [sign_mul_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/sign-mul-abs--17afe193d91bf533532c5cc8.md) | 44 | `result-track:17afe193d91bf533532c5cc89d8f3dbae84846bbd2d1d6fc6166ca1731703ddf` |
| 6 | `theorem` | [sign_mul_self_eq_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/sign-mul-self-eq-abs--282b2785394fc7863f39fdb8.md) | 47 | `result-track:282b2785394fc7863f39fdb84329c2c1389f347e628aa5375143420119c8d4f7` |
| 7 | `lemma` | [natAbs_le_self_sq](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/natabs-le-self-sq--f5ff156adb45e8e2b7bc2127.md) | 50 | `result-track:f5ff156adb45e8e2b7bc2127c88d40e304e8dc98bde9640760649846f0f108b8` |
| 8 | `lemma` | [le_self_sq](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/le-self-sq--fdb7f0cb085b72a3881cf7a2.md) | 57 | `result-track:fdb7f0cb085b72a3881cf7a2a4901eedc077878f9b85d50d7865f49f667f9242` |
| 9 | `lemma` | [abs_natCast](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/abs-natcast--841183c50adf81528c01ce51.md) | 61 | `result-track:841183c50adf81528c01ce513651dc6f5c479e1f2424f72dcdf4a04c697e1898` |
| 10 | `theorem` | [natAbs_sub_pos_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/natabs-sub-pos-iff--eff55a196b6d099bb7e8bbdf.md) | 63 | `result-track:eff55a196b6d099bb7e8bbdf93bd9a189d8e0a0ebb9f549922978e092946944e` |
| 11 | `theorem` | [natAbs_sub_ne_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/natabs-sub-ne-zero-iff--95f8e878078366bcad2f5ff1.md) | 66 | `result-track:95f8e878078366bcad2f5ff135f5eaa7c721a9c0b514c6905bbe63ccc4a069a3` |
| 12 | `theorem` | [abs_lt_one_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/abs-lt-one-iff--71fcf534ed2c660e14b373f5.md) | 70 | `result-track:71fcf534ed2c660e14b373f58a0ea640dde6ff2703e441de2ff29ca994f174b3` |
| 13 | `theorem` | [abs_le_one_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/abs-le-one-iff--232c5d7a77499e38c66332cb.md) | 73 | `result-track:232c5d7a77499e38c66332cb0c051c3651001f24a5c3b1be466fe5164cf2ba84` |
| 14 | `theorem` | [one_le_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/one-le-abs--9d31fd2afe38a95f1f7e1b14.md) | 83 | `result-track:9d31fd2afe38a95f1f7e1b143d122ca10d1d22e07b017d6ee2f74ab21a0ff595` |
| 15 | `lemma` | [eq_zero_of_abs_lt_dvd](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/eq-zero-of-abs-lt-dvd--9bcde6a3ae1d05598f13313c.md) | 86 | `result-track:9bcde6a3ae1d05598f13313c9608b7aa07fb417528398fcdf8d6b30fce45bd9a` |
| 16 | `lemma` | [abs_sub_lt_of_lt_lt](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/abs-sub-lt-of-lt-lt--d02fc3ce20e8b305d06f1797.md) | 92 | `result-track:d02fc3ce20e8b305d06f1797421b0389a47e2cbe3e1bf1cef7ab3281a7755e1e` |
| 17 | `theorem` | [ediv_eq_zero_of_lt_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/ediv-eq-zero-of-lt-abs--d1702942c414fabda2509725.md) | 97 | `result-track:d1702942c414fabda2509725408ffbd5b52e333607e57a034af9a5278db71fa1` |
| 18 | `theorem` | [emod_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/emod-abs--0c61d7ee79436f8032597753.md) | 105 | `result-track:0c61d7ee79436f803259775396266c9dd5674c61f155a103248381f5726dcdec` |
| 19 | `theorem` | [emod_lt_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/emod-lt-abs--291a2a84c87e5a16605ef202.md) | 108 | `result-track:291a2a84c87e5a16605ef2026fffee4ab189009676e2e4f1f2e84c2736f3f459` |
| 20 | `theorem` | [abs_ediv_le_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/abs-ediv-le-abs--e07d903c91bde12e6b7d3f4c.md) | 113 | `result-track:e07d903c91bde12e6b7d3f4c310b4ae9bf340dd06cb6c5528f41c12c57cb4014` |
| 21 | `theorem` | [abs_sign_of_nonzero](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/abs-sign-of-nonzero--718a4c9100092152dc506ea1.md) | 126 | `result-track:718a4c9100092152dc506ea1ad4e4f2cf6b3a5f55a09d0466e274c823ebdd974` |
| 22 | `theorem` | [sign_eq_ediv_abs'](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/sign-eq-ediv-abs--e9263824570c6cf403caf3de.md) | 129 | `result-track:e9263824570c6cf403caf3de12de17d191c7f2ff9553b7a4242a27e1ee011320` |
| 23 | `theorem` | [sign_eq_abs_ediv](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/sign-eq-abs-ediv--8c205da37e8cceafb32ab6d7.md) | 135 | `result-track:8c205da37e8cceafb32ab6d70a9d8c33392875dc0044903ea21bdfd5dfe4917a` |
| 24 | `lemma` | [zpow_abs_eq_one](../../../../../mathematics/Algebra/GroupTheory/Int/Variant63799f6284bda7b22f10bcb22f4a574382641e993d1db2eca10043304d6c6f9b.lean/declarations/zpow-abs-eq-one--6d4c403738bd2e774a2ebda5.md) | 145 | `result-track:6d4c403738bd2e774a2ebda50c1b0d82a3631c48acd5984433f9f54ea3afa06c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
