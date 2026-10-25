# mathlib_certificate_not_underlying_object

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fb905be41626136095d45cfc1e8d937112d6f18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/bef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cf71873-c4a7-eb84-58ea-c9a6ef3badc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90b3a320-5d27-49ba-04b6-f28e762ed198",
  "kind": "theorem",
  "lexical_name": "mathlib_certificate_not_underlying_object",
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
  "slug": "mathlib-certificate-not-underlying-object--e8f913591b7b52cf71f38852",
  "source": {
    "blob": "7fb905be41626136095d45cfc1e8d937112d6f18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8f913591b7b52cf71f38852e748ed2428c8af78066a043fadbca37b4a825c45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90b3a320-5d27-49ba-04b6-f28e762ed198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mathlib_certificate_not_underlying_object
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (P : MathlibProofCertificate Γ b q) :
    ¬ Authority.CertificateIsUnderlyingObject P.toAnalyticCertificate :=
  Authority.certificate_not_underlying_object P.toAnalyticCertificate

/--
Finite payloads may not cross an analytic boundary directly.

This is the route-template firewall: a finite payload can be carried as
metadata inside a certificate route, but it cannot own the analytic claim unless
the route supplies the proof-carrying certificate and boundary-calculus token.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb905be41626136095d45cfc1e8d937112d6f18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
