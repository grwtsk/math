# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Defs.Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e8106131dc9f3c435977677aab87aa58d233dff",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e8106131dc9f3c435977677aab87aa58d233dff`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CStarModule](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/cstarmodule--bc2d37520dda29f39d2a3ebb.md) | 80 | `declaration-track:bc2d37520dda29f39d2a3ebbf50d811d1bfb9ae96e7dec24086290abd3f861e0` |
| 2 | `lemma` | [inner_add_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-add-left--4fac552ebc9f01a6d769aa48.md) | 104 | `result-track:4fac552ebc9f01a6d769aa4855d7cc91e65f08d8e2f6621d27885ccfe8e222cb` |
| 3 | `lemma` | [inner_op_smul_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-op-smul-left--a48d16075c6f8dfef5c22ef3.md) | 109 | `result-track:a48d16075c6f8dfef5c22ef30f20eaaf9167df0f9ae07b9e03863fb6791e0820` |
| 4 | `lemma` | [inner_smul_left_complex](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-smul-left-complex--e18ca78f1576a7db476a31d8.md) | 117 | `result-track:e18ca78f1576a7db476a31d8558f213cb665604836f444d5d46cd9983155e21e` |
| 5 | `lemma` | [inner_smul_left_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-smul-left-real--d12bac22565a1c6ed1952340.md) | 122 | `result-track:d12bac22565a1c6ed1952340f7c99de4090b5422b821f901b480c2930421ae22` |
| 6 | `lemma` | [inner_smul_right_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-smul-right-real--dc5eca6d910499f901b0a719.md) | 128 | `result-track:dc5eca6d910499f901b0a719da4e93b0d55c92cc74bb87defade6a6db6ad0335` |
| 7 | `def` | [innerₛₗ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner--fc5e3d553c67e0f2b4cf178e.md) | 134 | `declaration-track:fc5e3d553c67e0f2b4cf178e9dd8d54bd4b16c476498f34118e98630378106d1` |
| 8 | `lemma` | [innerₛₗ_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-apply--60f09c62b0d931d9bdf616e8.md) | 141 | `result-track:60f09c62b0d931d9bdf616e8f5b18297becfa8e2f505ae8fc386b4942f36509d` |
| 9 | `lemma` | [inner_zero_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-zero-right--a3967b48993d156e1f234ade.md) | 143 | `result-track:a3967b48993d156e1f234ade8401158c729def6b64a3840dc2be31f353f33d49` |
| 10 | `lemma` | [inner_zero_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-zero-left--927775c599efa6be10330ca5.md) | 144 | `result-track:927775c599efa6be10330ca524e277e33e2e93408077aff8a98afb1b36c65e6b` |
| 11 | `lemma` | [inner_neg_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-neg-right--8dc2137c07fe56d868f8d1a1.md) | 145 | `result-track:8dc2137c07fe56d868f8d1a12be0ed52da7897c927bc2c181130529e856f6b52` |
| 12 | `lemma` | [inner_neg_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-neg-left--7ddff07a79a650a2f4db4783.md) | 146 | `result-track:7ddff07a79a650a2f4db47830e3a1fb21102baf53ffc7d7eee6405827662078f` |
| 13 | `lemma` | [inner_sub_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-sub-right--7c07eecb5fa1e551614c0252.md) | 147 | `result-track:7c07eecb5fa1e551614c025221e41d1717481be0a8700d081894328594ea8606` |
| 14 | `lemma` | [inner_sub_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-sub-left--55e3cc6d868dc9fdbc3831d8.md) | 149 | `result-track:55e3cc6d868dc9fdbc3831d81ded4a423870326b44166313cf4adb847ab8e692` |
| 15 | `lemma` | [inner_sum_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-sum-right--8a649859ce8374366d1e149f.md) | 153 | `result-track:8a649859ce8374366d1e149fbf1e97fec6ce6c08a86f73e05478fd2300abe8fe` |
| 16 | `lemma` | [inner_sum_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-sum-left--45e57cca65821a1f5ee62cee.md) | 158 | `result-track:45e57cca65821a1f5ee62cee047b8773947a927516b5d90e290a4a18aefef74d` |
| 17 | `lemma` | [isSelfAdjoint_inner_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/isselfadjoint-inner-self--fe66818b2412472f05a3e91a.md) | 165 | `result-track:fe66818b2412472f05a3e91ac37998dbc69f0082207818f573d0a825f5857b86` |
| 18 | `def` | [norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/norm--6e802f3d2fd1cdbb7bd05fc8.md) | 180 | `declaration-track:6e802f3d2fd1cdbb7bd05fc8e9dd0a64cd7733f96c37a778745cac0a72000bec` |
| 19 | `lemma` | [norm_sq_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/norm-sq-eq--01609c0d29680a0fadc91b11.md) | 188 | `result-track:01609c0d29680a0fadc91b115501af5c89f4c20cd29e9cc61b5d008fb32d7f39` |
| 20 | `lemma` | [norm_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/norm-nonneg--09132ae599c09282fff9949d.md) | 190 | `result-track:09132ae599c09282fff9949d8eb9b6863111e2599d834a53504187e07e8387d8` |
| 21 | `lemma` | [norm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/norm-pos--b71f496ff065dec30962d6e9.md) | 192 | `result-track:b71f496ff065dec30962d6e95989a797133a3c5df75c1178a16bb43261b02137` |
| 22 | `lemma` | [norm_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/norm-zero--98d6201a0aa6540e7fb8481a.md) | 198 | `result-track:98d6201a0aa6540e7fb8481ab5b1c37470310104ac930b10e0031e389de5dec2` |
| 23 | `lemma` | [norm_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/norm-zero-iff--9756ca4e31a581bfc028cfb7.md) | 200 | `result-track:9756ca4e31a581bfc028cfb7d5df5f36aeabaa10a8f7257ced7b39feb302b14f` |
| 24 | `lemma` | [inner_mul_inner_swap_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/inner-mul-inner-swap-le--ab970ec822268483af127ae8.md) | 210 | `result-track:ab970ec822268483af127ae83ca84f9a289cdfdad37a8a7b2794b7a65b6998f2` |
| 25 | `lemma` | [norm_inner_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/norm-inner-le--c490a77fb7c743d4439a9242.md) | 240 | `result-track:c490a77fb7c743d4439a924210d341244b94d841e9b55acf18b008c8bd4bea77` |
| 26 | `lemma` | [norm_triangle](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/norm-triangle--7095f890e670e375b31a03d8.md) | 256 | `result-track:7095f890e670e375b31a03d8cf47e15d1fb95f152593c123ea4e87bb20f239b8` |
| 27 | `lemma` | [normedSpaceCore](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/normedspacecore--0bb80fdd6a51d59ad105f9af.md) | 274 | `result-track:0bb80fdd6a51d59ad105f9aff751c7b8b7167bbbbdf890bb0135892094386130` |
| 28 | `abbrev` | [normedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/normedaddcommgroup--b274265f7d8cfc8e6f4e7705.md) | 283 | `declaration-track:b274265f7d8cfc8e6f4e77052f712dfbcc2c72853097fe79baa58b9a7281bfa7` |
| 29 | `lemma` | [norm_eq_csSup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/norm-eq-cssup--480b921c656b97ec1e91f22c.md) | 287 | `result-track:480b921c656b97ec1e91f22c1b9cb8357698b25156db3dfa2ae1897cd38116df` |
| 30 | `def` | [innerSL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/innersl--760769885915ba52c2d3be08.md) | 313 | `declaration-track:760769885915ba52c2d3be08fcb861fd1cea98d71b4fc5b6559fa0aac483eb69` |
| 31 | `lemma` | [innerSL_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/innersl-apply--13e9a01c1a99f3e40fb2251d.md) | 317 | `result-track:13e9a01c1a99f3e40fb2251dcea5829da762103d80c68e728d4e5aa3aae9e199` |
| 32 | `lemma` | [continuous_inner](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/declarations/continuous-inner--ff6d217e09c2be83994a3abd.md) | 320 | `result-track:ff6d217e09c2be83994a3abd40a1c571ca9605eba1f4027169ec78e875d6713a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
