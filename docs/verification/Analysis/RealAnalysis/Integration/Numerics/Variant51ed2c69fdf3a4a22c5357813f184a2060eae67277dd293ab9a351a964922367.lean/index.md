# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Numerics.Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eae5fa33ca6515bcd439bb08b33305d9e7d67c6c",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eae5fa33ca6515bcd439bb08b33305d9e7d67c6c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Integrate` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimize` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Main` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalRefined` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constOne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/constone--49ca834936d76b7c6259f99a.md) | 42 | `declaration-track:49ca834936d76b7c6259f99a192b663946274e6ea1fdd048e20b07f1ca9a0afe` |
| 2 | `def` | [constOne_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/constone-supported--d62ff78972be17e35f906ae3.md) | 45 | `declaration-track:d62ff78972be17e35f906ae3c37761c740f30abf8bd9f3158bac24a257e4ab9a` |
| 3 | `def` | [identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/identity--8389c5fd4833aba20a3ff4cb.md) | 48 | `declaration-track:8389c5fd4833aba20a3ff4cbd6bdf8c9c400fd8eb500af568db6a6571f432aa2` |
| 4 | `def` | [identity_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/identity-supported--0eb0f811a0ae2363916fd479.md) | 51 | `declaration-track:0eb0f811a0ae2363916fd4793f94be1b0c3b601d0325979b234d27fce6e0c590` |
| 5 | `def` | [xSquared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/xsquared--c2505d1ba075466c6e0ad5ad.md) | 54 | `declaration-track:c2505d1ba075466c6e0ad5adbbb5fe3e836e1f4712385507919ecb558f4289d9` |
| 6 | `def` | [xSquared_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/xsquared-supported--c58145a08ce3307704cf9b23.md) | 57 | `declaration-track:c58145a08ce3307704cf9b23d216b2585da0b4ed5541bba76de1a4aa1f6587ef` |
| 7 | `def` | [unitInterval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/unitinterval--8035e6f82704e3c59ebe9714.md) | 61 | `declaration-track:8035e6f82704e3c59ebe9714bf4dda3e19738db2f13ff15773d61bfa1ab13c41` |
| 8 | `def` | [constOne_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/constone-integral-bound--296c58c1d1a40534a094eb73.md) | 73 | `declaration-track:296c58c1d1a40534a094eb736e704e5a484c3e16cbe3ea6ca21c110e9142b05e` |
| 9 | `theorem` | [constOne_integral_verified](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/constone-integral-verified--744126d5d5b7b5c0ce2bcfae.md) | 79 | `result-track:744126d5d5b7b5c0ce2bcfae30c7429b0ee30edc5b2960d61be4360f9fff0a94` |
| 10 | `def` | [xSquared_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/xsquared-integral-bound--7495ca683245c1e723b4202c.md) | 94 | `declaration-track:7495ca683245c1e723b4202c9fac8b4342fbd8501da5b5eeb4b156942a9974df` |
| 11 | `theorem` | [xSquared_integral_verified](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/xsquared-integral-verified--1d1f33754bbf71952034699d.md) | 98 | `result-track:1d1f33754bbf71952034699dbbd50e7960e2b6d9f95d00281cd20691adf23461` |
| 12 | `def` | [exprSin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/exprsin--35d19fa81a9f8ea7c9f20bd1.md) | 112 | `declaration-track:35d19fa81a9f8ea7c9f20bd149fcc6a5b24b21d7a291e79b7c76ecd0ac469969` |
| 13 | `def` | [exprSin_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/exprsin-supported--2f8b36a81e7985310e168dac.md) | 115 | `declaration-track:2f8b36a81e7985310e168dacf50937e0cdd41d7141418ecb60573eac04ae2a81` |
| 14 | `def` | [sin_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/sin-integral-bound--d344a98baace4c5687fa30f9.md) | 119 | `declaration-track:d344a98baace4c5687fa30f9170b7c10548c40cf9431d1742749a021444ffd90` |
| 15 | `theorem` | [sin_integral_verified](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/sin-integral-verified--eb1b0b6c4e5e914ae3c13eae.md) | 123 | `result-track:eb1b0b6c4e5e914ae3c13eae47be0587937ccc20733887c8f5266416430d69ac` |
| 16 | `def` | [quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/quadratic--bd2537da3eeee9004a540396.md) | 137 | `declaration-track:bd2537da3eeee9004a540396b88c1cee2deea701958acae3bece91b06948259e` |
| 17 | `def` | [xSquaredMinus2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/xsquaredminus2--950ccbe26b730dcd4cd077d2.md) | 149 | `declaration-track:950ccbe26b730dcd4cd077d27628aa15f8cbd2f53ffd9f698ee5e7b88249da15` |
| 18 | `def` | [searchInterval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/searchinterval--189141092fe4e1978d9d3aaa.md) | 153 | `declaration-track:189141092fe4e1978d9d3aaaec68f596d7673b23fd8b49439f23c9d469f5c751` |
| 19 | `def` | [xSquaredMinus2_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/xsquaredminus2-supported--303ad1b22ddcea88f9ab8bbb.md) | 156 | `declaration-track:303ad1b22ddcea88f9ab8bbb8f59e3d1eff0ad1eb851220b77ea6ba239478dd7` |
| 20 | `def` | [sqrt2_bisect_result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/sqrt2-bisect-result--375ce201f8ae09f177e3cdc4.md) | 168 | `declaration-track:375ce201f8ae09f177e3cdc40670ced55cfa86eb25f0a333301cee213e49df40` |
| 21 | `theorem` | [xSquaredMinus2_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/xsquaredminus2-continuous--499f6e2a3726558cd42ca277.md) | 172 | `result-track:499f6e2a3726558cd42ca2779535badb60a73882ae4c0d40e6e3042fefa392c7` |
| 22 | `theorem` | [sqrt2_bisect_hasRoot_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/sqrt2-bisect-hasroot-correct--44153111e0e03d9020cee699.md) | 183 | `result-track:44153111e0e03d9020cee69994c59b800a35b50c47ac4ae2db52fbec791fa195` |
| 23 | `def` | [quadratic_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/quadratic-supported--7f682005067268baaf10f040.md) | 197 | `declaration-track:7f682005067268baaf10f0401af7e3eb47c30b60b1d2a86561c27e31ab1ac1cd` |
| 24 | `def` | [I02](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/i02--de4724f6fe96d7392e28ae4e.md) | 205 | `declaration-track:de4724f6fe96d7392e28ae4ef002534fc9839d3d44ced276d625f605f73b3711` |
| 25 | `def` | [quad_min_result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/quad-min-result--b8c1efcaaa50e0d0f33009ee.md) | 208 | `declaration-track:b8c1efcaaa50e0d0f33009ee59359d0d7a5595ac91377aa733e7b6838b188144` |
| 26 | `def` | [quadratic_var0](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/quadratic-var0--a1fcf4ef2816e08850d59ca7.md) | 212 | `declaration-track:a1fcf4ef2816e08850d59ca7df399e29a0edba5777b1284850cead8abbe5a0e9` |
| 27 | `theorem` | [quad_min_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/quad-min-correct--b79b8df4cff29209048e6066.md) | 225 | `result-track:b79b8df4cff29209048e60662ac59bbe07ffd7dcbfa922e8d6a83e8d66420d27` |
| 28 | `def` | [invX](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/invx--399ae4fd6ec364cfd2414b43.md) | 236 | `declaration-track:399ae4fd6ec364cfd2414b43ddd4083c50a92bfeb7d8bfe5e569159837da9976` |
| 29 | `def` | [invX_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/invx-supported--dd887b5afa3c6df6f750fdb5.md) | 239 | `declaration-track:dd887b5afa3c6df6f750fdb54f8d68dc2d61d42141586926b346782fbb574f10` |
| 30 | `def` | [I12](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/i12--e77f7c265fcd6c3cc64fb656.md) | 243 | `declaration-track:e77f7c265fcd6c3cc64fb6563be5bb85f0f5be3524aee9695af90bf78eadc6ae` |
| 31 | `theorem` | [I12_excludes_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/i12-excludes-zero--2ef80ad7e5db8082d397b1cf.md) | 246 | `result-track:2ef80ad7e5db8082d397b1cf295c545494dfd3f774dfbc55eef6995428c7b37b` |
| 32 | `theorem` | [invX_eval_some](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/invx-eval-some--918073b42d3fb0cd1a9a6b0f.md) | 252 | `result-track:918073b42d3fb0cd1a9a6b0f232ad10634b4f761c20c3d187fa552606d4e4bb8` |
| 33 | `theorem` | [invX_eval_succeeds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/invx-eval-succeeds--9f7b4792dd4c2083821c8122.md) | 257 | `result-track:9f7b4792dd4c2083821c8122ecb1ee94d0da3be84fe2d49a7db77948167f6ff2` |
| 34 | `def` | [invX_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/invx-bound--529537bb49e9f05d6a334f95.md) | 262 | `declaration-track:529537bb49e9f05d6a334f952ce9d63aeaa64cb6c188f69eb32e8f866eb5386b` |
| 35 | `theorem` | [invX_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/invx-correct--8d444d166e55d08d451d4bf6.md) | 269 | `result-track:8d444d166e55d08d451d4bf660a84a777cbb30abe4647a0a8a77221de4fc2de5` |
| 36 | `def` | [sinSmall_refined](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/sinsmall-refined--c4fac3de91e6f4fcd7902cc6.md) | 280 | `declaration-track:c4fac3de91e6f4fcd7902cc6fd8ca57eca20d47187b6cb71766667396dba23a2` |
| 37 | `theorem` | [sinSmall_refined_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Numerics/Variant51ed2c69fdf3a4a22c5357813f184a2060eae67277dd293ab9a351a964922367.lean/declarations/sinsmall-refined-correct--186937e77713e961a5d40a8d.md) | 284 | `result-track:186937e77713e961a5d40a8dd956fa6df5899cc282f752b2773746684e575db2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
