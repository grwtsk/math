# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fe96a4cc3b6c64b4b7e3b8885ecf7b5c63b3c91",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fe96a4cc3b6c64b4b7e3b8885ecf7b5c63b3c91`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeCriterion` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianThree` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailRankThreeNumerator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/thetatailrankthreenumerator--667a1e9d9515be73de5c6894.md) | 22 | `declaration-track:667a1e9d9515be73de5c689416b4cc221b6ec5dc5c0d610aaeb6732bfc2a3453` |
| 2 | `theorem` | [rankThree_compound_numerator_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/rankthree-compound-numerator-identity--65b44bf4f061a632a306b98f.md) | 29 | `result-track:65b44bf4f061a632a306b98feec7cd4c50a4ab456465d276c8f41c8ed44911bd` |
| 3 | `theorem` | [thetaTailRankThreeNumerator_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/thetatailrankthreenumerator-eq--3efe752a512c616ddc68c323.md) | 37 | `result-track:3efe752a512c616ddc68c323fa7e163416a2413b8593e90be812625730922a4e` |
| 4 | `theorem` | [hasDerivAt_thetaTail_compoundRatio](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/hasderivat-thetatail-compoundratio--ad8864c343968f728414df42.md) | 49 | `result-track:ad8864c343968f728414df42ea4ceccaa1cadfb25a64685be88d8a997b8c6c18` |
| 5 | `theorem` | [thetaTail_compoundRatio_antitone_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/thetatail-compoundratio-antitone-iff--f68915809696da259cd677f4.md) | 60 | `result-track:f68915809696da259cd677f4d28a58500faa6a1fc7e9ebecb479cc3d5b4ff46e` |
| 6 | `theorem` | [thetaTail012_det_nonpos_of_numerator_nonpos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/thetatail012-det-nonpos-of-numerator-nonpos--0ffcdbe79fac72a4e8d1dc4e.md) | 82 | `result-track:0ffcdbe79fac72a4e8d1dc4e66a0d1036a650139e8a6e4697e92cdc9fdea8a4a` |
| 7 | `theorem` | [thetaTailSignRegular_three_zero_one_two_of_numerator_nonpos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/thetatailsignregular-three-zero-one-two-of-numerator-nonpos--598918f714e8975489e3a83a.md) | 127 | `result-track:598918f714e8975489e3a83abbdda9125a588fc1a10982101a800001e0964787` |
| 8 | `theorem` | [thetaPhi_jet_det_nonpos_of_wronskian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/thetaphi-jet-det-nonpos-of-wronskian--ca18cc75be6919204f8e4c64.md) | 146 | `result-track:ca18cc75be6919204f8e4c646d8669613dbbbc74f933fc8cb13e4ad1a5c79700` |
| 9 | `theorem` | [thetaTailRankThreeNumerator_nonpos_of_wronskian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/thetatailrankthreenumerator-nonpos-of-wronskian--0337166b82e30907f4ce9407.md) | 164 | `result-track:0337166b82e30907f4ce94070aac9d2b5cee2564b7818edeec11d35e5057f493` |
| 10 | `theorem` | [thetaTailRankThreeNumerator_nonpos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/thetatailrankthreenumerator-nonpos--da875c6491ea0bc3bb71e340.md) | 237 | `result-track:da875c6491ea0bc3bb71e34017c75af19cebc0e90d429410644e25d2cbd68840` |
| 11 | `theorem` | [thetaTail_compoundRatio_antitone](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/thetatail-compoundratio-antitone--605f2071e75b6860a18f67e1.md) | 243 | `result-track:605f2071e75b6860a18f67e11780f963b78755a65279d30a04e3decb4cacde69` |
| 12 | `theorem` | [thetaTailSignRegular_three_zero_one_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant62fd6b47dc9f607492d1952fc3c40d8d8747407a97006e9636d589205bec6b43.lean/declarations/thetatailsignregular-three-zero-one-two--327d9a6ea399603c39b8f5ff.md) | 249 | `result-track:327d9a6ea399603c39b8f5ff13d11c5551d30a236a45c9d0e1ef1d64fc287bf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
