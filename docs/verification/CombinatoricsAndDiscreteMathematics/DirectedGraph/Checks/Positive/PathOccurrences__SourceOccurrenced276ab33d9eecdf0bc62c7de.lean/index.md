# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PathOccurrences

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e2a959e615b0c34f13353afa619b629e6253a77",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PathOccurrences.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e2a959e615b0c34f13353afa619b629e6253a77`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PathOccurrences.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PathOccurrences.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PathOccurrences`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/declarations/example--ecd90cb26336705d3921a464.md) | 9 | `declaration-track:ecd90cb26336705d3921a464afc4b343efb7c2987e2d998200e629f56d5f8e92` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/declarations/example--15dcce68b46db2edf4bff829.md) | 14 | `declaration-track:15dcce68b46db2edf4bff829ed1adf163c0bf3c5282101367624884f01a3a0da` |
| 3 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/declarations/example--b6e99e22495ea5daead09efb.md) | 21 | `declaration-track:b6e99e22495ea5daead09efb97eadc6d0d1ec25393ad86fe1a4bb1baa7428b0d` |
| 4 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/declarations/example--4e9561298473f70fb7a09f9c.md) | 26 | `declaration-track:4e9561298473f70fb7a09f9cb8c2a3fd0e4fe844bb4753903a081343368ed86e` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/declarations/example--01695772a4c1678843074e96.md) | 32 | `declaration-track:01695772a4c1678843074e9610ebcca5209b3369ee06d9614eb1ed19c8fb0c4e` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/declarations/example--11ca50c5b1be8bc8413254e3.md) | 33 | `declaration-track:11ca50c5b1be8bc8413254e320740f8aa33e9673daf17352a61ec9b5fc5018cb` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/declarations/example--1e690d3a956f8799438197ce.md) | 36 | `declaration-track:1e690d3a956f8799438197cecbba0eb1d3bd041ba9b998dc4dc2a5d75609ff34` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/declarations/example--61beb633ef0f6e3184e881e8.md) | 37 | `declaration-track:61beb633ef0f6e3184e881e891013971f7d70ab050d423dbaea3a258eedee870` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrenced276ab33d9eecdf0bc62c7de.lean/declarations/example--51bce46692bd6d1cb3ff6c11.md) | 40 | `declaration-track:51bce46692bd6d1cb3ff6c1146fb8b74a7dc81081e4222a02f5d73ed907e5698` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
