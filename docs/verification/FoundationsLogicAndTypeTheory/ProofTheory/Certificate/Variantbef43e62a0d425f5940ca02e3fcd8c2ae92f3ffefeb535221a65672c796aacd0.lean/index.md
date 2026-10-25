# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Certificate.Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fb905be41626136095d45cfc1e8d937112d6f18",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fb905be41626136095d45cfc1e8d937112d6f18`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `AnalyticNumber.BoundaryCalculus` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MathlibProofCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/declarations/mathlibproofcertificate--7e26c504a173fe9c05ae0e5c.md) | 34 | `declaration-track:7e26c504a173fe9c05ae0e5cafcefb5b7d371cfd450284171ddb2593afdfd10c` |
| 2 | `def` | [MathlibProofCertificate.toAnalyticCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/declarations/mathlibproofcertificate-toanalyticcertificate--28cbd49bb974a50b4e04a18c.md) | 49 | `declaration-track:28cbd49bb974a50b4e04a18cefedc3279653819a61c1471c022c841ffe919060` |
| 3 | `def` | [MathlibProofCertificate.toAnalyticAuthorityToken](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/declarations/mathlibproofcertificate-toanalyticauthoritytoken--6ccd794d424be78839953b52.md) | 63 | `declaration-track:6ccd794d424be78839953b525af55f6136523023b19eeb84b302969beb20c5fa` |
| 4 | `theorem` | [mathlib_proof_certificate_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/declarations/mathlib-proof-certificate-sound--8f04537ef71e1b7a826e5126.md) | 74 | `result-track:8f04537ef71e1b7a826e5126f255357326a96b817c1e4f4d8825ed3c1a89fbe5` |
| 5 | `theorem` | [mathlib_proof_through_boundary_calculus](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/declarations/mathlib-proof-through-boundary-calculus--e56699f1c431e401441e09e6.md) | 90 | `result-track:e56699f1c431e401441e09e69bb11a52f31be0462c70bd3c9845e90235a16d9f` |
| 6 | `structure` | [MathlibBoundaryRoute](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/declarations/mathlibboundaryroute--752985f7227df423b227ea2d.md) | 114 | `declaration-track:752985f7227df423b227ea2d725573c8ee558fa584a38abc88e003a7b6eb2209` |
| 7 | `def` | [MathlibBoundaryRoute.fromProofCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/declarations/mathlibboundaryroute-fromproofcertificate--8401e1e8dd5169e2aad5f6ca.md) | 127 | `declaration-track:8401e1e8dd5169e2aad5f6ca7e728bacaf2fe4c8f27b628ba8f6052b3ff94411` |
| 8 | `theorem` | [mathlib_route_template_through_boundary_calculus](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/declarations/mathlib-route-template-through-boundary-calculus--95fdcbbfbdf1b7ec9f874d81.md) | 143 | `result-track:95fdcbbfbdf1b7ec9f874d816652948c37563cc4c34385b1215548b5b81efa54` |
| 9 | `theorem` | [mathlib_certificate_not_underlying_object](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/declarations/mathlib-certificate-not-underlying-object--e8f913591b7b52cf71f38852.md) | 153 | `result-track:e8f913591b7b52cf71f38852e748ed2428c8af78066a043fadbca37b4a825c45` |
| 10 | `theorem` | [finite_payload_authority_attempt_fails](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/declarations/finite-payload-authority-attempt-fails--aa43b1ae3d694bb668e3d33d.md) | 168 | `result-track:aa43b1ae3d694bb668e3d33dab360936cdfee97de1dad006ec95c6c0087dbc84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
