# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousCompMeasurePreserving.Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a1da5b3e22303776a2ee348db224b667d03b7bb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a1da5b3e22303776a2ee348db224b667d03b7bb`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.ContinuousPreimage` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compMeasurePreserving_continuous](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean/declarations/compmeasurepreserving-continuous--424bd440a90c8e480dc557bb.md) | 46 | `result-track:424bd440a90c8e480dc557bb2cf28714b4b83849c461d2dc68e6bad4ee31f78f` |
| 2 | `theorem` | [Filter.Tendsto.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean/declarations/filter-tendsto-compmeasurepreservinglp--42a96a8ba0e004f8ed12c615.md) | 69 | `result-track:42a96a8ba0e004f8ed12c615012ce66b7d8bdb1814ce3c82c1258d0db3329444` |
| 3 | `theorem` | [ContinuousWithinAt.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean/declarations/continuouswithinat-compmeasurepreservinglp--7890bb1d88d9b973ebc93ae2.md) | 83 | `result-track:7890bb1d88d9b973ebc93ae223b066e32010d91f031c29680b0bde095448e833` |
| 4 | `theorem` | [ContinuousAt.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean/declarations/continuousat-compmeasurepreservinglp--37d3c14f632c9632701382b1.md) | 88 | `result-track:37d3c14f632c9632701382b1434efa8834802b38c26eba0decb725e30520fb5b` |
| 5 | `theorem` | [ContinuousOn.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean/declarations/continuouson-compmeasurepreservinglp--6ba7386b99bf2d6112e8e261.md) | 93 | `result-track:6ba7386b99bf2d6112e8e261b07c19316ec46baf5c16d25fd5d481b23d061ae4` |
| 6 | `theorem` | [Continuous.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant74c1fb5e13da0bb8edb4b43bf332a822a5eeec35e7b5528a6c38cd9d519a42c8.lean/declarations/continuous-compmeasurepreservinglp--d0accae003177abf98fcd75b.md) | 98 | `result-track:d0accae003177abf98fcd75b89fc434b2972d6c15c26fc87ec7ab74ac3c5a22e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
