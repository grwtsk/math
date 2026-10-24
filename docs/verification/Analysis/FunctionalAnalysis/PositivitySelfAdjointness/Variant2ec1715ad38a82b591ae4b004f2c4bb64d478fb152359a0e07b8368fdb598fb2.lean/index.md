# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositivitySelfAdjointness.Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be320808965049c1f4be62b5312fc5213438199b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be320808965049c1f4be62b5312fc5213438199b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.IndexSpectralTraceIdentity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositivitySelfAdjointnessCriterion](../../../../../mathematics/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2.lean/declarations/positivityselfadjointnesscriterion--4fa602b48da23102edf2e144.md) | 22 | `declaration-track:4fa602b48da23102edf2e14405acdff8baeb30663f40b1d1b04bc8d6f2f234d9` |
| 2 | `theorem` | [positivity_selfadjoint_rules_out_offline](../../../../../mathematics/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2.lean/declarations/positivity-selfadjoint-rules-out-offline--bd319bc7ddf999f4e90417bb.md) | 31 | `result-track:bd319bc7ddf999f4e90417bba2afedf89d2275987d99fc7aa894245613d6550a` |
| 3 | `structure` | [TraceIdentityToBoundaryAlignment](../../../../../mathematics/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2.lean/declarations/traceidentitytoboundaryalignment--1992db2780e085d35d7b6c07.md) | 40 | `declaration-track:1992db2780e085d35d7b6c07e8ad225f20330cdb6d8944a60c16f5b5b56330b8` |
| 4 | `theorem` | [trace_identity_plus_positivity_forces_alignment](../../../../../mathematics/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant2ec1715ad38a82b591ae4b004f2c4bb64d478fb152359a0e07b8368fdb598fb2.lean/declarations/trace-identity-plus-positivity-forces-alignment--8846bed1ee59f590d91a715d.md) | 47 | `result-track:8846bed1ee59f590d91a715dc6c2291f7b3a3932cae0c2c3bc6cd4f5271651ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
