# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMuntzMellinDomain.Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba4551e3cf89ec7f5b81d331684b70c199704721",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba4551e3cf89ec7f5b81d331684b70c199704721`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexMuntz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/complexmuntz--980c1780211d589b1ef1fa99.md) | 16 | `declaration-track:980c1780211d589b1ef1fa991ffa6055fe63f70439b4db95b4de52f4d0198a7b` |
| 2 | `def` | [complexSource](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/complexsource--958533eac45f95ce63c4212b.md) | 18 | `declaration-track:958533eac45f95ce63c4212bfc7d9786179f84b3129a967e71a0ff7d4be7425d` |
| 3 | `theorem` | [complexMuntz_measurable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/complexmuntz-measurable--aae8d360860188cc12d12580.md) | 20 | `result-track:aae8d360860188cc12d125808a321a682d4fce203c9f94a91a02b154ab1c7812` |
| 4 | `theorem` | [complexMuntz_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/complexmuntz-integrable--7bfb58bbe7ff773fd9decd11.md) | 24 | `result-track:7bfb58bbe7ff773fd9decd11c6e2a36819a48e616eb93400fc7329ae4267fb63` |
| 5 | `theorem` | [complexMuntz_top_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/complexmuntz-top-decay--7d5a9d12a17344d6592d44f6.md) | 42 | `result-track:7d5a9d12a17344d6592d44f676b9a9f519364e0084ae7169ecce953d2ca366de` |
| 6 | `theorem` | [complexMuntz_zero_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/complexmuntz-zero-bound--97402e25249cbf5737c10605.md) | 48 | `result-track:97402e25249cbf5737c10605ff6ffb5b68a6703a94bdf1e1be973e1e000c9c55` |
| 7 | `theorem` | [actual_muntz_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/actual-muntz-mellinconvergent--d8a0e8289698f7a8fa12c116.md) | 56 | `result-track:d8a0e8289698f7a8fa12c116a144bfb1e7f85e892d73b1460b465fe418d89e97` |
| 8 | `theorem` | [actual_muntz_mellin_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/actual-muntz-mellin-hasderivat--b399789d6811516c67582fdf.md) | 63 | `result-track:b399789d6811516c67582fdf6f4d609b89da8f6f693c4e3d4693fbccb4910beb` |
| 9 | `theorem` | [actual_muntz_mellin_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/actual-muntz-mellin-analytic--64e0c58e6f4eb3c0e0f24d78.md) | 72 | `result-track:64e0c58e6f4eb3c0e0f24d787da87031a2130b61f52742583142e7088dfc4c8c` |
| 10 | `theorem` | [complexSource_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/complexsource-integrable--0bf9acc64f83b55e926f1180.md) | 78 | `result-track:0bf9acc64f83b55e926f1180632aafae55a3c0f9619932c08fa5d70bc7864645` |
| 11 | `theorem` | [complexSource_top_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/complexsource-top-decay--98330c6143ca1a86f63aa1a9.md) | 82 | `result-track:98330c6143ca1a86f63aa1a914452bd4b25bfb47380a9bbc0d5b9e40043fc2b7` |
| 12 | `theorem` | [complexSource_zero_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/complexsource-zero-decay--feabd9afe97cfb3a75efb932.md) | 88 | `result-track:feabd9afe97cfb3a75efb932afd202d2d16c91986aede6ae2343b10d4c9e9eb0` |
| 13 | `theorem` | [actual_source_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/actual-source-mellinconvergent--6cc484a2ca85102ece1d6370.md) | 96 | `result-track:6cc484a2ca85102ece1d637021f0f3f3a4482840ed359726473c171587a0375f` |
| 14 | `theorem` | [actual_source_mellin_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/actual-source-mellin-hasderivat--5f2bdad3f97f88762fa1cdd5.md) | 103 | `result-track:5f2bdad3f97f88762fa1cdd504b5631060b96af53532714bf2045c0907090111` |
| 15 | `theorem` | [actual_source_mellin_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/actual-source-mellin-differentiable--0a1b1d4c3b3a441810e6efea.md) | 112 | `result-track:0a1b1d4c3b3a441810e6efead4a4494af2fca2acdf3468cec78f72f13aa81568` |
| 16 | `theorem` | [actual_source_mellin_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/declarations/actual-source-mellin-one--e64e80844b1697e737c872de.md) | 116 | `result-track:e64e80844b1697e737c872dedeb5c803d0f766852573b4ed4a8f05d10b20acf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
