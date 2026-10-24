# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BoundedRicciFlow.Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6856d80d45ed0245af469f496a7288150676889",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6856d80d45ed0245af469f496a7288150676889`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.CurvatureInterface` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundedRicciReferenceFlow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean/declarations/boundedriccireferenceflow--9dc80d2e7201b599021333cd.md) | 28 | `declaration-track:9dc80d2e7201b599021333cdcff2062fbf5315681305de126c5928649375748a` |
| 2 | `theorem` | [edgeWeight_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean/declarations/edgeweight-pos--7ccbed6d7c887bfa2ac585b5.md) | 66 | `result-track:7ccbed6d7c887bfa2ac585b5beca3e8ce622b568ad193223b88357c937346642` |
| 3 | `theorem` | [illegal_edge_excluded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean/declarations/illegal-edge-excluded--c90608447ee821ab1da6ec72.md) | 75 | `result-track:c90608447ee821ab1da6ec72f15afbe056208366e7b3a919234cfdddee51c98a` |
| 4 | `theorem` | [semantics_ne_smoothManifold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean/declarations/semantics-ne-smoothmanifold--369b64da114eeda799ca62f6.md) | 84 | `result-track:369b64da114eeda799ca62f6a79f8f38295b0a71b761c21f58194c05dc76a381` |
| 5 | `theorem` | [metric_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean/declarations/metric-succ--0d1a9bc6e1cd5edc691a7f75.md) | 90 | `result-track:0d1a9bc6e1cd5edc691a7f752d26bd256e6348c154b90f386515cf69fa37fe49` |
| 6 | `theorem` | [distance_to_reference_nonincreasing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variantf787d1b00e45e0c3881003a4198a0ce6ed56c78f6efc7734cb56424faeef78b5.lean/declarations/distance-to-reference-nonincreasing--b2c068b946e32ea9ae2c7499.md) | 99 | `result-track:b2c068b946e32ea9ae2c7499b401fa8b6cd4da4b77bc4693b2efccd41c41f792` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
