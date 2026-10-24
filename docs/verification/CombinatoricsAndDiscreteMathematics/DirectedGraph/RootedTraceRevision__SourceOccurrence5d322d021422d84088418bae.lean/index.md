# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.RootedTraceRevision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f8f768bad2ef62bfedba9a39d366ed33279cc18",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f8f768bad2ef62bfedba9a39d366ed33279cc18`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.ParentTraceDictionary`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RootedTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/rootedtrace--759f664a35c45fb37d8b956c.md) | 33 | `declaration-track:759f664a35c45fb37d8b956c1f8e39d3135217156a52ab44237ca085611c660c` |
| 2 | `def` | [rootedRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/rootedrows--bdf0c38c21c30188add665fb.md) | 35 | `declaration-track:bdf0c38c21c30188add665fb5184da234f1cfcf91924a5f89880439c44110061` |
| 3 | `def` | [eraseRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/eraseroots--7b1ccc134342dd8451f9b05f.md) | 38 | `declaration-track:7b1ccc134342dd8451f9b05f90097eb3ea4a51b2f20b9dad8e0ee412232b1cc7` |
| 4 | `theorem` | [eraseRoots_rootedRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/eraseroots-rootedrows--5442e351dfc1a2e73034f61c.md) | 42 | `result-track:5442e351dfc1a2e73034f61c1a1c705f2344972d1272f5c6f99c4ebf733eaef4` |
| 5 | `def` | [liftPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/liftpacked--df7c99ae49174e9213257bda.md) | 47 | `declaration-track:df7c99ae49174e9213257bda948f67ff8d4f935a7cc306c608c8f47f77b4e512` |
| 6 | `theorem` | [unpack_liftPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/unpack-liftpacked--b5e5d493d0b646c080ee9752.md) | 52 | `result-track:b5e5d493d0b646c080ee97526cbdf4af3c8f00b2a5a48aabb172b8e807c7e907` |
| 7 | `def` | [expandRevision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/expandrevision--5f81c698ced03f366a33eeac.md) | 68 | `declaration-track:5f81c698ced03f366a33eeace4672275df480a2b03b617774231fd5511ad8e92` |
| 8 | `def` | [beforePacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/beforepacked--95e8272a048ce44661a2a69b.md) | 75 | `declaration-track:95e8272a048ce44661a2a69bcac4775c77aabd7c486fb7b3c66f16b9c28abff2` |
| 9 | `def` | [afterPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/afterpacked--8b1d8f8e975588573fcbcbef.md) | 79 | `declaration-track:8b1d8f8e975588573fcbcbef817add8e6c7c18033241be23962899c4831bc2cc` |
| 10 | `theorem` | [expandRevision_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/expandrevision-encode--236b595fde84ef275e86bfab.md) | 84 | `result-track:236b595fde84ef275e86bfabd16a849732e1176290cd4c89d019592924940cbf` |
| 11 | `theorem` | [unpack_before](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/unpack-before--73836ea392b4c50beabda2f6.md) | 91 | `result-track:73836ea392b4c50beabda2f6de68f7d187b2a7743b6c5a9384f4d2ff5d906ff1` |
| 12 | `theorem` | [lifted_agreement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/lifted-agreement--f10925c002fcc94f6686e64f.md) | 97 | `result-track:f10925c002fcc94f6686e64f23cb07230d5355a929763afb48aed603724cde99` |
| 13 | `theorem` | [unpack_after](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/unpack-after--101936322710190a2355d5a4.md) | 110 | `result-track:101936322710190a2355d5a463d7451ff27ff695f9baadebf1ac7fe8896eb800` |
| 14 | `theorem` | [revised_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/revised-valid--8c996c8dceea6c27aafa8255.md) | 120 | `result-track:8c996c8dceea6c27aafa82553f117ef03e37759414b15c03a95f85f3cc59c50a` |
| 15 | `theorem` | [revised_recovers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/revised-recovers--e50da7c4a16365557702a5ca.md) | 138 | `result-track:e50da7c4a16365557702a5cae7d5c483f47d287d2178d049dafd6c7105d39439` |
| 16 | `theorem` | [certified_revision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/declarations/certified-revision--1c11cd5286e312677e4fe08c.md) | 161 | `result-track:1c11cd5286e312677e4fe08c9aaff9266187862d48e8078d8d1908c1be7f30e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
