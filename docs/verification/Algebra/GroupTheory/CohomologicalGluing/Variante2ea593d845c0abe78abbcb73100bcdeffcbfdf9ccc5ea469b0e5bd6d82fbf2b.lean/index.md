# Verification target: GRWTSK.Algebra.GroupTheory.CohomologicalGluing.Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c1ecb6e8b08601d3a1ee1934c0de90e9ee7e1d4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c1ecb6e8b08601d3a1ee1934c0de90e9ee7e1d4`.

Source path: `GRWTSK/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.AffineTorusBundle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Homology.FiberMetric` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Homology.PrincipalFiniteCover` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteGluingControl](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/declarations/finitegluingcontrol--6f7bd3498e4a9c5399997fc4.md) | 26 | `declaration-track:6f7bd3498e4a9c5399997fc4a729c9760cf97e15f4441c1350627d0db9e63ec9` |
| 2 | `structure` | [CoverTopologyChannel](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/declarations/covertopologychannel--aa35b8998e66c29c03184e27.md) | 41 | `declaration-track:aa35b8998e66c29c03184e276345c4cd47f72122fb743a3fe667b90ca1dc2a96` |
| 3 | `structure` | [TorsionRoundedCover](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/declarations/torsionroundedcover--2989a59fe3b4b5e53d2516a7.md) | 59 | `declaration-track:2989a59fe3b4b5e53d2516a7b949eac980aa0fcbf000efbf7ec9c8e645e897e9` |
| 4 | `def` | [withMetric](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/declarations/withmetric--5509788ce584f061aa159683.md) | 82 | `declaration-track:5509788ce584f061aa159683e3b91f9232de3e9f16239fab122f445e9d365244` |
| 5 | `theorem` | [withMetric_topology](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/declarations/withmetric-topology--7c9a134818de79b2fad37982.md) | 91 | `result-track:7c9a134818de79b2fad379826c66b7d6f4c5fc349229071e25454c7cad9c3d67` |
| 6 | `def` | [withTopology](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/declarations/withtopology--d0c44199d3dd4a09bd389220.md) | 100 | `declaration-track:d0c44199d3dd4a09bd389220600843d7cffe5f9422814bf23fb4ffc9e30da71e` |
| 7 | `theorem` | [withTopology_metric](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/declarations/withtopology-metric--d735ebda2d10137aa495cc80.md) | 110 | `result-track:d735ebda2d10137aa495cc80af337127b7f93d880dd8342e84eb738c5161e6aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
