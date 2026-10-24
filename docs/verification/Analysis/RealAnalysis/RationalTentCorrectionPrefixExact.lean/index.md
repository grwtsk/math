# Verification target: GRWTSK.Analysis.Real.RationalTentCorrectionPrefixExact

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "410b2a3dc873896136a17bdb5985d2b8d1d33ff1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/RationalTentCorrectionPrefixExact.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `410b2a3dc873896136a17bdb5985d2b8d1d33ff1`.

Source path: `GRWTSK/Analysis/Real/RationalTentCorrectionPrefixExact.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/RationalTentCorrectionPrefixExact.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.RationalTentCorrectionLowerBound`](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.Deriv.ZPow` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oddExponent](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/oddexponent--4c2f53e6932e53c63e3ef215.md) | 54 | `declaration-track:4c2f53e6932e53c63e3ef2155086047df5d7d84a5a1f07028c1b8dffcc01333e` |
| 2 | `theorem` | [oddExponent_pos](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/oddexponent-pos--58e116b513d18080159afb1d.md) | 56 | `result-track:58e116b513d18080159afb1d39afd612142f5f08e0442d1683a7e845a719710b` |
| 3 | `def` | [densityTerm](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/densityterm--f68b44e4a8cfdb80fb2ed43b.md) | 61 | `declaration-track:f68b44e4a8cfdb80fb2ed43bfdf26d1fd0ca187f2ba45e7522706eaf7ed1b7a7` |
| 4 | `def` | [primitive](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/primitive--a927733373e917d978a54d35.md) | 65 | `declaration-track:a927733373e917d978a54d35d106d5c3e75da3eb1d0af24a2542e19541a973c6` |
| 5 | `def` | [primitiveSlope](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/primitiveslope--dd6e54630b442c3eab792a2d.md) | 71 | `declaration-track:dd6e54630b442c3eab792a2d72356ec17b60c72ca794f96d02abc1cc0ea08a20` |
| 6 | `theorem` | [hasDerivAt_primitive](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/hasderivat-primitive--bcbbcae59f90259282e26c2b.md) | 77 | `result-track:bcbbcae59f90259282e26c2bcb23dc704e86329d43f3c7f115e470f131f9b24e` |
| 7 | `theorem` | [hasDerivAt_primitiveSlope](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/hasderivat-primitiveslope--0caa665618188d5a14c2250f.md) | 85 | `result-track:0caa665618188d5a14c2250f0eaf2adc78b7bcebfdf6fec4c4ef2b2ba28e509b` |
| 8 | `theorem` | [densityTerm_continuousOn](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/densityterm-continuouson--7efd333cfe7e4d7a9725b051.md) | 114 | `result-track:7efd333cfe7e4d7a9725b051d5b858c27232fd775aa5eb3ea16ad1cdaf1d240f` |
| 9 | `theorem` | [integral_tent_of_second_antiderivative](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/integral-tent-of-second-antiderivative--42fbd5707c12d32091f45ea2.md) | 125 | `result-track:42fbd5707c12d32091f45ea23ca6bcfc6ec61b19ee06283ea3bc33ab46a5f1a2` |
| 10 | `def` | [termR](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/termr--d974becc3387b273fe670d99.md) | 177 | `declaration-track:d974becc3387b273fe670d9916cc178ea15886f37c94a4786f6b3b3216599e79` |
| 11 | `def` | [termQ](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/termq--6367d188d2ef78659a014966.md) | 181 | `declaration-track:6367d188d2ef78659a014966fbe2f896f5feee67b84e351a7ec3098a732f0fe9` |
| 12 | `theorem` | [cast_termQ](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/cast-termq--9547c6f087843e78d1528d14.md) | 188 | `result-track:9547c6f087843e78d1528d14b50be98f6cb6baf4d531da9ec17f20a75470505d` |
| 13 | `theorem` | [integral_tent_densityTerm](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/integral-tent-densityterm--e0c71421bdacdd0012e575c9.md) | 199 | `result-track:e0c71421bdacdd0012e575c976111c7df47c88984e6ed9f5f10d543231f85be3` |
| 14 | `def` | [prefixValueQ](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/prefixvalueq--624b99162eb263353959e95f.md) | 233 | `declaration-track:624b99162eb263353959e95f05fa971631f01e1ae171169980cc48b3b4f78aa6` |
| 15 | `theorem` | [prefixValueQ_eq_neg_sum](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/prefixvalueq-eq-neg-sum--0d4c2cafc16295339abe6b5d.md) | 238 | `result-track:0d4c2cafc16295339abe6b5dd62e643c6c6257c8838754fe49447d79364cbedb` |
| 16 | `theorem` | [prefixValueQ_exact](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/prefixvalueq-exact--42db71c400c1a10bf1dc1c31.md) | 248 | `result-track:42db71c400c1a10bf1dc1c31db343b34e524440a9d16c1f8637342b0c1319d66` |
| 17 | `theorem` | [exactPrefixEnclosure](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/exactprefixenclosure--fe88146c7ed2357238f01dc7.md) | 286 | `result-track:fe88146c7ed2357238f01dc7f5294c7196c4420411c2f2ea67ddb0251a84eba1` |
| 18 | `def` | [verifyExact](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/verifyexact--71f7ba0ea60c51bbf256c4d7.md) | 294 | `declaration-track:71f7ba0ea60c51bbf256c4d7cbdcd63075a6b76484560f1825961ef8e4e893e4` |
| 19 | `theorem` | [verifyExact_sound](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/verifyexact-sound--ced3d4959c934eeb6a9a32a0.md) | 300 | `result-track:ced3d4959c934eeb6a9a32a01c1c5fd67678e3d39b6f02dbb539e4a3bd9237ce` |
| 20 | `theorem` | [verifyExact_floor_sound](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/declarations/verifyexact-floor-sound--8ff8c358ee97ebd169410afd.md) | 319 | `result-track:8ff8c358ee97ebd169410afd328528dc1ed6608a3ebecf705abcb2a45b4a3e21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
