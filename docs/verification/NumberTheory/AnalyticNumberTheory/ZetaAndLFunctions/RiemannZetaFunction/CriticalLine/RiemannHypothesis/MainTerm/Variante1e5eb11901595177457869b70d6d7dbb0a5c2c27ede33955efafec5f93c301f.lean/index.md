# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MainTerm.Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54bffbb76eda3bf06bc919689e7c5010a9e830d2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54bffbb76eda3bf06bc919689e7c5010a9e830d2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.Defs` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.LocalCount` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.XiLogDeriv` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.Analytic.RectangleLogDeriv` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Backlund` — import line 31; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Fold` — import line 32; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.NcountWindow` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [N_eq_halfContour_completedZeta](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/declarations/n-eq-halfcontour-completedzeta--0dcecbca390aa7b56ee61329.md) | 46 | `result-track:0dcecbca390aa7b56ee61329011d58d3841a0d3d6d85608c789f76aefb8c27de` |
| 2 | `lemma` | [contour_point_facts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/declarations/contour-point-facts--9bf5d990099ca75e390e8acc.md) | 52 | `result-track:9bf5d990099ca75e390e8accd87c6373640e92759dcdf15ed8b41a898e573912` |
| 3 | `lemma` | [continuousAt_logDeriv_zeta](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/declarations/continuousat-logderiv-zeta--26bdaf691cebfba497095dfb.md) | 72 | `result-track:26bdaf691cebfba497095dfb287f2a67b97f7e7f80ee8e8b4a3a3aaf15ae7d8c` |
| 4 | `lemma` | [continuousAt_logDeriv_Gammaℝ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/declarations/continuousat-logderiv-gamma--6e5f98d31ab5fb59ace68bbe.md) | 77 | `result-track:6e5f98d31ab5fb59ace68bbe105b2ec23549377a59116e5f590affb127f1c3b2` |
| 5 | `theorem` | [halfContour_completedZeta_split](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/declarations/halfcontour-completedzeta-split--e7d7d15cd0d50d9c1fe4e8e6.md) | 82 | `result-track:e7d7d15cd0d50d9c1fe4e8e6e86a904d81740c9577c01e85a0086cc6902b3245` |
| 6 | `theorem` | [exists_goodHeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/declarations/exists-goodheight--a72fe6c5d6b610ef3d271318.md) | 196 | `result-track:a72fe6c5d6b610ef3d271318e763724b39d17333aaf4d082400dc32c18fcb1d0` |
| 7 | `theorem` | [rvM_main_param](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/declarations/rvm-main-param--977bd04be4759caaad441426.md) | 215 | `result-track:977bd04be4759caaad44142606796376a67d826c41275851eeff54589734158b` |
| 8 | `theorem` | [rvM_main_aux](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/declarations/rvm-main-aux--9d96d7eb8c680fdb4686f11f.md) | 465 | `result-track:9d96d7eb8c680fdb4686f11fc5e5f4e3666f0093dc54510c52920bd087563ec2` |
| 9 | `theorem` | [rvM_main](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/declarations/rvm-main--e2c73f1f5978b2dd4f6ec0f3.md) | 482 | `result-track:e2c73f1f5978b2dd4f6ec0f350af7db0522841d19a0dd4968ae7e21208bfe359` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
