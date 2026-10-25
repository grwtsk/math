# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Finite.Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf5d28f1d90ba367c744f36eba4d7873e9c36127",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf5d28f1d90ba367c744f36eba4d7873e9c36127`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Ownership` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_on_of_finite_cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000.lean/declarations/forall-on-of-finite-cover--a4622041ef52ba4814319df1.md) | 28 | `result-track:a4622041ef52ba4814319df146d566f4afd5a4a054a7070de68b0b3c2d5d4f70` |
| 2 | `theorem` | [forall_on_of_finite_cover_and_tail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000.lean/declarations/forall-on-of-finite-cover-and-tail--bb0866c6e1a2dc71c0beb295.md) | 39 | `result-track:bb0866c6e1a2dc71c0beb295a1a27b4ce1a54e932a975654a905b5ea200b98dd` |
| 3 | `theorem` | [finite_range_does_not_imply_ray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000.lean/declarations/finite-range-does-not-imply-ray--616fc6247eac07da92ed2e64.md) | 52 | `result-track:616fc6247eac07da92ed2e64199452d982c3031ecdcd66f62aeda4d9bf55e22c` |
| 4 | `theorem` | [endpoints_do_not_cover_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000.lean/declarations/endpoints-do-not-cover-interval--563c086d03639788f0a91be7.md) | 64 | `result-track:563c086d03639788f0a91be73925a66f2d17ad4d0f96c66bc359637161f222f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
