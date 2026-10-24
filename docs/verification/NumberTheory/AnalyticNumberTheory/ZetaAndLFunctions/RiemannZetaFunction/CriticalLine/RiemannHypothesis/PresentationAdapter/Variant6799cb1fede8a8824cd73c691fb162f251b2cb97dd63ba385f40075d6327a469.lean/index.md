# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PresentationAdapter.Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "217c218497007d301aa0c311acc3b8ee9b4796d9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `217c218497007d301aa0c311acc3b8ee9b4796d9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Presentation.Spine` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.BoundaryCalculus` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [defaultBoundaryKind](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean/declarations/defaultboundarykind--17dcc7118b3b9ea5ff261a2b.md) | 38 | `declaration-track:17dcc7118b3b9ea5ff261a2bb4abc827e1488511e7637e8d8aa8e1704cec3957` |
| 2 | `def` | [analyticContext](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean/declarations/analyticcontext--f20a01ad4407b9c4d6f23c87.md) | 75 | `declaration-track:f20a01ad4407b9c4d6f23c87ae63c5c546b02c49a83b56ac1e25d3f5887a8e76` |
| 3 | `def` | [analyticClaim](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean/declarations/analyticclaim--06683b76e8fd4c6ed5f91736.md) | 83 | `declaration-track:06683b76e8fd4c6ed5f91736be46623ec3d72c2fa8196989a05c442425e0095c` |
| 4 | `def` | [SpineRealizationCertificate.toAnalyticCertificate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean/declarations/spinerealizationcertificate-toanalyticcertificate--4aaf4bbdf71528a67d691bb3.md) | 94 | `declaration-track:4aaf4bbdf71528a67d691bb33ea06dc7e4a90a74fa8885cf2b3a991580e835a8` |
| 5 | `def` | [SpineRealizationCertificate.toAnalyticAuthorityToken](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean/declarations/spinerealizationcertificate-toanalyticauthoritytoken--7538758fff01fe2fdeb535e5.md) | 106 | `declaration-track:7538758fff01fe2fdeb535e594a3b806700e36c43fc1aa6b9e6f500f71fb8738` |
| 6 | `theorem` | [spine_realization_through_boundary_calculus](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean/declarations/spine-realization-through-boundary-calculus--30e6c292bb28f030c30685ff.md) | 122 | `result-track:30e6c292bb28f030c30685ff1bf4d3d9858717a67c3d2c6e6de252f5f1543c5a` |
| 7 | `theorem` | [raw_spine_presentation_not_analytic_authority](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PresentationAdapter/Variant6799cb1fede8a8824cd73c691fb162f251b2cb97dd63ba385f40075d6327a469.lean/declarations/raw-spine-presentation-not-analytic-authority--d0cab14bb601373d263b2b1c.md) | 134 | `result-track:d0cab14bb601373d263b2b1c67115e21dcfe39727a6b2128edc1a19d9fbcd3e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
