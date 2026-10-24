# Verification target: GRWTSK.Analysis.ComplexAnalysis.OpenMapping.Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c4efc04a267b59907f27d26785712b34b465e43",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c4efc04a267b59907f27d26785712b34b465e43`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [DiffContOnCl.ball_subset_image_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/declarations/diffcontoncl-ball-subset-image-closedball--c090f781b490b2902411ffb4.md) | 52 | `result-track:c090f781b490b2902411ffb4de724d2093fc4694aa3d1bb597f17b135bb6eb9d` |
| 2 | `theorem` | [AnalyticAt.eventually_constant_or_nhds_le_map_nhds_aux](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/declarations/analyticat-eventually-constant-or-nhds-le-map-nhds-aux--d475b0fa29e04da4753948e2.md) | 85 | `result-track:d475b0fa29e04da4753948e22061cf6e5c8a3f60f096b25427c4b300b2199ee9` |
| 3 | `theorem` | [AnalyticAt.eventually_constant_or_nhds_le_map_nhds](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/declarations/analyticat-eventually-constant-or-nhds-le-map-nhds--5ca3fb9fc779b6e6647cf743.md) | 121 | `result-track:5ca3fb9fc779b6e6647cf74323732cd04683bc330067bf7534cf26cdfb23f537` |
| 4 | `theorem` | [AnalyticOn.is_constant_or_isOpen](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/declarations/analyticon-is-constant-or-isopen--8da480218bc952f752477305.md) | 171 | `result-track:8da480218bc952f752477305fb50e89961215c3e3e58a57582bb9c148740e302` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
