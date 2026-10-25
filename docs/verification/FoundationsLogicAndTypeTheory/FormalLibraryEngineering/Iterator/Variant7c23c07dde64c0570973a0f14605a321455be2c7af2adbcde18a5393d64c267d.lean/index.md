# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f19a4e2969e57114909e8c22d885832bbd03622",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f19a4e2969e57114909e8c22d885832bbd03622`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AssocListIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean/declarations/assoclistiterator--5cde7d84dbd114234118961d.md) | 33 | `declaration-track:5cde7d84dbd114234118961d60337cd7377f574b64108707b89a52d7b83d0552` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean/declarations/instance--23dd5b75fd43cbf2a253d174.md) | 36 | `declaration-track:23dd5b75fd43cbf2a253d17493aa9a64b9159032845b3ac9f6f4a41e43483447` |
| 3 | `def` | [AssocListIterator.finitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean/declarations/assoclistiterator-finitenessrelation--7235b4e077f140e0ce10bcce.md) | 45 | `declaration-track:7235b4e077f140e0ce10bcce2c474197c3d525b59468453e6beebb0451a6f76e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean/declarations/instance--442c6c5bd5201b2a2a4b5982.md) | 54 | `declaration-track:442c6c5bd5201b2a2a4b5982a4760b5b74698cc729e62efb0a8daf4a4c3c0228` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean/declarations/instance--95b5ab8b8feeb0e128f2f2ab.md) | 57 | `declaration-track:95b5ab8b8feeb0e128f2f2ab408da0d1bcc8caae578d78a21d65dfa65aee1c94` |
| 6 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7c23c07dde64c0570973a0f14605a321455be2c7af2adbcde18a5393d64c267d.lean/declarations/iter--4c68a3b13208add386a0862d.md) | 65 | `declaration-track:4c68a3b13208add386a0862d9a5cdd888c8474763d33d12b53fcbe7f7fa147c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
