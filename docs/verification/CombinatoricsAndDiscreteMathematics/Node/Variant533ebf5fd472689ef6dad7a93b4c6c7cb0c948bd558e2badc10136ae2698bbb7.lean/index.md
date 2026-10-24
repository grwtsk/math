# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Node.Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b158e1337bad8c77e3a4f22e031e2a16696023ad",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b158e1337bad8c77e3a4f22e031e2a16696023ad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Universe.Authority` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TerrainNodeKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/declarations/terrainnodekind--2e9050f5cdfb817c2bff03f3.md) | 10 | `declaration-track:2e9050f5cdfb817c2bff03f3f29590d25bb2cf25918c81f760a977eb93cf8463` |
| 2 | `inductive` | [TerrainRelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/declarations/terrainrelation--608aa9416264c988a0832765.md) | 24 | `declaration-track:608aa9416264c988a08327651c89fa23be6614dbd50f66f2018cdfd7679672e5` |
| 3 | `structure` | [TerrainNode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/declarations/terrainnode--18a29dc329f9d7dcd4520feb.md) | 40 | `declaration-track:18a29dc329f9d7dcd4520feb3078f6ef930cf17531f5dd31cb364a0c50d27541` |
| 4 | `structure` | [RelationCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/declarations/relationcertificate--9aeb49ae9dc6615067fe77f9.md) | 55 | `declaration-track:9aeb49ae9dc6615067fe77f94aa003244d2a4c6d2075ba94f884cc7f34e5cc67` |
| 5 | `structure` | [TerrainEdgeDescriptor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/declarations/terrainedgedescriptor--5b95f9b65f2511032cf40dcf.md) | 62 | `declaration-track:5b95f9b65f2511032cf40dcf0790773650fd3ff1e338f9c4c4a35a745167c45b` |
| 6 | `structure` | [TerrainCellDescriptor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/declarations/terraincelldescriptor--1214015b1b2e1a381492faf3.md) | 73 | `declaration-track:1214015b1b2e1a381492faf3935e01cc89eb762bbaa19f72419f8337bab11dbb` |
| 7 | `structure` | [RuntimeBindingDescriptor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/declarations/runtimebindingdescriptor--9e7300dca4084f01901cc084.md) | 81 | `declaration-track:9e7300dca4084f01901cc0840549af91c36fae2e81c36a4587408fb5909abbca` |
| 8 | `structure` | [ExternalAuthorityDescriptor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/declarations/externalauthoritydescriptor--ac9543457858853fbda25c20.md) | 91 | `declaration-track:ac9543457858853fbda25c20c9508512d71e08b6073462f2459e5d664b2abfb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
