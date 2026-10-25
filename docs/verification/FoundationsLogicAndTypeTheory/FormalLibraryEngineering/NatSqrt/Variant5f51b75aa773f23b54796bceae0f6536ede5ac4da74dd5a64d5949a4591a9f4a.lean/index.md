# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatSqrt.Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c81049b24a8adfa82e65fc911d672b65af95f86b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c81049b24a8adfa82e65fc911d672b65af95f86b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean.json)

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
| 1 | `lemma` | [nat_sqrt_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean/declarations/nat-sqrt-helper--686a732896e67c96f338e6b7.md) | 31 | `result-track:686a732896e67c96f338e6b7b768098a9f068784fbce3f0db735329610e58f92` |
| 2 | `theorem` | [isNat_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean/declarations/isnat-sqrt--c44e4d31ce787f4f77c1b643.md) | 37 | `result-track:c44e4d31ce787f4f77c1b6435998060678706e38596cc92bc8fedce8962f5746` |
| 3 | `def` | [proveNatSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean/declarations/provenatsqrt--bf8e05b6c583e76e17a31777.md) | 42 | `declaration-track:bf8e05b6c583e76e17a31777f514d871a7c2655f358ed79797944ab71fc7ed26` |
| 4 | `def` | [evalNatSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean/declarations/evalnatsqrt--c37d9e863a0349f57b209a43.md) | 56 | `declaration-track:c37d9e863a0349f57b209a4374210027cf14495aea53b8449ff006dd01dcc1d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
