# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalFamily.Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11563f54d47a6daa98d8c362c3d3695a8bc1ee85",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11563f54d47a6daa98d8c362c3d3695a8bc1ee85`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Arithmetic.LimitCorrespondence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.SquareRootNorm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrdinalFamilySquareRootCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean/declarations/ordinalfamilysquarerootcertificate--941f7cc6b9ded2828261a639.md) | 28 | `declaration-track:941f7cc6b9ded2828261a639342d1988c967acc4bf112168ded5cf1280d9ce4f` |
| 2 | `def` | [mass](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean/declarations/mass--50992ed75940826f1665e2c4.md) | 54 | `declaration-track:50992ed75940826f1665e2c4ff651f899c58e189220ccd09de074e888b4d8944` |
| 3 | `def` | [discrepancyNorm](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean/declarations/discrepancynorm--bb38775c0dc95319a657e67e.md) | 68 | `declaration-track:bb38775c0dc95319a657e67e78331eebae014612a8969c9dd977f401646fc109` |
| 4 | `theorem` | [ordinal_family_square_root_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean/declarations/ordinal-family-square-root-bound--66f2d437276445e2c82d2529.md) | 82 | `result-track:66f2d437276445e2c82d252949376e680410663d456e9ddaa5864bad3bc82ff9` |
| 5 | `def` | [toSquareRootNormCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean/declarations/tosquarerootnormcertificate--635c7c2a548cf506b55b8840.md) | 123 | `declaration-track:635c7c2a548cf506b55b8840beb2e9923f0948ed9ae6f15b1ef94a0b8f75b290` |
| 6 | `constant` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean/declarations/constant--a992b775189e0359a036f61a.md) | 139 | `declaration-track:a992b775189e0359a036f61ae0833f274e27fc0ce978736f2cae3e1ad5b48a3b` |
| 7 | `theorem` | [ordinal_family_square_root_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant0c2df17c3fbe1702b7475d80b023c89fcdfbed4c1a04ebe8c6548c5765bbde51.lean/declarations/ordinal-family-square-root-finite--d157ab5fe52b2bbc33eaffd6.md) | 149 | `result-track:d157ab5fe52b2bbc33eaffd619416959635cbbbf938a30aace90831ceb84ec34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
