# ClaimCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a2e465a9a9ca3082c526524f52c7635a53ec4120b67379e483fa75b84854ae3",
  "kind": "inductive",
  "lexical_name": "ClaimCertificate",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "claimcertificate--3f263f12111d06366d3a4c76",
  "source": {
    "blob": "059d1c3f46796d143b8c22589ef4fed6b232e514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 35,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f263f12111d06366d3a4c76cfa943ae6b5e80baf4315fa60f235ce94f8ff19f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a2e465a9a9ca3082c526524f52c7635a53ec4120b67379e483fa75b84854ae3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ClaimCertificate (proposition : Prop) : ClaimStatus → Type
  | verified :
      proposition →
      ClaimCertificate proposition .verified
  | conditional :
      (hypothesis : Prop) →
      (hypothesis → proposition) →
      ClaimCertificate proposition .conditionallyVerified
  | conjectural :
      ClaimCertificate proposition .conjectural
  | external :
      ExternalEvidence →
      ClaimCertificate proposition .external
  | unsubstantiated :
      ClaimCertificate proposition .unsubstantiated
  | refuted :
      (¬ proposition) →
      ClaimCertificate proposition .refuted

/-- A verified certificate yields its proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `059d1c3f46796d143b8c22589ef4fed6b232e514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
