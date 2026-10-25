# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sorry.Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "558bfa458d3f90465bdd8abc9764cb91fc691e09",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `558bfa458d3f90465bdd8abc9764cb91fc691e09`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean.json)

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
| 1 | `def` | [mkSorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/declarations/mksorry--130ccfc2f5c05b007ad74c09.md) | 49 | `declaration-track:130ccfc2f5c05b007ad74c09ef394d99076a01c2dbe3e0d469d00cc4fca44955` |
| 2 | `structure` | [SorryLabelView](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/declarations/sorrylabelview--a6b5c0c9d62f8df218dcfd8d.md) | 56 | `declaration-track:a6b5c0c9d62f8df218dcfd8dc9a870b4cc3dd2a41d979c3827584b8a67eb9bb8` |
| 3 | `def` | [SorryLabelView.encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/declarations/sorrylabelview-encode--13a90659c996069dd3ef6fdd.md) | 64 | `declaration-track:13a90659c996069dd3ef6fddd5253a3ce0b4378f9ca41b82bf826483347cbc68` |
| 4 | `def` | [SorryLabelView.decode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/declarations/sorrylabelview-decode--158f013f32de1de105f34975.md) | 75 | `declaration-track:158f013f32de1de105f34975552c89a010bac6ae233edf2ecd9d688960edd687` |
| 5 | `def` | [mkLabeledSorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/declarations/mklabeledsorry--3d7ae1cc7e90b00b14d81a2d.md) | 91 | `declaration-track:3d7ae1cc7e90b00b14d81a2d114d389ec2ace15602139a4490750f146e9fcd92` |
| 6 | `def` | [isLabeledSorry?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/declarations/islabeledsorry--08431b61a52eb78fa47eb57c.md) | 123 | `declaration-track:08431b61a52eb78fa47eb57cfce43a6ac6b0f9d4617f30ebb68b4c3c44e8eb5e` |
| 7 | `def` | [Expr.getSorry?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/declarations/expr-getsorry--18d4b583643662096cddbf40.md) | 144 | `declaration-track:18d4b583643662096cddbf408c039b54697e04228504eb1efed8338753514712` |
| 8 | `def` | [Meta.forEachSorryM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/declarations/meta-foreachsorrym--219822b2fba60ad9959c8d77.md) | 157 | `declaration-track:219822b2fba60ad9959c8d77d4710b5975fb1d52c2b4b8b28854aa48c000ea57` |
| 9 | `def` | [Declaration.forEachSorryM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/declarations/declaration-foreachsorrym--47aeaba73d39a962ee0be0e9.md) | 169 | `declaration-track:47aeaba73d39a962ee0be0e98c986c3d14de32fdb13cbee39cf37f17c610aceb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
