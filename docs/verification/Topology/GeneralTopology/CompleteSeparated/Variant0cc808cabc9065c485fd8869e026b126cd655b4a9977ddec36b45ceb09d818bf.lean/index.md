# Verification target: GRWTSK.Topology.GeneralTopology.CompleteSeparated.Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8910c4c20ce43ffade35c03ed02461b42c0bfe11",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8910c4c20ce43ffade35c03ed02461b42c0bfe11`.

Source path: `GRWTSK/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsComplete.isClosed](../../../../../mathematics/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean/declarations/iscomplete-isclosed--6f179ef2a8ffdac41c5df1da.md) | 30 | `result-track:6f179ef2a8ffdac41c5df1dae5e26f067ffcd76f371f38b4ce5fcdd405ab8833` |
| 2 | `theorem` | [IsUniformEmbedding.isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean/declarations/isuniformembedding-isclosedembedding--fcba036e1b61df1a024f20a2.md) | 38 | `result-track:fcba036e1b61df1a024f20a230c0557419969ecaf83cac8d655ce3c408806a3a` |
| 3 | `theorem` | [continuous_extend_of_cauchy](../../../../../mathematics/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean/declarations/continuous-extend-of-cauchy--f8e108b6cbf3447ac488c979.md) | 53 | `result-track:f8e108b6cbf3447ac488c9796a28643a0a9eee66718b2834d8cca1425a3701ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
