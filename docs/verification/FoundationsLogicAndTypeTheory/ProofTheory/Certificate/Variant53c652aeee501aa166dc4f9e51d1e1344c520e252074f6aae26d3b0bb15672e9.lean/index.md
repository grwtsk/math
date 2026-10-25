# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Certificate.Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "721e201d5fa7d72fad1f7eb15ce5297a91e37e88",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `721e201d5fa7d72fad1f7eb15ce5297a91e37e88`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.BoundaryCalculus` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MathlibProofCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/declarations/mathlibproofcertificate--925788f38b0f1b539e75b494.md) | 42 | `declaration-track:925788f38b0f1b539e75b4948fffe243ef133c7ea4bc3c4d60b0788be05b99ea` |
| 2 | `def` | [MathlibProofCertificate.toAnalyticCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/declarations/mathlibproofcertificate-toanalyticcertificate--628b0a7766fc0d182ce034a7.md) | 57 | `declaration-track:628b0a7766fc0d182ce034a7f021e36b773f576c3380ebd27b1fc1b2bc64379e` |
| 3 | `def` | [MathlibProofCertificate.toAnalyticAuthorityToken](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/declarations/mathlibproofcertificate-toanalyticauthoritytoken--e3153621dabcb7ee6ed420cf.md) | 71 | `declaration-track:e3153621dabcb7ee6ed420cfa266010951874993957d7e754bf0033f57a67507` |
| 4 | `theorem` | [mathlib_proof_certificate_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/declarations/mathlib-proof-certificate-sound--cbb4bfb091a4113e6e10d834.md) | 82 | `result-track:cbb4bfb091a4113e6e10d834d7bca387876b3a2d2dd547d27859069d1a8a1bf6` |
| 5 | `theorem` | [mathlib_proof_through_boundary_calculus](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/declarations/mathlib-proof-through-boundary-calculus--0fb080576512d479b4a3442e.md) | 98 | `result-track:0fb080576512d479b4a3442ee554bddb32a91e1ef3f7a9eba0cb5416dba1e02c` |
| 6 | `structure` | [MathlibBoundaryRoute](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/declarations/mathlibboundaryroute--74812fd726c9d0fd1111f634.md) | 122 | `declaration-track:74812fd726c9d0fd1111f6340d1fd6f39049a3019654a6af5c7836fcb3f41b38` |
| 7 | `def` | [MathlibBoundaryRoute.fromProofCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/declarations/mathlibboundaryroute-fromproofcertificate--184b84cc858ad25fc84a6581.md) | 135 | `declaration-track:184b84cc858ad25fc84a65818b88029ff6a835dfef8e004641b6abbca83a2265` |
| 8 | `theorem` | [mathlib_route_template_through_boundary_calculus](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/declarations/mathlib-route-template-through-boundary-calculus--d4b6c7f7fbb3d274b479323b.md) | 151 | `result-track:d4b6c7f7fbb3d274b479323bfdf9dbe57e04d1d6613103938ca85efbbcfa9d62` |
| 9 | `theorem` | [mathlib_certificate_not_underlying_object](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/declarations/mathlib-certificate-not-underlying-object--d57dff4bf3b3336c85c26a71.md) | 161 | `result-track:d57dff4bf3b3336c85c26a717b9aadb507f4171de139d5c5b52e0d731f54bd38` |
| 10 | `theorem` | [finite_payload_authority_attempt_fails](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/declarations/finite-payload-authority-attempt-fails--338418fb219dc57ee5bfa8aa.md) | 176 | `result-track:338418fb219dc57ee5bfa8aaf02765748f106443575b82011ea8453c6296b318` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
