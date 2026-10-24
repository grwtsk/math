# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GevreyRamps.Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52b7f6d2bfef7d2c4c681ff0d256003749e77ca6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52b7f6d2bfef7d2c4c681ff0d256003749e77ca6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Taper.Gevrey` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.GevreyPhi` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.Taper` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [GevreyProfile.iteratedDeriv_eq_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/gevreyprofile-iteratedderiv-eq-zero--ab53ba17c3d8cd49634f92af.md) | 38 | `result-track:ab53ba17c3d8cd49634f92af55505bc868105417bb412dd6083d0465f056c15e` |
| 2 | `lemma` | [GevreyProfile.abs_iteratedDeriv_le_indicator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/gevreyprofile-abs-iteratedderiv-le-indicator--559baba5b1de835b1fbdd53e.md) | 67 | `result-track:559baba5b1de835b1fbdd53e0b69e4ceeb4b34ff919f0e20cc6abf84bb48bb78` |
| 3 | `lemma` | [iteratedDeriv_ofReal_comp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/iteratedderiv-ofreal-comp--4356a03ea7d74c1d2a727977.md) | 75 | `result-track:4356a03ea7d74c1d2a7279774f300725f90943f925b788258a9ddcb83e16757d` |
| 4 | `def` | [fP](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/fp--77fe7481f4d4d2e3fb20c003.md) | 87 | `declaration-track:77fe7481f4d4d2e3fb20c00373548bfd05f7c982ca38e9dcc2318c66ead1b318` |
| 5 | `def` | [fM](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/fm--268c0a49c77e023e0a1c0d05.md) | 88 | `declaration-track:268c0a49c77e023e0a1c0d054ca9cd60f42bcaf4a1fc0d326029df314f5a5a6a` |
| 6 | `lemma` | [fP_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/fp-eq--0b3804e35a73760031cde0bb.md) | 90 | `result-track:0b3804e35a73760031cde0bb80bc3244da168b3f32a62a8e1a26fb1fd15ecb5c` |
| 7 | `lemma` | [fM_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/fm-eq--54b2279609bfcbde68bb6ed1.md) | 94 | `result-track:54b2279609bfcbde68bb6ed18380c7aa4fb944c34600c4be9e20721f7b090430` |
| 8 | `lemma` | [fP_contDiff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/fp-contdiff--3fbf2d79ef057412ee03fe09.md) | 98 | `result-track:3fbf2d79ef057412ee03fe090837e0c684993c97629b431064e4a38f41b7b008` |
| 9 | `lemma` | [fM_contDiff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/fm-contdiff--33d53f80c80754fb145f6d7c.md) | 102 | `result-track:33d53f80c80754fb145f6d7c46a23d574306d96bf2a87875c62613962c2698a0` |
| 10 | `lemma` | [iteratedDeriv_fP](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/iteratedderiv-fp--4a322fa4bf9013fe7c499117.md) | 106 | `result-track:4a322fa4bf9013fe7c499117ea785fd94766f7b4c646de937275103ecc18c762` |
| 11 | `lemma` | [iteratedDeriv_fM](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/iteratedderiv-fm--9427393000ba93ea2e75135f.md) | 113 | `result-track:9427393000ba93ea2e75135f1315eee1a79e5c7f3257d1e9a85a0d902deb8a22` |
| 12 | `lemma` | [abs_iteratedDeriv_fP_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/abs-iteratedderiv-fp-le--f48b0d52826dbaa91dbf9158.md) | 121 | `result-track:f48b0d52826dbaa91dbf9158a3f2e1b13429497299d55d30da2f8bd92f7a6de1` |
| 13 | `lemma` | [abs_iteratedDeriv_fM_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/abs-iteratedderiv-fm-le--7ee973ec92870ed604f9b2d4.md) | 139 | `result-track:7ee973ec92870ed604f9b2d4ccb619ba286919dcd0858d30c301c336bf4ead1d` |
| 14 | `lemma` | [iteratedDeriv_fP_mul_fM_eq_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/iteratedderiv-fp-mul-fm-eq-zero--37628b40d4752a4e66753406.md) | 158 | `result-track:37628b40d4752a4e6675340658a3b51fc40a68e9d9aa5938e4e90b1b1b126c9e` |
| 15 | `lemma` | [abs_iteratedDeriv_phi_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/abs-iteratedderiv-phi-le--6eb53e40bd2ebf417dc7413c.md) | 176 | `result-track:6eb53e40bd2ebf417dc7413c48c64b6f71c9ecb5f2a30259ccc9efe352f88b69` |
| 16 | `theorem` | [integral_abs_iteratedDeriv_phi_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/integral-abs-iteratedderiv-phi-le--441a26c1a50ed93b416ac80b.md) | 211 | `result-track:441a26c1a50ed93b416ac80b4a291f9bddc33c67a70d9ee5bd270707361fd6ba` |
| 17 | `theorem` | [Params.gevreyPhiBound_of_profile](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/declarations/params-gevreyphibound-of-profile--6dfe9264109dcfca141f298b.md) | 245 | `result-track:6dfe9264109dcfca141f298b78a2891938e5324592c33c760305d8159a147079` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
