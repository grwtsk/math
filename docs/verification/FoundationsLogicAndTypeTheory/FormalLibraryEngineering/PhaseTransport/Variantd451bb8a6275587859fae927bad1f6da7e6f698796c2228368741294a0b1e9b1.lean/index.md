# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseTransport.Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4abf6c4deb67a0a5b78ef0f59fc71fa683f902d7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseTransport/Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseTransport/Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseTransport/Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4abf6c4deb67a0a5b78ef0f59fc71fa683f902d7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseTransport/Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseTransport/Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.AmplitudeTransport` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PhaseTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseTransport/Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1.lean/declarations/phasetransport--45a51c77dea248bc1dabc8c1.md) | 11 | `declaration-track:45a51c77dea248bc1dabc8c13912ecdff01c63b00acb5604330279b220988ecf` |
| 2 | `def` | [DeflectionPath.transportResidue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseTransport/Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1.lean/declarations/deflectionpath-transportresidue--72532badaee715e84c361d4b.md) | 35 | `declaration-track:72532badaee715e84c361d4ba6af11b39932aa469cfcf75342b7dae5ac1510cd` |
| 3 | `theorem` | [DeflectionPath.transportResidue_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseTransport/Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1.lean/declarations/deflectionpath-transportresidue-safe--a8dc956508097119201e4345.md) | 45 | `result-track:a8dc956508097119201e4345c52e19f178472a62e29b671d547ba8f9ebc7c9e9` |
| 4 | `theorem` | [PhaseTransport.defectLoop_reflects](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseTransport/Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1.lean/declarations/phasetransport-defectloop-reflects--b4b8492eef07926b7e32f693.md) | 57 | `result-track:b4b8492eef07926b7e32f693e2d8d41b03481690d58eb4994098afdd95a016e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
