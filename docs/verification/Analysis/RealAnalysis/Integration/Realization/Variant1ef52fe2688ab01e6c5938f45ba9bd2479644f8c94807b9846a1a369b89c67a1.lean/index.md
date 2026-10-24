# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Realization.Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23de5ccd1216a98148d99dcea23eb55e212c545d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23de5ccd1216a98148d99dcea23eb55e212c545d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpInterior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/bumpinterior--f3e0d88d97f289de037a1517.md) | 30 | `declaration-track:f3e0d88d97f289de037a1517e141f5b6f991962f6168d7e6b684c2f40638db07` |
| 2 | `def` | [firstInterior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/firstinterior--798f469a0416ee445de4bd2f.md) | 33 | `declaration-track:798f469a0416ee445de4bd2f0e69aa89c26419939ae1cf84601bf3e73cd27c21` |
| 3 | `def` | [secondInterior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/secondinterior--05c198882e03804d6700e314.md) | 38 | `declaration-track:05c198882e03804d6700e314feaa5f3bdf3938e04f814bfd4b561048bb4b4a18` |
| 4 | `def` | [explicitSecondDerivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/explicitsecondderivative--7baf573a0dc4738339c1a5b8.md) | 43 | `declaration-track:7baf573a0dc4738339c1a5b887cd182b0680ca461a08ca70229c74859a635ec7` |
| 5 | `theorem` | [scaledBump_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/scaledbump-eq-indicator--87f3a5ecb736e05fb6b2479a.md) | 47 | `result-track:87f3a5ecb736e05fb6b2479a4e7eda423a03b477b6c51e436f3feb01dc3e2622` |
| 6 | `theorem` | [bumpInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/bumpinterior-continuous--4bf3fe6328a60252710a3450.md) | 57 | `result-track:4bf3fe6328a60252710a3450706642b3e905bf0ca16f57b138ae5f915ce41e50` |
| 7 | `theorem` | [firstInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/firstinterior-continuous--942bcdad81f4c8b58151eb7c.md) | 62 | `result-track:942bcdad81f4c8b58151eb7c30968275cdf18254c2cbe4b979f8f61f4fe82db2` |
| 8 | `theorem` | [secondInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/secondinterior-continuous--3509f5e7375dc1db57001457.md) | 67 | `result-track:3509f5e7375dc1db570014573e5825770988d932e1ef6827d874f375282825f1` |
| 9 | `theorem` | [bumpInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/bumpinterior-hasderivat--303c49b7de5cae718fe06c67.md) | 72 | `result-track:303c49b7de5cae718fe06c677190cc1904d06a39ace1eb367e60a81d6cf41d1a` |
| 10 | `theorem` | [firstInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/firstinterior-hasderivat--c5ae887b0ea41658cb801821.md) | 82 | `result-track:c5ae887b0ea41658cb8018214c8a1677c0da4d3241cf3da0a0e84cedb7caa19b` |
| 11 | `theorem` | [bumpInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/bumpinterior-endpoints--6a1783d2f079e5655f7759ae.md) | 94 | `result-track:6a1783d2f079e5655f7759aecb25f38092b367edccda4355d592a23fa3de072b` |
| 12 | `theorem` | [firstInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/firstinterior-endpoints--3817cf22f3f75ac6d45901fa.md) | 99 | `result-track:3817cf22f3f75ac6d45901fa1cce46421baf5a53331323f01aad501f81334e0b` |
| 13 | `theorem` | [secondInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/secondinterior-endpoints--bc7da48a08c76054dbf2c93d.md) | 104 | `result-track:bc7da48a08c76054dbf2c93df94675113107697d812c6cd4d34fdf0130c81732` |
| 14 | `theorem` | [integrable_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/integrable-zeroextension--eb3fdaf989464d822bea6126.md) | 109 | `result-track:eb3fdaf989464d822bea61263e148b76cdc3e500abeaec041741576f7d893e75` |
| 15 | `theorem` | [zeroExtension_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/zeroextension-integral--c60c08a62ac818d07fe37444.md) | 114 | `result-track:c60c08a62ac818d07fe37444fd68f3cd45a0ca6c66d790005e14e7f781355506` |
| 16 | `theorem` | [scaledBump_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/scaledbump-integrable--632d6fa82222f45bfd96af06.md) | 120 | `result-track:632d6fa82222f45bfd96af06b90510b37ffd989ad7ef81fd501d8b6b035f8d05` |
| 17 | `theorem` | [explicitSecondDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/explicitsecondderivative-integrable--2721dcd59e18a09219c5db0c.md) | 126 | `result-track:2721dcd59e18a09219c5db0ceed21da3112d9894090d967bf010a8f7506e2ba2` |
| 18 | `theorem` | [scaledBump_weak_second_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/scaledbump-weak-second-derivative--abfaccc6bcfb58a5a7106f31.md) | 132 | `result-track:abfaccc6bcfb58a5a7106f3178bcc1cd21aa3846dca72b79a2333fb492900ff6` |
| 19 | `theorem` | [explicit_dilationTest_zero_extension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/explicit-dilationtest-zero-extension--bea4c0d8c46443a92d45abc0.md) | 175 | `result-track:bea4c0d8c46443a92d45abc01d9049721355ad1d76be81676818371abb4990e8` |
| 20 | `theorem` | [explicit_dilationTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/explicit-dilationtest-integrable--bffc461158f51d18b4c97872.md) | 183 | `result-track:bffc461158f51d18b4c97872a92ddc878999c895858130eee9ef2a8d17b32a5e` |
| 21 | `theorem` | [explicit_dilationTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/explicit-dilationtest-eq-indicator--250b7d977dfbfbc815a73786.md) | 190 | `result-track:250b7d977dfbfbc815a73786ede2752e9216011c4527cd375508b0a72bcf4845` |
| 22 | `theorem` | [explicit_dilationTest_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/declarations/explicit-dilationtest-square-integrable--f13e42f636a85c72f57343da.md) | 199 | `result-track:f13e42f636a85c72f57343da453a6b993883945db370b27b6eb7f64ed336f172` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
