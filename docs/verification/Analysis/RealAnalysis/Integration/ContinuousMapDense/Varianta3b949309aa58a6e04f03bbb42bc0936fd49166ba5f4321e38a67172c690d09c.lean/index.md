# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousMapDense.Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f9314d96a4772d2d1c73d905b258e0224bbe81a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f9314d96a4772d2d1c73d905b258e0224bbe81a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Regular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousFunctions` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_continuous_eLpNorm_sub_le_of_closed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/exists-continuous-elpnorm-sub-le-of-closed--594bba9efa4689059d350f93.md) | 85 | `result-track:594bba9efa4689059d350f939e70764b487be55839d75dc594ace043cedfa32e` |
| 2 | `theorem` | [MemLp.exists_hasCompactSupport_eLpNorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/memlp-exists-hascompactsupport-elpnorm-sub-le--faa50ef14f04a77d8a075de2.md) | 142 | `result-track:faa50ef14f04a77d8a075de2fb862a49a5e7f4dbc777f6cc87f0b7d73963c179` |
| 3 | `theorem` | [MemLp.exists_hasCompactSupport_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/memlp-exists-hascompactsupport-integral-rpow-sub-le--04d4a1d15f1fd315e5713e44.md) | 200 | `result-track:04d4a1d15f1fd315e5713e44cc263d97f97c47705b8fca2565430c34a9be11b1` |
| 4 | `theorem` | [Integrable.exists_hasCompactSupport_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/integrable-exists-hascompactsupport-lintegral-sub-le--2b06c20538cf9b897b25eb74.md) | 226 | `result-track:2b06c20538cf9b897b25eb74923c9da5f3efa1e6784b12537674c917368f59d8` |
| 5 | `theorem` | [Integrable.exists_hasCompactSupport_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/integrable-exists-hascompactsupport-integral-sub-le--be4d60cdc789361a267ce0d6.md) | 236 | `result-track:be4d60cdc789361a267ce0d66e41531ae95459765a0423754327ff2b70645af4` |
| 6 | `theorem` | [MemLp.exists_boundedContinuous_eLpNorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/memlp-exists-boundedcontinuous-elpnorm-sub-le--e01ead92a8d310b3568cf089.md) | 247 | `result-track:e01ead92a8d310b3568cf089a1f194f92d2b490c8316a2b0b4e17ad06f26abde` |
| 7 | `theorem` | [MemLp.exists_boundedContinuous_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/memlp-exists-boundedcontinuous-integral-rpow-sub-le--1fdd793c26956aceeca8c9fb.md) | 301 | `result-track:1fdd793c26956aceeca8c9fbcfc9012ba37ca091a6c3042a44e007e8b85a180f` |
| 8 | `theorem` | [Integrable.exists_boundedContinuous_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/integrable-exists-boundedcontinuous-lintegral-sub-le--570acbef3d29a8f344916748.md) | 322 | `result-track:570acbef3d29a8f344916748667dfafb8d1972eb1124dcf21f39623c1e214d93` |
| 9 | `theorem` | [Integrable.exists_boundedContinuous_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/integrable-exists-boundedcontinuous-integral-sub-le--b5485470fcc157bde9fa385a.md) | 330 | `result-track:b5485470fcc157bde9fa385a746a7683fe0a74466cefd31a43dddb099394a2a8` |
| 10 | `theorem` | [boundedContinuousFunction_dense](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/boundedcontinuousfunction-dense--bc48fb30481677cbfd456c97.md) | 342 | `result-track:bc48fb30481677cbfd456c97262605dda8767bc2cf1f482bb1669b116e0ae832` |
| 11 | `theorem` | [boundedContinuousFunction_topologicalClosure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/boundedcontinuousfunction-topologicalclosure--1935ae322244cf72641da44b.md) | 354 | `result-track:1935ae322244cf72641da44bb8bd4e8934b35dc1bde0796c4bd3d48629522771` |
| 12 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/tolp-denserange--e68fbaa5701e263fe1b40270.md) | 370 | `result-track:e68fbaa5701e263fe1b402702439b24f0656eb8c2afddf345412c807fedcf6eb` |
| 13 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/declarations/tolp-denserange--c4a0ab817b7370de57e40aaa.md) | 382 | `result-track:c4a0ab817b7370de57e40aaa6b5ae331421f74b768de09af29d331816010b748` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
