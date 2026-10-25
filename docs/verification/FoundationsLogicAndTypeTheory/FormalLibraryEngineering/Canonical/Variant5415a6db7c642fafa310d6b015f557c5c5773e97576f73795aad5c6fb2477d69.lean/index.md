# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Canonical.Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40da2dd5e2196f2fc13423c06eadc8a831aa4b6c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40da2dd5e2196f2fc13423c06eadc8a831aa4b6c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Gauge` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeftCanonicalAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69.lean/declarations/leftcanonicalat--fa8b25ea59f8d015a65020d6.md) | 24 | `declaration-track:fa8b25ea59f8d015a65020d6ddcec5c34afff98fc50915f814c3619a7e3ca780` |
| 2 | `def` | [LeftCanonical](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69.lean/declarations/leftcanonical--b708880e8594cf9ac176e15e.md) | 36 | `declaration-track:b708880e8594cf9ac176e15e183cce045a9d5be7302ef3c64d7c5cb90d11b54b` |
| 3 | `structure` | [CanonicalizationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69.lean/declarations/canonicalizationcertificate--f9b9803675ae6fe2e20c8564.md) | 41 | `declaration-track:f9b9803675ae6fe2e20c85641048a7ac4b2165c9341cd314e49c95a46799518f` |
| 4 | `structure` | [ApproxCanonicalizationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69.lean/declarations/approxcanonicalizationcertificate--58d2017cff9166b7f3caf86f.md) | 51 | `declaration-track:58d2017cff9166b7f3caf86fe78a253e106b354b3476e4453b61a99d140a2d8d` |
| 5 | `theorem` | [CanonicalizationCertificate.contract_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant5415a6db7c642fafa310d6b015f557c5c5773e97576f73795aad5c6fb2477d69.lean/declarations/canonicalizationcertificate-contract-eq--acf59034341edd7226dcbd25.md) | 63 | `result-track:acf59034341edd7226dcbd25319e7abc0ca743ab828859e4f6b8b5794b4c6233` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
