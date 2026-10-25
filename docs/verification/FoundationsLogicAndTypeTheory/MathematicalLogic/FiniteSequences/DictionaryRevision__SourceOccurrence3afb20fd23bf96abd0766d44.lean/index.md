# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c275139d4666485c32dbb2243badfb9be93c7857",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c275139d4666485c32dbb2243badfb9be93c7857`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence0b76c73035a9807242a57307.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AgreesOnReferences](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/agreesonreferences--dc7465ec315d33aea8aae81f.md) | 29 | `declaration-track:dc7465ec315d33aea8aae81f312fdbb2da7740af24e937daca5955bed757bbe6` |
| 2 | `def` | [replaceDictionary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/replacedictionary--27d18f1a58f948d4f08390b6.md) | 34 | `declaration-track:27d18f1a58f948d4f08390b6cc13e412feb67f76e81db5b074f217a16f8d7c6c` |
| 3 | `theorem` | [decodeReference_eq_iff_lookup_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/decodereference-eq-iff-lookup-eq--266a97bc6435b6e9ca471a63.md) | 39 | `result-track:266a97bc6435b6e9ca471a63d16b4af383bc50f6caa065882c5b5221f6d84e34` |
| 4 | `theorem` | [agrees_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/agrees-refl--397aeef4ae6c9a9dd37c91ce.md) | 47 | `result-track:397aeef4ae6c9a9dd37c91ce06c04f596635016a0e629d8ba2e607e12d97249b` |
| 5 | `theorem` | [agrees_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/agrees-symm--6762bfce16cece71a84c6cc7.md) | 51 | `result-track:6762bfce16cece71a84c6cc78ba9afd670876dc1a6833ddc6536a38eb9de04d0` |
| 6 | `theorem` | [agrees_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/agrees-trans--2a0e4f7d8b969c3677415e05.md) | 57 | `result-track:2a0e4f7d8b969c3677415e05c8d09b41114dece207a3919a6aaa21a02e51fb96` |
| 7 | `theorem` | [unpack_eq_of_agreement](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/unpack-eq-of-agreement--98219f3b970ab5323efb57e0.md) | 65 | `result-track:98219f3b970ab5323efb57e05e1f685271bee0c7a06d4130c8ec19ca78f54b0e` |
| 8 | `theorem` | [unpack_replaceDictionary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/unpack-replacedictionary--3784f28ba484371c6000ea7e.md) | 80 | `result-track:3784f28ba484371c6000ea7e4caf26f73d62c50714712a625b02477018ef21a0` |
| 9 | `structure` | [RevisionCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/revisioncertificate--1af9c7acf5c9bed18007b44d.md) | 86 | `declaration-track:1af9c7acf5c9bed18007b44dd2898722d067c236114868e13af5462c461316d7` |
| 10 | `theorem` | [RevisionCertificate.unpack_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/revisioncertificate-unpack-preserved--0f1b12588ea406fda399c9d8.md) | 93 | `result-track:0f1b12588ea406fda399c9d8d64c1ac27ff9c9a976029e9cf81028250fab93b0` |
| 11 | `theorem` | [unpack_pack_after](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/unpack-pack-after--2f41874f89cc4cda07e642a4.md) | 99 | `result-track:2f41874f89cc4cda07e642a48a5cf3893db4b79e62aed1993ac94062fcd405c8` |
| 12 | `theorem` | [stale_slots_counterexample](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/stale-slots-counterexample--96a63ca8bf8ae2b42da837a4.md) | 106 | `result-track:96a63ca8bf8ae2b42da837a4178a347c921063c6300d289c4543f67a3d7eda02` |
| 13 | `theorem` | [failed_decoders_do_not_imply_agreement](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/declarations/failed-decoders-do-not-imply-agreement--176539b613ac25b0f7c55bdb.md) | 121 | `result-track:176539b613ac25b0f7c55bdb4792322bc155868f8fb6aa0395a4bdd65985c558` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
