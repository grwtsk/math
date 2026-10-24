# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CutEnumeration.Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e82682e2c15d92c9c90c59c370f6cdde632c0187",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e82682e2c15d92c9c90c59c370f6cdde632c0187`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.WP0.PrimeHorizon` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CutEnumeration](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00.lean/declarations/cutenumeration--3d56ce0d2b99a72224732fe6.md) | 12 | `declaration-track:3d56ce0d2b99a72224732fe657965dea722d4155f9a2d9feff38cd9f488b5443` |
| 2 | `def` | [CutEnumeration.prefixCut](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00.lean/declarations/cutenumeration-prefixcut--b854d2ba404319b4017df5a3.md) | 23 | `declaration-track:b854d2ba404319b4017df5a39db7af6facad5fa897834b06e80d427ecbffcbdf` |
| 3 | `theorem` | [CutEnumeration.prefixCut_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00.lean/declarations/cutenumeration-prefixcut-zero--d508d27faf2c53c26c714aa2.md) | 32 | `result-track:d508d27faf2c53c26c714aa28a0703d97943378d950970f3036a53b4f6e556d1` |
| 4 | `theorem` | [CutEnumeration.prefixCut_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00.lean/declarations/cutenumeration-prefixcut-length--bba951413b935d0165eb1f67.md) | 40 | `result-track:bba951413b935d0165eb1f67b815ba51d17cc13758bcbacea4c616ed7199d770` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
