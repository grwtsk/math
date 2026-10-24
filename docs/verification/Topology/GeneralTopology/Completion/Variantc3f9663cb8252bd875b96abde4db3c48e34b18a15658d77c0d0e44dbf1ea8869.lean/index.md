# Verification target: GRWTSK.Topology.GeneralTopology.Completion.Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd0f0c3197d36236ca69d89def667cc5e828495d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Completion/Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd0f0c3197d36236ca69d89def667cc5e828495d`.

Source path: `GRWTSK/Topology/GeneralTopology/Completion/Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Completion/Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Uniform` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupCompletion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Completion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869.lean/declarations/instance--dc824839c7749aad47f2801b.md) | 37 | `declaration-track:dc824839c7749aad47f2801bd9791dcfe8d4a8c9268cb65810818108e9ea70a2` |
| 2 | `theorem` | [norm_coe](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869.lean/declarations/norm-coe--6fc2940350e52b62087efcbc.md) | 41 | `result-track:6fc2940350e52b62087efcbc6311bb7423cf7539dc1175f9fd1b80bf9b652a3f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869.lean/declarations/instance--b4834a24c43636010953aaa2.md) | 44 | `declaration-track:b4834a24c43636010953aaa2e446ff34254c5df11122b397787a74b4031d78fa` |
| 4 | `theorem` | [nnnorm_coe](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869.lean/declarations/nnnorm-coe--0a98dbd3e4d603de81d05410.md) | 52 | `result-track:0a98dbd3e4d603de81d05410b4d77557b3c2252f244333ee0814c48b69bb8147` |
| 5 | `lemma` | [enorm_coe](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869.lean/declarations/enorm-coe--8a6e0256f7863e1ab9286642.md) | 56 | `result-track:8a6e0256f7863e1ab9286642e6b946116994478dee3ce8bea86c575480896119` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
