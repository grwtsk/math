# Verification target: GRWTSK.Analysis.ComplexAnalysis.OpenMapping.Variant7b3ad18fb7e990834206001e0be1c1c83c9c13f6b9548cc25f94ef901c63729f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3ae4c7c5ac665ff215be756555e6cc1897517a1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant7b3ad18fb7e990834206001e0be1c1c83c9c13f6b9548cc25f94ef901c63729f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant7b3ad18fb7e990834206001e0be1c1c83c9c13f6b9548cc25f94ef901c63729f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant7b3ad18fb7e990834206001e0be1c1c83c9c13f6b9548cc25f94ef901c63729f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3ae4c7c5ac665ff215be756555e6cc1897517a1`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant7b3ad18fb7e990834206001e0be1c1c83c9c13f6b9548cc25f94ef901c63729f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/OpenMapping/Variant7b3ad18fb7e990834206001e0be1c1c83c9c13f6b9548cc25f94ef901c63729f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [DiffContOnCl.ball_subset_image_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant7b3ad18fb7e990834206001e0be1c1c83c9c13f6b9548cc25f94ef901c63729f.lean/declarations/diffcontoncl-ball-subset-image-closedball--aee76eba337047530296cb71.md) | 51 | `result-track:aee76eba337047530296cb71807ffe5a9517199abff5b18c75a00cdf83ab968e` |
| 2 | `theorem` | [AnalyticAt.eventually_constant_or_nhds_le_map_nhds_aux](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant7b3ad18fb7e990834206001e0be1c1c83c9c13f6b9548cc25f94ef901c63729f.lean/declarations/analyticat-eventually-constant-or-nhds-le-map-nhds-aux--73ca734220c3ee0fc50106cb.md) | 83 | `result-track:73ca734220c3ee0fc50106cb33bb3cd7647b7318cf8a6aff5a2fa035d42bc906` |
| 3 | `theorem` | [AnalyticAt.eventually_constant_or_nhds_le_map_nhds](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant7b3ad18fb7e990834206001e0be1c1c83c9c13f6b9548cc25f94ef901c63729f.lean/declarations/analyticat-eventually-constant-or-nhds-le-map-nhds--6aaac12cf5fffb25551e0465.md) | 118 | `result-track:6aaac12cf5fffb25551e0465189c935ed6d4dedf750b8bda668fc615b80b41a5` |
| 4 | `theorem` | [AnalyticOnNhd.is_constant_or_isOpen](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variant7b3ad18fb7e990834206001e0be1c1c83c9c13f6b9548cc25f94ef901c63729f.lean/declarations/analyticonnhd-is-constant-or-isopen--30ac654a52faed484ca43953.md) | 166 | `result-track:30ac654a52faed484ca43953c60ad736c223575db0def95ea90891235e720b6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
