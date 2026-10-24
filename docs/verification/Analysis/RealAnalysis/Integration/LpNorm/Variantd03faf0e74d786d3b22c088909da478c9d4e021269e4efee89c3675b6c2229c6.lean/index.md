# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LpNorm.Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1368cc30d77173ce8b9f2649c969f55cd3de9ea6",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1368cc30d77173ce8b9f2649c969f55cd3de9ea6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.RCLike.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [toReal_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/toreal-elpnorm--54bbed6fb27382046f61101a.md) | 29 | `result-track:54bbed6fb27382046f61101a144496d52dfa484585d2e9d89aafa0ee5a0b6de3` |
| 2 | `lemma` | [ofReal_lpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/ofreal-lpnorm--aa67fcbc6fec24b1ab5a286f.md) | 31 | `result-track:aa67fcbc6fec24b1ab5a286fefc935d32a491364852bb140b6228ba74e02a2fb` |
| 3 | `lemma` | [lpNorm_of_not_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-of-not-aestronglymeasurable--16442f8dafe791a6098e405b.md) | 35 | `result-track:16442f8dafe791a6098e405b65d825c5859f98e1ff7d62fafc473f912bacd15c` |
| 4 | `lemma` | [lpNorm_of_not_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-of-not-memlp--ec0e79c915b5cba80150122c.md) | 39 | `result-track:ec0e79c915b5cba80150122c1f977f33493145d8cddb185ec7f2e0e5745d30f5` |
| 5 | `lemma` | [lpNorm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-nonneg--3a39b3a0e60411d150efa9b2.md) | 41 | `result-track:3a39b3a0e60411d150efa9b287c7963594a5e0920e063a490afd41d3450fd2ee` |
| 6 | `lemma` | [lpNorm_eq_integral_norm_rpow_toReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-eq-integral-norm-rpow-toreal--eba7e7ca2c11cc842d3410d4.md) | 43 | `result-track:eba7e7ca2c11cc842d3410d44efe5b8d593d2e3f9c6518574953e346d2ae24d7` |
| 7 | `lemma` | [lpNorm_nnreal_eq_integral_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-nnreal-eq-integral-norm-rpow--a054a5fdee55dc26a16f6e99.md) | 54 | `result-track:a054a5fdee55dc26a16f6e997c0b2acc9f9952431a0d4efb13cb6680cd8623ac` |
| 8 | `lemma` | [lpNorm_one_eq_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-one-eq-integral-norm--9cfb9422bf8a01cbab0233b6.md) | 58 | `result-track:9cfb9422bf8a01cbab0233b64491e1fea3853a3422e7a8fe757bb4afe13e4f45` |
| 9 | `lemma` | [lpNorm_exponent_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-exponent-zero--c63fd4e6626ecad08ead5c2d.md) | 62 | `result-track:c63fd4e6626ecad08ead5c2d6b6f5792c0b8b5e12b3aca15bf1c3bb5e0094de6` |
| 10 | `lemma` | [lpNorm_measure_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-measure-zero--8f97f54274e22d2d8edfb6fd.md) | 67 | `result-track:8f97f54274e22d2d8edfb6fd27f7123403e0f8fbac1d4a00a17734e94d0f1a96` |
| 11 | `lemma` | [ae_le_lpNorm_exponent_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/ae-le-lpnorm-exponent-top--fc8faf202b2285402695119e.md) | 69 | `result-track:fc8faf202b2285402695119e988f81e70d81cc344ef54ac9bf6c5776d5ce623b` |
| 12 | `lemma` | [lpNorm_exponent_top_eq_essSup](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-exponent-top-eq-esssup--3592f187fb5762d958fbc51b.md) | 77 | `result-track:3592f187fb5762d958fbc51b19b0ea289df94186254a6724b495f0d93e6af5ec` |
| 13 | `lemma` | [lpNorm_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-zero--edbf211679754a0d7ac598ed.md) | 84 | `result-track:edbf211679754a0d7ac598ed373099464ddbba4ad6e56ca9e02ef38c165c5640` |
| 14 | `lemma` | [lpNorm_fun_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-fun-zero--14a44ea51c3a9171267fe86e.md) | 87 | `result-track:14a44ea51c3a9171267fe86e1b85e84e8d09182071da524e39e275f3b990b492` |
| 15 | `lemma` | [lpNorm_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-eq-zero--eb79e4543d07e3e62eb373b1.md) | 91 | `result-track:eb79e4543d07e3e62eb373b19993a7a8bf1ebbae5648edd2a3dc5c9831e5bebd` |
| 16 | `lemma` | [lpNorm_of_isEmpty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-of-isempty--e037735a6787cdfd9be75da8.md) | 95 | `result-track:e037735a6787cdfd9be75da8c05886a988de85f13662c645cf9e1970ca6cd11d` |
| 17 | `lemma` | [lpNorm_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-neg--902b77055bf2d82874a6fe43.md) | 98 | `result-track:902b77055bf2d82874a6fe43914e7c84402ace7d87ed1216f600c757c27f3afd` |
| 18 | `lemma` | [lpNorm_sub_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-sub-comm--a46e9184ef4b6e7f6196cd12.md) | 102 | `result-track:a46e9184ef4b6e7f6196cd1279a17b392770d0031fa617c68b4bbf945de313f6` |
| 19 | `lemma` | [lpNorm_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-norm--c1e6b907b06fe86632ac5e45.md) | 105 | `result-track:c1e6b907b06fe86632ac5e453ff842c79d4b2480056ea900694324f0c663460f` |
| 20 | `lemma` | [lpNorm_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-abs--d65d8519497a08436c178396.md) | 110 | `result-track:d65d8519497a08436c1783968320ada71f9fb75d703341c134de69fa677c9a98` |
| 21 | `lemma` | [lpNorm_fun_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-fun-abs--c508a18d99d49f32742c95f8.md) | 113 | `result-track:c508a18d99d49f32742c95f8495ea9470c20b50f11da39977a9a439fddd12e67` |
| 22 | `lemma` | [lpNorm_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-const--302f780087866c71f367dc81.md) | 116 | `result-track:302f780087866c71f367dc81c9a666c1122f16f6d5141d2c6f7ff45d47d7deab` |
| 23 | `lemma` | [lpNorm_const'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-const--35a4744ea62f5fc208f75d46.md) | 120 | `result-track:35a4744ea62f5fc208f75d46de1fabb6c76f6fd5959de7c70516ff60fe1aeee6` |
| 24 | `lemma` | [lpNorm_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-one--b85ebce7b4d45de853e78370.md) | 127 | `result-track:b85ebce7b4d45de853e78370d118d6d2419b41106807f9f561f23dae1d66b3b3` |
| 25 | `lemma` | [lpNorm_one'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-one--a47c8bff85587fefc2f389d6.md) | 131 | `result-track:a47c8bff85587fefc2f389d693987bdbe01b330ee15fbee022f668fe58683a94` |
| 26 | `lemma` | [lpNorm_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-const-smul--efc90b0cbb1d542fc8a4825a.md) | 135 | `result-track:efc90b0cbb1d542fc8a4825a08a9476952d67e1e5936eaceda52b837ddfa5f8b` |
| 27 | `lemma` | [lpNorm_nsmul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-nsmul--ee9c0878c48e757f3a1ef513.md) | 139 | `result-track:ee9c0878c48e757f3a1ef513d919cc5888d1ff4e615049a24370e01afb639f1f` |
| 28 | `lemma` | [lpNorm_natCast_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-natcast-mul--c99af5e68824544efb2392a3.md) | 145 | `result-track:c99af5e68824544efb2392a304c20f46d48c8c158fa0930ed0bd28225de4efcd` |
| 29 | `lemma` | [lpNorm_fun_natCast_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-fun-natcast-mul--2202cded250f9467d99ff497.md) | 149 | `result-track:2202cded250f9467d99ff497cc8a3d24436de87af4dd61af347a1041a60260a2` |
| 30 | `lemma` | [lpNorm_mul_natCast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-mul-natcast--62cc45e69bf1eb5ec57a2873.md) | 152 | `result-track:62cc45e69bf1eb5ec57a28737e8ab01d98b03326ffd15651010780e19a4d9ede` |
| 31 | `lemma` | [lpNorm_fun_mul_natCast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-fun-mul-natcast--31bb15f8afc242278eb06dfe.md) | 156 | `result-track:31bb15f8afc242278eb06dfed43a450220dd4b64d324ac5e9b674e5a453043d6` |
| 32 | `lemma` | [lpNorm_div_natCast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-div-natcast--f51f780062163fdc1cfa5613.md) | 159 | `result-track:f51f780062163fdc1cfa5613db886b1140a945d80a2685862357cc24d0e8160c` |
| 33 | `lemma` | [lpNorm_fun_div_natCast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-fun-div-natcast--395393f97a06fc84520596a0.md) | 163 | `result-track:395393f97a06fc84520596a0fa8a4ac94789d536e1fd5ec7a179d85375d98fc8` |
| 34 | `lemma` | [lpNorm_add_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-add-le--8ba68928c72aa082bdea1780.md) | 168 | `result-track:8ba68928c72aa082bdea1780b1161c20b5d314d19c7c38f108202e8c3d26d693` |
| 35 | `lemma` | [lpNorm_add_le'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-add-le--73a746d973be0805f3e6008d.md) | 179 | `result-track:73a746d973be0805f3e6008dd199cd35b1f7debf939bc5ebe4022e8600ae9b92` |
| 36 | `lemma` | [lpNorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-sub-le--d9144b935a0d0db3d15477e5.md) | 183 | `result-track:d9144b935a0d0db3d15477e51df50ed9f9dbbab340190abe079b4d7f51f48787` |
| 37 | `lemma` | [lpNorm_le_lpNorm_add_lpNorm_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-le-lpnorm-add-lpnorm-sub--764edb0ac0101d6b6925bd67.md) | 187 | `result-track:764edb0ac0101d6b6925bd67c899070ad0b002dc880255a9eb1ef13bd2e0ac01` |
| 38 | `lemma` | [lpNorm_le_lpNorm_add_lpNorm_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-le-lpnorm-add-lpnorm-sub--85c69def80fc0ba25c45e18e.md) | 191 | `result-track:85c69def80fc0ba25c45e18e942caaaaa5dca751677dd4b00ac95294979c509d` |
| 39 | `lemma` | [lpNorm_le_add_lpNorm_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-le-add-lpnorm-add--94dd2ca79e9205068fd4a067.md) | 195 | `result-track:94dd2ca79e9205068fd4a067c2c428847a8abd24a60fdee2b3e6adb7f1a4ba21` |
| 40 | `lemma` | [lpNorm_sub_le_lpNorm_sub_add_lpNorm_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-sub-le-lpnorm-sub-add-lpnorm-sub--89556e7ac4586da41ace2d54.md) | 199 | `result-track:89556e7ac4586da41ace2d5486a42b0801e13559694f98eaaf927860cc3a1b5a` |
| 41 | `lemma` | [lpNorm_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-sum-le--c8a54c92115b8af05bab7218.md) | 203 | `result-track:c8a54c92115b8af05bab72185904d1036f2af04bb3ed7352001bcc41f7a9e8fa` |
| 42 | `lemma` | [lpNorm_expect_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-expect-le--efbc924ce01607adfa3dee4f.md) | 211 | `result-track:efbc924ce01607adfa3dee4fe485e33d00f894048db340a09d79aa11ac1edf1c` |
| 43 | `lemma` | [lpNorm_mono_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-mono-real--a334574b4b5749ef06cc8d12.md) | 220 | `result-track:a334574b4b5749ef06cc8d129763a74fb11bbd123bb276b23c0694430569d096` |
| 44 | `lemma` | [lpNorm_smul_measure_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-smul-measure-of-ne-zero--c5968ad1b985be6e5f9cf57d.md) | 227 | `result-track:c5968ad1b985be6e5f9cf57d9463c9c2a430173ac8282dbcf47c35c332d30e42` |
| 45 | `lemma` | [lpNorm_smul_measure_of_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-smul-measure-of-ne-top--91fc61914aeaa0826c812d71.md) | 232 | `result-track:91fc61914aeaa0826c812d71181d7e9fdc9b8d65813e559a753d49e27550d299` |
| 46 | `lemma` | [lpNorm_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/declarations/lpnorm-conj--4b744aca70b7324fb3261624.md) | 246 | `result-track:4b744aca70b7324fb3261624491d3122a5d59d1d885b77f3b801940e8bb9e4dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
