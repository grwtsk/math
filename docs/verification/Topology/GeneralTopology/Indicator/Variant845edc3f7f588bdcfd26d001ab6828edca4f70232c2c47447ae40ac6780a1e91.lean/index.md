# Verification target: GRWTSK.Topology.GeneralTopology.Indicator.Variant845edc3f7f588bdcfd26d001ab6828edca4f70232c2c47447ae40ac6780a1e91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1aea652183fddc77bae1af4f25536a3395299df",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant845edc3f7f588bdcfd26d001ab6828edca4f70232c2c47447ae40ac6780a1e91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant845edc3f7f588bdcfd26d001ab6828edca4f70232c2c47447ae40ac6780a1e91.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant845edc3f7f588bdcfd26d001ab6828edca4f70232c2c47447ae40ac6780a1e91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1aea652183fddc77bae1af4f25536a3395299df`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variant845edc3f7f588bdcfd26d001ab6828edca4f70232c2c47447ae40ac6780a1e91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variant845edc3f7f588bdcfd26d001ab6828edca4f70232c2c47447ae40ac6780a1e91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Piecewise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Clopen` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [continuous_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant845edc3f7f588bdcfd26d001ab6828edca4f70232c2c47447ae40ac6780a1e91.lean/declarations/continuous-mulindicator--63ae830d37b4e05235ae638a.md) | 28 | `result-track:63ae830d37b4e05235ae638ae22c666c8a2223b71857426fff6cc96c7795d060` |
| 2 | `lemma` | [Continuous.mulIndicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant845edc3f7f588bdcfd26d001ab6828edca4f70232c2c47447ae40ac6780a1e91.lean/declarations/continuous-mulindicator--31d142b199cf02dad359872d.md) | 33 | `result-track:31d142b199cf02dad359872d997c25200f339c5993d99ab80f2036ae28d2269d` |
| 3 | `theorem` | [ContinuousOn.continuousAt_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant845edc3f7f588bdcfd26d001ab6828edca4f70232c2c47447ae40ac6780a1e91.lean/declarations/continuouson-continuousat-mulindicator--ee2ac88802d90c0720bbcd39.md) | 38 | `result-track:ee2ac88802d90c0720bbcd3999a0d893511ee53c8ed95c8b34ac9ad85d48bcde` |
| 4 | `lemma` | [IsClopen.continuous_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant845edc3f7f588bdcfd26d001ab6828edca4f70232c2c47447ae40ac6780a1e91.lean/declarations/isclopen-continuous-mulindicator--0ae1ec82c12da3149e8976d7.md) | 50 | `result-track:0ae1ec82c12da3149e8976d7e6d1626b0ce9ddf7cf69a8e5bbbd6ef7aeb26b52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
