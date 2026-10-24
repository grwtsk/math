# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CorrelationPrimitiveMoments.Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ad5aa36e39afa3a4367c4b63ae75e432a2408b5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ad5aa36e39afa3a4367c4b63ae75e432a2408b5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitive` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [weighted_primitive_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean/declarations/weighted-primitive-integrable--8b4f534fb13e3a414e95c53c.md) | 22 | `result-track:8b4f534fb13e3a414e95c53c7312546026c979dfdff11ab597bc30aa60f3226c` |
| 2 | `theorem` | [weighted_primitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean/declarations/weighted-primitive-hasderivat--14f727c1e1b2bedcb8a90f50.md) | 27 | `result-track:14f727c1e1b2bedcb8a90f502a242ea837216b040ef3c6b352217c9d3878441f` |
| 3 | `theorem` | [weighted_primitive_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean/declarations/weighted-primitive-zeromoment--dc54a88535d9b4c436fca1ca.md) | 35 | `result-track:dc54a88535d9b4c436fca1ca63579912df3da37ae0495c59280f02a5cad1615b` |
| 4 | `theorem` | [weighted_primitive_firstMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean/declarations/weighted-primitive-firstmoment--c8bf9593e5ee48030e84a9bd.md) | 60 | `result-track:c8bf9593e5ee48030e84a9bd1744ee75a85d40c131c7af11b5057df7d2ea4008` |
| 5 | `theorem` | [negative_primitive_moments_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean/declarations/negative-primitive-moments-integrable--67ef1b8f3b19fa777a66906a.md) | 88 | `result-track:67ef1b8f3b19fa777a66906ab2e0a2469640a6fafd0af68b522a2c19d427a63d` |
| 6 | `theorem` | [negative_primitive_moments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean/declarations/negative-primitive-moments--68a4311d33b64048c1f24b36.md) | 99 | `result-track:68a4311d33b64048c1f24b36dc20d21b6844d58af611cb69b1c6974e25431d43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
