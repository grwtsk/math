# Verification target: GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78f8c1d8025399fdcf098f1d2e9b557a33ab84a7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/RootedTraceRevision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78f8c1d8025399fdcf098f1d2e9b557a33ab84a7`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/RootedTraceRevision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/RootedTraceRevision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.DecisionCertificate`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RootedTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/rootedtrace--2fcbd0d2171e37c4b0018d44.md) | 33 | `declaration-track:2fcbd0d2171e37c4b0018d44cfc54eb1bf03bca35c0c2bddace6a06c6f149d15` |
| 2 | `def` | [rootedRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/rootedrows--04cf88b17ddc9589ebe749fa.md) | 35 | `declaration-track:04cf88b17ddc9589ebe749fa1661dc4f4fc907839188c2c44701520f6d4a66ce` |
| 3 | `def` | [eraseRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/eraseroots--8b8244e3a43eef6d308a78f4.md) | 38 | `declaration-track:8b8244e3a43eef6d308a78f4d68d0865ae6ced7870c7a78a0a0fd630d6a6ba7f` |
| 4 | `theorem` | [eraseRoots_rootedRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/eraseroots-rootedrows--418d1ed5853c76cb7f0bbd7f.md) | 42 | `result-track:418d1ed5853c76cb7f0bbd7f687a579fc79043b431d25c96fcbf41c8e04067f9` |
| 5 | `def` | [liftPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/liftpacked--7902ad30886229ed4e26ac2a.md) | 47 | `declaration-track:7902ad30886229ed4e26ac2aac8b354da5672837bd63f790db26cadd4f9cf58e` |
| 6 | `theorem` | [unpack_liftPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/unpack-liftpacked--a5194e250d2b38ccff31ecd1.md) | 52 | `result-track:a5194e250d2b38ccff31ecd1081315896455949ffea106275fcb8dc0e6f96c06` |
| 7 | `def` | [expandRevision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/expandrevision--406a224c81dd9906329b0fbb.md) | 68 | `declaration-track:406a224c81dd9906329b0fbb9879cb23072afff57d12ef1682d230a7fdb2bae0` |
| 8 | `def` | [beforePacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/beforepacked--ef983fff2cad4e9f1f9f3eba.md) | 75 | `declaration-track:ef983fff2cad4e9f1f9f3ebad211a4f5bb78f6c99df92ce4539f2048b0a831f5` |
| 9 | `def` | [afterPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/afterpacked--892956b2a520e0054dff952e.md) | 79 | `declaration-track:892956b2a520e0054dff952e9776abfd10389bf8f157326f2f38ae401c398891` |
| 10 | `theorem` | [expandRevision_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/expandrevision-encode--36a00c50605088f3494dfb71.md) | 84 | `result-track:36a00c50605088f3494dfb718fcfd46c54d65836f15576ad5928804d9174c65c` |
| 11 | `theorem` | [unpack_before](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/unpack-before--563501a59e7a0a084d6fc5d3.md) | 91 | `result-track:563501a59e7a0a084d6fc5d3a2523b82770b4e269cc340b3868e521f2a9f823c` |
| 12 | `theorem` | [lifted_agreement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/lifted-agreement--12e4d873436b01f859437605.md) | 97 | `result-track:12e4d873436b01f859437605f465364e6ca0d994bd4681553e8f1b5dbdc047e1` |
| 13 | `theorem` | [unpack_after](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/unpack-after--69df1f06e419d0d23bbc1730.md) | 110 | `result-track:69df1f06e419d0d23bbc17303f1502742a3a858606bb93ae6a57770d92cd9899` |
| 14 | `theorem` | [revised_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/revised-valid--53b10cbb1cb50ab0dcac0719.md) | 120 | `result-track:53b10cbb1cb50ab0dcac0719300941ad2543af58cf97e6500c4ca48fbeed99fc` |
| 15 | `theorem` | [revised_recovers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/revised-recovers--c53cec8c975056ddaf0d8f24.md) | 138 | `result-track:c53cec8c975056ddaf0d8f24c36be2bad5b667ec0b7dab41fae79c684f8ea9b0` |
| 16 | `theorem` | [certified_revision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/declarations/certified-revision--eae5924b572a4e1af3ac90b4.md) | 161 | `result-track:eae5924b572a4e1af3ac90b4c1842a196816640b09ada74a270789dd8ce075a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
