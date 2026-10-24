# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ClassCompleteV6.Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "874425b61e9aedcf0b58ec9f5da20f038e9d1eac",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `874425b61e9aedcf0b58ec9f5da20f038e9d1eac`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleL2Continuity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/normalizationderivative--a84abc0888879ba8053d689a.md) | 26 | `declaration-track:a84abc0888879ba8053d689acb4558836f2881ab1406394f1997e52517c98bd2` |
| 2 | `theorem` | [sourceNormalization_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/sourcenormalization-hasderivat--fa4295a5901d998de04ec855.md) | 30 | `result-track:fa4295a5901d998de04ec85562639ae3de57cf578403482ce370d3a167a72a86` |
| 3 | `theorem` | [sourceNormalization_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/sourcenormalization-deriv--130fc714db874be2fc58214b.md) | 46 | `result-track:130fc714db874be2fc58214bb99f590e87fafc33b95e4007f4b74575e4d60e88` |
| 4 | `def` | [scaleAmplitude](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scaleamplitude--9f755941a05838c90c7db228.md) | 51 | `declaration-track:9f755941a05838c90c7db22816fcbfcb2856266cf0a31b0936504d9379b656ac` |
| 5 | `theorem` | [scaleAmplitude_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scaleamplitude-eq--e4be0ec015fb73f5de3aca11.md) | 54 | `result-track:e4be0ec015fb73f5de3aca119a8550377e1846491fdeeaa3a446e1a5eeb5c41e` |
| 6 | `theorem` | [scaleProfile_eq_amplitude](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scaleprofile-eq-amplitude--285396cfa771b887d57a30a4.md) | 59 | `result-track:285396cfa771b887d57a30a4327f4a94c2e1dd6c2762bfadfc11d05df61b5541` |
| 7 | `theorem` | [scaleAmplitude_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scaleamplitude-hasderivat--6b815a927e12ba213bdac758.md) | 67 | `result-track:6b815a927e12ba213bdac7581fc43cf1dc03dcaf50deb69046d2f0be64453eb1` |
| 8 | `def` | [scaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivative--08cd2ecd8d876dd6fe856582.md) | 82 | `declaration-track:08cd2ecd8d876dd6fe8565823b2401c71972ca47cdc4bf6e92d38e16ebca0e77` |
| 9 | `theorem` | [scaleDerivative_eq_actual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivative-eq-actual--01049f2fd6194395b86c097d.md) | 91 | `result-track:01049f2fd6194395b86c097d00820bfcde175694c36756dd313e897e59665ca2` |
| 10 | `theorem` | [scaleProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scaleprofile-hasderivat--f483f1e39881d0313bbf8ef7.md) | 103 | `result-track:f483f1e39881d0313bbf8ef7228ac5682766aa881c1ec342719a3ba654d61237` |
| 11 | `theorem` | [normalizedSource_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/normalizedsource-hasderivat--1a6e3ea7dbdea16db8557b20.md) | 127 | `result-track:1a6e3ea7dbdea16db8557b20a44d88c31b13e8bee580ca6d244be77f674f7dc9` |
| 12 | `theorem` | [sourceBump_traces_zero_of_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/sourcebump-traces-zero-of-le-abs--3e581a368a21666ec6293501.md) | 135 | `result-track:3e581a368a21666ec62935014495e9d8bdf2f98e66b4c01e92a523d592e9195a` |
| 13 | `theorem` | [scaleDerivative_zero_of_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivative-zero-of-le-abs--36473cc5ecd6eeaae6d43345.md) | 149 | `result-track:36473cc5ecd6eeaae6d4334522d526be1709c97966b50f2b73d1a2242fe47e03` |
| 14 | `theorem` | [scaleDerivative_continuousAt_joint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivative-continuousat-joint--24395132b744071b512409b5.md) | 160 | `result-track:24395132b744071b512409b5aac5f369377c8ddb638c1782f9820b2672644eaf` |
| 15 | `theorem` | [scaleDerivative_continuousOn_joint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivative-continuouson-joint--c1ec3a0ce2a908f119331cfa.md) | 173 | `result-track:c1ec3a0ce2a908f119331cfa00ead35c0658b38d099fc05ab9031af4bf4bbe00` |
| 16 | `theorem` | [scaleDerivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivative-continuous--b4a0996d4c9658e263f5f440.md) | 178 | `result-track:b4a0996d4c9658e263f5f440d2445d7be94c2c77c6677b09f2be2eea2d13e172` |
| 17 | `theorem` | [scaleDerivative_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivative-hascompactsupport--ac15adb4007c4d2a19e1a7b6.md) | 186 | `result-track:ac15adb4007c4d2a19e1a7b6641bde1285c4ab51f839994aa0efd2e025f0daed` |
| 18 | `theorem` | [scaleDerivative_memLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivative-memlp--2794bd5221d400487d23bfd2.md) | 201 | `result-track:2794bd5221d400487d23bfd28c51cca237bc5516c4a86c76688badf177d92701` |
| 19 | `def` | [scaleDerivativeL2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivativel2--f3317d4f5de2565bd97ae4bb.md) | 207 | `declaration-track:f3317d4f5de2565bd97ae4bb2bf9451e23f5b25680e32a50927b52add1bea0d7` |
| 20 | `theorem` | [scaleDerivativeL2_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivativel2-coe-ae--80d0f78b3c919406b1754a73.md) | 211 | `result-track:80d0f78b3c919406b1754a730bf69208b780261329ac2679f81a4a577b97eb88` |
| 21 | `theorem` | [local_source_derivative_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/local-source-derivative-zero--1de5183c3cb955c263b5053d.md) | 221 | `result-track:1de5183c3cb955c263b5053df2b3236ac5eee129b44d0fcb4db6ff4fdad001e9` |
| 22 | `theorem` | [local_scaleDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/local-scalederivative-bound--eecc6a227c5694baab57a1e6.md) | 230 | `result-track:eecc6a227c5694baab57a1e663e6eb8ecad4012636398d5fa3bd89015d30806c` |
| 23 | `def` | [scaleDerivativeState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivativestate--6765566ceda0be630969701c.md) | 254 | `declaration-track:6765566ceda0be630969701c9981f6da5227206bd7ca4aa34deaf985ebcbcf1b` |
| 24 | `theorem` | [scaleDerivativeState_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivativestate-eq--e36d15c7e9b28c7c1c7e7e27.md) | 258 | `result-track:e36d15c7e9b28c7c1c7e7e279e0d0056a22ea6965ef87219501bdab42c53e26a` |
| 25 | `theorem` | [scaleDerivativeState_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivativestate-coe-ae--b78115cfa6e9a1a248efe782.md) | 263 | `result-track:b78115cfa6e9a1a248efe78264493709cc145d9115ee133a5d18b5fda82b878d` |
| 26 | `theorem` | [scaleDerivativeState_norm_sub_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivativestate-norm-sub-sq--68f92d9df27640e9084cf521.md) | 269 | `result-track:68f92d9df27640e9084cf52185705cf717d857b9fc1adff113cbfc2548c8433f` |
| 27 | `theorem` | [scaleDerivative_differenceIntegral_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivative-differenceintegral-continuouson--a2e69cde422c61f7903590fa.md) | 290 | `result-track:a2e69cde422c61f7903590faf9f29e711a1f348dccad92ce5ae8dfb72f7a2867` |
| 28 | `theorem` | [scaleDerivativeState_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivativestate-continuousat--cb3b2669aeee12045fcd5ddd.md) | 314 | `result-track:cb3b2669aeee12045fcd5dddb77e3182c8b3879be00af72ed5f4ed33ba064a7b` |
| 29 | `theorem` | [scaleDerivativeState_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/declarations/scalederivativestate-continuouson--f015cd336f7bc51939eff940.md) | 334 | `result-track:f015cd336f7bc51939eff9402226405f514df94830b332493b4ab2a9fa454d41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
