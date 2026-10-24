# Verification target: GRWTSK.Topology.GeneralTopology.KrullDimension.Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f28ed8f4918e021d08519bb5bcb45c2bb91beea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f28ed8f4918e021d08519bb5bcb45c2bb91beea`.

Source path: `GRWTSK/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.KrullDimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [topologicalKrullDim](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/declarations/topologicalkrulldim--e2b3fc783f56308018936c77.md) | 32 | `declaration-track:e2b3fc783f56308018936c77ee33fb17663d04835bb19c9ed41cc665233a7bf5` |
| 2 | `def` | [IrreducibleCloseds.map](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/declarations/irreduciblecloseds-map--9602231af5aa0fe602fbfff6.md) | 42 | `declaration-track:9602231af5aa0fe602fbfff685c7466d92689879f0bd8777f48969f1db544d93` |
| 3 | `lemma` | [IrreducibleCloseds.map_strictMono](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/declarations/irreduciblecloseds-map-strictmono--2f3ede94521b3ea042c6c0fc.md) | 52 | `result-track:2f3ede94521b3ea042c6c0fcf99964b8bd98fdd6691c5a783244470e9ec74fe1` |
| 4 | `theorem` | [IsClosedEmbedding.topologicalKrullDim_le](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/declarations/isclosedembedding-topologicalkrulldim-le--2eb8fabc45c071da83a6b2c1.md) | 60 | `result-track:2eb8fabc45c071da83a6b2c14f707b74b5e91e0f7904e3f38d2c1859fdcef39b` |
| 5 | `theorem` | [IsHomeomorph.topologicalKrullDim_eq](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/declarations/ishomeomorph-topologicalkrulldim-eq--a524d2621772c70926a4d458.md) | 65 | `result-track:a524d2621772c70926a4d458b84e91a6678dc0d72bca0f9ff6f78dfe4704e6ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
