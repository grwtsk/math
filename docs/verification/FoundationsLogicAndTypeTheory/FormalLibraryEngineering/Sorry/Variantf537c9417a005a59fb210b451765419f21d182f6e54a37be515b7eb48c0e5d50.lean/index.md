# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sorry.Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bda4ecf3b3a69fc555ca31d7b2ed9ea94f9aef7b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bda4ecf3b3a69fc555ca31d7b2ed9ea94f9aef7b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkSorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/declarations/mksorry--610f9fda0db78f6ea893fd6f.md) | 41 | `declaration-track:610f9fda0db78f6ea893fd6fdef17dda5d03a844de709f63caed12e52aa49b9f` |
| 2 | `structure` | [SorryLabelView](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/declarations/sorrylabelview--1fb8cc4fd2e93143aa733af0.md) | 48 | `declaration-track:1fb8cc4fd2e93143aa733af07467e16e9303d1a4cf2cd97778475159576a0c57` |
| 3 | `def` | [SorryLabelView.encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/declarations/sorrylabelview-encode--0be37262f38276b93d295b55.md) | 56 | `declaration-track:0be37262f38276b93d295b55f731b2b4b6facdd814f7325eb018ecfa55e0c704` |
| 4 | `def` | [SorryLabelView.decode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/declarations/sorrylabelview-decode--1dc8c903dec4020034cb1de1.md) | 67 | `declaration-track:1dc8c903dec4020034cb1de1948515385700c2cc1b0f37d905b7e3ca157f711e` |
| 5 | `def` | [mkLabeledSorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/declarations/mklabeledsorry--e65d0318375b260508721f74.md) | 83 | `declaration-track:e65d0318375b260508721f746e27b359b733aa92d43c589c1efb1fe8dbf6a6fb` |
| 6 | `def` | [isLabeledSorry?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/declarations/islabeledsorry--f943162b16f532026670ea90.md) | 115 | `declaration-track:f943162b16f532026670ea90e0b803b9204f29a13286e1032ed08d8657f34077` |
| 7 | `def` | [Expr.getSorry?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/declarations/expr-getsorry--647e487493674f8c790dad93.md) | 136 | `declaration-track:647e487493674f8c790dad93cd4e728e674d1a44aefce1013e2febfd802264ee` |
| 8 | `def` | [Meta.forEachSorryM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/declarations/meta-foreachsorrym--c13c0744fc709aca00261b09.md) | 149 | `declaration-track:c13c0744fc709aca00261b09a70e17fd7b6cd17ff50a5a2e747fa06306c70b62` |
| 9 | `def` | [Declaration.forEachSorryM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variantf537c9417a005a59fb210b451765419f21d182f6e54a37be515b7eb48c0e5d50.lean/declarations/declaration-foreachsorrym--5d96dce271e5736fb25810cd.md) | 161 | `declaration-track:5d96dce271e5736fb25810cde5b227f9728a28101c23699314505f0f94b058d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
