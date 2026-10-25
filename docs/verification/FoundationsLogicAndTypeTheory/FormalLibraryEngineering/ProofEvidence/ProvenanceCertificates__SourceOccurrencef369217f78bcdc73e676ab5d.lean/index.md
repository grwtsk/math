# Verification target: GRWTSK.Logic.ProofEvidence.ProvenanceCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79b6aa7521b17e86e657c3310bbff263c8174d4c",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/ProofEvidence/ProvenanceCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79b6aa7521b17e86e657c3310bbff263c8174d4c`.

Source path: `GRWTSK/Logic/ProofEvidence/ProvenanceCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/ProofEvidence/ProvenanceCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [EvidenceGrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/evidencegrade--f57750d1f684ec187ff20aa4.md) | 10 | `declaration-track:f57750d1f684ec187ff20aa447d4439cc33986499cd2bfbac32d100a5453d950` |
| 2 | `inductive` | [SourceKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/sourcekind--f0e593e9d52b6efc0440e4aa.md) | 16 | `declaration-track:f0e593e9d52b6efc0440e4aaf6e0140565a9d2ab6de324ca5803fc5e1b88d28c` |
| 3 | `inductive` | [CircularityRisk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/circularityrisk--47bc5f568b57a5c15d6d5d21.md) | 20 | `declaration-track:47bc5f568b57a5c15d6d5d21d33f3b5ca430c9715175be9aef318d029916f18a` |
| 4 | `structure` | [PacketMetadata](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/packetmetadata--5cb1af2598b6c18a1f039718.md) | 26 | `declaration-track:5cb1af2598b6c18a1f0397188bd2e441827f6d4b673d89e18b4596c39b658af1` |
| 5 | `inductive` | [ExternalEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/externalevidence--faf332d0959fc869715e1319.md) | 52 | `declaration-track:faf332d0959fc869715e1319f3987660e386afbe76506a5002268475024ef30d` |
| 6 | `def` | [ExternalEvidence.grade](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/externalevidence-grade--159e18b4b16a6dc72f5d76ca.md) | 65 | `declaration-track:159e18b4b16a6dc72f5d76ca3eb316a18982d256c7599f930ee1d876c571c249` |
| 7 | `def` | [ExternalEvidence.proof?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/externalevidence-proof--a8fb2c8aa0f9cfca36061a22.md) | 78 | `declaration-track:a8fb2c8aa0f9cfca36061a22d36ce5cffd25b01a9fc51f0eafe9f6d8dbdd8020` |
| 8 | `structure` | [ExternalResearchPacket](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/externalresearchpacket--8bfdc288fef439494b090235.md) | 86 | `declaration-track:8bfdc288fef439494b09023532894ac3708a7e92d5efc6483a2460c5c4fab60b` |
| 9 | `structure` | [ApplicabilityCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/applicabilitycertificate--fda600cfdb13720fbdc27e6f.md) | 93 | `declaration-track:fda600cfdb13720fbdc27e6fa7af69be21f59790e0224f58cd76276e29f99d72` |
| 10 | `def` | [consume](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/consume--35800695bb0d7134611a66cd.md) | 107 | `declaration-track:35800695bb0d7134611a66cddb196407fce539f1a5a70c6850ff0782b697e855` |
| 11 | `theorem` | [reference_cannot_be_consumed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/reference-cannot-be-consumed--582de6523c085d3a74e66e75.md) | 111 | `result-track:582de6523c085d3a74e66e7522f8060186113e1f707e5923d7aa9d5b5f3e4fc3` |
| 12 | `theorem` | [finite_fixture_cannot_be_consumed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/finite-fixture-cannot-be-consumed--c4333e6f36e4ecb8c0bde3c6.md) | 116 | `result-track:c4333e6f36e4ecb8c0bde3c62c51e59cb122a1205461ffdb70af06125692e899` |
| 13 | `theorem` | [invalidated_cannot_be_consumed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/invalidated-cannot-be-consumed--4ca1e3a9101b178e815efd50.md) | 121 | `result-track:4ca1e3a9101b178e815efd50ae15a73a5693ea555fedaac9973c84f18bf29092` |
| 14 | `theorem` | [consumption_supplies_native_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/consumption-supplies-native-proof--c2fc70567f27febe39e5c9b7.md) | 124 | `result-track:c2fc70567f27febe39e5c9b78b22bfa8e1df3509634bd9b99c8bdf19bcaccc00` |
| 15 | `structure` | [RegisteredPacket](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/registeredpacket--e5ecfdc74933aca897137f63.md) | 128 | `declaration-track:e5ecfdc74933aca897137f63ac464bf85bcc1e49e111d9d2cfe4596479c46f4e` |
| 16 | `structure` | [Registry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/registry--c205ff9ba1c49fb7e7c176b1.md) | 132 | `declaration-track:c205ff9ba1c49fb7e7c176b10e4e280eedd7d98e0c3ff97a08c8639789ca1238` |
| 17 | `def` | [Registry.register](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/registry-register--be1a89f61f9f26f520711742.md) | 137 | `declaration-track:be1a89f61f9f26f520711742a688ab60c6ddfa7010453a7dbf3e242bd75ad66b` |
| 18 | `def` | [Registry.invalidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/registry-invalidate--e2a83158b1f344bc85a63d2f.md) | 140 | `declaration-track:e2a83158b1f344bc85a63d2f12abebd76e17e5fe82274049cba2387607e95a6a` |
| 19 | `def` | [Registry.supersede](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/registry-supersede--df6eff6c9230ba702a76487f.md) | 143 | `declaration-track:df6eff6c9230ba702a76487f6997ce69cb0725b805745e1bf3284186d72439cd` |
| 20 | `def` | [Registry.active](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/registry-active--d7c8eaa693391870d2a72d08.md) | 148 | `declaration-track:d7c8eaa693391870d2a72d085ac0870da3d4509778a5002f5a81b26465c27bf3` |
| 21 | `def` | [Registry.activeEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/registry-activeentry--ef2ce42210e9c5db1620d866.md) | 152 | `declaration-track:ef2ce42210e9c5db1620d8660b188fb42d5c9f9abcdb3f95f30172fd8684155d` |
| 22 | `def` | [Registry.consumeEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/registry-consumeentry--343bd8624ed306697774aed3.md) | 158 | `declaration-track:343bd8624ed306697774aed3f50c4cacebe5589ec0bfc51df207707c7159708a` |
| 23 | `theorem` | [invalidation_preserves_packets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/invalidation-preserves-packets--8ea4d03149c75f9f0aa1e04f.md) | 163 | `result-track:8ea4d03149c75f9f0aa1e04fcf18291eebccedaf43dd2357e8b41e25219e4b28` |
| 24 | `theorem` | [supersession_preserves_packets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/supersession-preserves-packets--c4b178d6f9d3e80c1f091ce7.md) | 166 | `result-track:c4b178d6f9d3e80c1f091ce795eccefdc05a9a6b2e428fa842ccde80bbfc588a` |
| 25 | `theorem` | [invalidation_disables](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/invalidation-disables--cd1a39ae36856c333cfedf0c.md) | 169 | `result-track:cd1a39ae36856c333cfedf0cec3c5f8f4a39f013920912bf3a1aff4385ec01f5` |
| 26 | `theorem` | [supersession_disables_old](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/supersession-disables-old--8359e2c747ea080ca4a1ef56.md) | 172 | `result-track:8359e2c747ea080ca4a1ef56ef9e1fe57dd82ef4b17550db2f9c76b1495d1e1d` |
| 27 | `theorem` | [invalidation_blocks_registered_consumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/invalidation-blocks-registered-consumption--63b7461e05c9945ab6ba123d.md) | 176 | `result-track:63b7461e05c9945ab6ba123d2e4ef4aa12ab6d69bb420fa2564414b9adf86686` |
| 28 | `theorem` | [dependency_invalidation_blocks_consumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/dependency-invalidation-blocks-consumption--88009a9938e031c785121b00.md) | 182 | `result-track:88009a9938e031c785121b005b155c64240262db3a869036aaeed0a009fdc9f0` |
| 29 | `theorem` | [registration_preserves_old](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/registration-preserves-old--6789b6c0cfaf0ab850c8f5a6.md) | 194 | `result-track:6789b6c0cfaf0ab850c8f5a602df4da317a75afe588c34367ee3a28e1ea79b77` |
| 30 | `theorem` | [invalidation_preserves_evidence_grade](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/declarations/invalidation-preserves-evidence-grade--2a698a82dd6cd372a200e18d.md) | 197 | `result-track:2a698a82dd6cd372a200e18de163b20f6cdbaf72b8aa67be0c88313d484ad238` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
