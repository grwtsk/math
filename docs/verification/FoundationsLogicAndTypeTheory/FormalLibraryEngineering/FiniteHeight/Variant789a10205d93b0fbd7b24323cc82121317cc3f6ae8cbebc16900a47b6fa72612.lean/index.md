# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteHeight.Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e77e63c6e838927964af132b9a1189016f339b99",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e77e63c6e838927964af132b9a1189016f339b99`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Reduction.Simulation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/listmax--f144b799b7944195b649acca.md) | 19 | `declaration-track:f144b799b7944195b649acca9c06fa29c857d678e49661bf1e803b27fa0d2e18` |
| 2 | `theorem` | [listMax_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/listmax-nil--854b8116ef4bf0462860be9d.md) | 23 | `result-track:854b8116ef4bf0462860be9d56f7efd8dc15eccd166551f2fa0ce3faff78c8f7` |
| 3 | `theorem` | [listMax_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/listmax-cons--02b1e9cb9c61ddd6a9c560f3.md) | 24 | `result-track:02b1e9cb9c61ddd6a9c560f36e381c65ac97d345d32c5b9221278192509dce87` |
| 4 | `theorem` | [le_listMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/le-listmax--d228cefd18af5ddc9edea906.md) | 28 | `result-track:d228cefd18af5ddc9edea906b60a4a5e131ea93c79ded16f771c5d141260f168` |
| 5 | `theorem` | [listMax_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/listmax-le--1f64975f9e7d7c8aba8d17e3.md) | 38 | `result-track:1f64975f9e7d7c8aba8d17e39ec3455fb57ed7fa8dd50bec9b1e8d86b1b7f1db` |
| 6 | `theorem` | [listMax_mem_or_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/listmax-mem-or-zero--47742e7d85eb9d1dc17bcfb4.md) | 46 | `result-track:47742e7d85eb9d1dc17bcfb4f780728138b14b9bdeaf60e67703f2da258645f1` |
| 7 | `structure` | [FiniteReducer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/finitereducer--3c77666840dca62155ed7581.md) | 62 | `declaration-track:3c77666840dca62155ed758140bc0bfe9debf9979f535db7f2daa04a2cf59a90` |
| 8 | `def` | [FiniteReducer.height](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/finitereducer-height--088c58634ea2c02d663ba3fa.md) | 73 | `declaration-track:088c58634ea2c02d663ba3fa727bd22a73fffd0b9a613c20af1f9c7feb1434bc` |
| 9 | `theorem` | [FiniteReducer.height_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/finitereducer-height-eq--8ba226620f33fdfaa697c765.md) | 79 | `result-track:8ba226620f33fdfaa697c76562fb13810c4588c234382c26194cf60626d1d463` |
| 10 | `theorem` | [FiniteReducer.height_decreases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/finitereducer-height-decreases--192ca34c39a48b2326a23457.md) | 86 | `result-track:192ca34c39a48b2326a234570c89b85d8af2de0eaee14c7901bec3526c0e4060` |
| 11 | `theorem` | [FiniteReducer.height_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/finitereducer-height-zero-iff--3774063b1b0089f3f3b9faca.md) | 95 | `result-track:3774063b1b0089f3f3b9facace00cb0a4fd616fcce74b8a33c1b47f0dd2f6a54` |
| 12 | `theorem` | [FiniteReducer.trace_height_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/finitereducer-trace-height-bound--3fe2da292aae8f8590648d41.md) | 110 | `result-track:3fe2da292aae8f8590648d41a86630dc12e691e058eeaddd63de69f378fdf1e7` |
| 13 | `theorem` | [FiniteReducer.longest_trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/finitereducer-longest-trace--1b4bc4c7e9d31c8839d62b80.md) | 116 | `result-track:1b4bc4c7e9d31c8839d62b80f2b57f6ec598f6d67c7db3bbae295f1ab16f21cc` |
| 14 | `def` | [FiniteReducer.catalogueBudget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/finitereducer-cataloguebudget--33ebc94c6ae3382f3abacdbe.md) | 133 | `declaration-track:33ebc94c6ae3382f3abacdbe853a10638cb2fc548548c0c116a9a5fc6cfea5e7` |
| 15 | `theorem` | [FiniteReducer.catalogue_trace_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/declarations/finitereducer-catalogue-trace-bound--4699570155fb91a9aa316a47.md) | 138 | `result-track:4699570155fb91a9aa316a47734ab84a21250d7db5c7305db973da6a44e85651` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
