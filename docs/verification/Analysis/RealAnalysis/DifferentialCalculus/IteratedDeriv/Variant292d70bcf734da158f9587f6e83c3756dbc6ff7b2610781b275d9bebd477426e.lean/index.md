# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IteratedDeriv.Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b49cb2f6eace3a21f0236f53bbe57cdf91c60b76",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b49cb2f6eace3a21f0236f53bbe57cdf91c60b76`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiffDef` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderiv--aded9b5028c218e892632db5.md) | 67 | `declaration-track:aded9b5028c218e892632db50070480273dea70ab29e746ddb90d73dada7b67f` |
| 2 | `def` | [iteratedDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderivwithin--b60f3520c65f5afdcb0af587.md) | 73 | `declaration-track:b60f3520c65f5afdcb0af587f695165472a6e67ea07efebbbd6378f46dbfaa9a` |
| 3 | `theorem` | [iteratedDerivWithin_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderivwithin-univ--9cd5ad690f7097002b3c8ea9.md) | 79 | `result-track:9cd5ad690f7097002b3c8ea997b46f71cd13c5f7650791e2df2d3c084d566154` |
| 4 | `theorem` | [iteratedDerivWithin_eq_iteratedFDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderivwithin-eq-iteratedfderivwithin--305b5e51a7e765f033b89559.md) | 87 | `result-track:305b5e51a7e765f033b89559e31fe9f6a7e20e0fca04eee94c7d69656fa00e48` |
| 5 | `theorem` | [iteratedDerivWithin_eq_equiv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderivwithin-eq-equiv-comp--1818449b6e83b7935e67c429.md) | 94 | `result-track:1818449b6e83b7935e67c429b6ab49855941ff776711875cd1113edf8e3c4d1b` |
| 6 | `theorem` | [iteratedFDerivWithin_eq_equiv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedfderivwithin-eq-equiv-comp--4648fb0032cdac46930da42f.md) | 101 | `result-track:4648fb0032cdac46930da42f4c5dedc6abc32d54869ad9a8bef6ec00ef779163` |
| 7 | `theorem` | [iteratedFDerivWithin_apply_eq_iteratedDerivWithin_mul_prod](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedfderivwithin-apply-eq-iteratedderivwithin-mul-prod--68ed9e5d76887a82f3674455.md) | 110 | `result-track:68ed9e5d76887a82f3674455adad24def5a4f0a681928a0222e105a5e53e1969` |
| 8 | `theorem` | [norm_iteratedFDerivWithin_eq_norm_iteratedDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/norm-iteratedfderivwithin-eq-norm-iteratedderivwithin--281c9e3cc6f5f6e3678ad2e2.md) | 117 | `result-track:281c9e3cc6f5f6e3678ad2e25143be3d844ff866eb46f0145cbc4ef0c8120b22` |
| 9 | `theorem` | [iteratedDerivWithin_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderivwithin-zero--6e337ca2e4fd68ecba5508ac.md) | 123 | `result-track:6e337ca2e4fd68ecba5508acf00b65d2e0cac9a41d20c6a263283673f178c985` |
| 10 | `theorem` | [iteratedDerivWithin_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderivwithin-one--44be970b773b9dfdbd55b357.md) | 129 | `result-track:44be970b773b9dfdbd55b3578c35a45e8576bbcd1f5712546093e0504cc01c11` |
| 11 | `theorem` | [contDiffOn_of_continuousOn_differentiableOn_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/contdiffon-of-continuouson-differentiableon-deriv--6bb491a384d7906e4c0b2f83.md) | 138 | `result-track:6bb491a384d7906e4c0b2f83f9d3738150097910a1c108744346ed983cfd0ad9` |
| 12 | `theorem` | [contDiffOn_of_differentiableOn_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/contdiffon-of-differentiableon-deriv--91bdb1706e60d8fdf9128c84.md) | 152 | `result-track:91bdb1706e60d8fdf9128c84dcf7744bc503296db0ec6808bef4f0ff14c04118` |
| 13 | `theorem` | [ContDiffOn.continuousOn_iteratedDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/contdiffon-continuouson-iteratedderivwithin--9eeee44fe46fa8cb654b4c2c.md) | 161 | `result-track:9eeee44fe46fa8cb654b4c2cf89e3c46e8884c3965c32c65743e81aec4f9099c` |
| 14 | `theorem` | [ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/contdiffwithinat-differentiablewithinat-iteratedderivwithin--14f0988d9c2c57682ba4e166.md) | 167 | `result-track:14f0988d9c2c57682ba4e1667b00771534003a87f96bf0b4d6d5a5b43ead4396` |
| 15 | `theorem` | [ContDiffOn.differentiableOn_iteratedDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/contdiffon-differentiableon-iteratedderivwithin--5e2842f04aa704551c10a40a.md) | 177 | `result-track:5e2842f04aa704551c10a40a60e64bbf86ee966af841c2b4490e9c910e0ddd54` |
| 16 | `theorem` | [contDiffOn_iff_continuousOn_differentiableOn_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/contdiffon-iff-continuouson-differentiableon-deriv--587dc53e2f92d54e45250ce5.md) | 185 | `result-track:587dc53e2f92d54e45250ce5bbeb33ecd57b7d105a277aedb6812bc1522c6ecf` |
| 17 | `theorem` | [iteratedDerivWithin_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderivwithin-succ--6c70bb0f89c2917f89355ae2.md) | 194 | `result-track:6c70bb0f89c2917f89355ae2bb453fb25b5289b1d1e09cb91158e9d88a96a616` |
| 18 | `theorem` | [iteratedDerivWithin_eq_iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderivwithin-eq-iterate--fe057c1b85479907bc1cb8dd.md) | 206 | `result-track:fe057c1b85479907bc1cb8dd57ac4e78e2bac92b2e0c78f84a3abb603a8ff6c7` |
| 19 | `theorem` | [iteratedDerivWithin_succ'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderivwithin-succ--83be5fe5be924c44d935d207.md) | 216 | `result-track:83be5fe5be924c44d935d20765ae06e0f04f88f121d6055b5cf97d5e8b2e2c9c` |
| 20 | `theorem` | [iteratedDeriv_eq_iteratedFDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderiv-eq-iteratedfderiv--1d16e82742f0563f15c2ac22.md) | 224 | `result-track:1d16e82742f0563f15c2ac22fd09eadd46012e3206ac5d26757ff419e84dbbdb` |
| 21 | `theorem` | [iteratedDeriv_eq_equiv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderiv-eq-equiv-comp--27d47cea0ad54193790eb0f0.md) | 231 | `result-track:27d47cea0ad54193790eb0f086d67b0504fbb59939240dbb4588317f12c47eee` |
| 22 | `theorem` | [iteratedFDeriv_eq_equiv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedfderiv-eq-equiv-comp--00be2fa024c47712bdb2d693.md) | 238 | `result-track:00be2fa024c47712bdb2d693f072ecdf7be3d7d3db796c6fa1fc013007ff0ca2` |
| 23 | `theorem` | [iteratedFDeriv_apply_eq_iteratedDeriv_mul_prod](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedfderiv-apply-eq-iteratedderiv-mul-prod--afafde39801cedcd7ae231b8.md) | 246 | `result-track:afafde39801cedcd7ae231b8aaea30bd7dc2e27de4af8247d36f513032ef5113` |
| 24 | `theorem` | [norm_iteratedFDeriv_eq_norm_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/norm-iteratedfderiv-eq-norm-iteratedderiv--b2b5da60c5fdb89bfca395ee.md) | 251 | `result-track:b2b5da60c5fdb89bfca395ee3f16ede98e322056feb337250386c34b08afbd06` |
| 25 | `theorem` | [iteratedDeriv_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderiv-zero--10cb4fd4320faa0d7c83a96e.md) | 257 | `result-track:10cb4fd4320faa0d7c83a96ed93034d0b1bd121630cc622acbb8f57fddc1b944` |
| 26 | `theorem` | [iteratedDeriv_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderiv-one--c310237dd92dd42ee9d4d24c.md) | 261 | `result-track:c310237dd92dd42ee9d4d24c11ea3c686b222707d5cee228df3c7e858f323a88` |
| 27 | `theorem` | [contDiff_iff_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/contdiff-iff-iteratedderiv--8b94bf8b6ff371768b44de33.md) | 266 | `result-track:8b94bf8b6ff371768b44de335f2312705b6e8b057f6cc5e84d3407306e2d3753` |
| 28 | `theorem` | [contDiff_of_differentiable_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/contdiff-of-differentiable-iteratedderiv--86e32b5280270242240209f5.md) | 278 | `result-track:86e32b5280270242240209f5f63b67b7f5493de08a10d15bf50696ee27c319a4` |
| 29 | `theorem` | [ContDiff.continuous_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/contdiff-continuous-iteratedderiv--99c4df40506079a983ab0c40.md) | 283 | `result-track:99c4df40506079a983ab0c404bc5caa584f5598bd40fdd6c503038f742ef1534` |
| 30 | `theorem` | [ContDiff.differentiable_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/contdiff-differentiable-iteratedderiv--22d117208c3b6a66ab38537e.md) | 288 | `result-track:22d117208c3b6a66ab38537ee73e07c2262b52655929a87eff8f0c7db1140abe` |
| 31 | `theorem` | [iteratedDeriv_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderiv-succ--2f9b28f84528babc3b06c145.md) | 295 | `result-track:2f9b28f84528babc3b06c14577c9ae4676ea37c961fb59d6ea558fefc2df1020` |
| 32 | `theorem` | [iteratedDeriv_eq_iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderiv-eq-iterate--560394daa37a8a4e7b1056d1.md) | 303 | `result-track:560394daa37a8a4e7b1056d19359f93531af9d41019a3ebb7cf91e62ef7a3f59` |
| 33 | `theorem` | [iteratedDeriv_succ'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/declarations/iteratedderiv-succ--65f151eab46edcf0f6844adf.md) | 312 | `result-track:65f151eab46edcf0f6844adfc6fecd6698e275d443850e6de34c16329e21287b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
