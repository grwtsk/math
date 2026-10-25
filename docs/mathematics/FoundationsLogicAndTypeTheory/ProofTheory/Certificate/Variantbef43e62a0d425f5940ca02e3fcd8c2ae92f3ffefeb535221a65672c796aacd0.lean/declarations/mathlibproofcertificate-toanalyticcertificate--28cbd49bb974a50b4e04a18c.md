# MathlibProofCertificate.toAnalyticCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3012046dacb60304b7fb87ca13d2d8baecf4eb93f380c36be71849a309f270c",
  "kind": "def",
  "lexical_name": "MathlibProofCertificate.toAnalyticCertificate",
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
  "slug": "mathlibproofcertificate-toanalyticcertificate--28cbd49bb974a50b4e04a18c",
  "source": {
    "blob": "7fb905be41626136095d45cfc1e8d937112d6f18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28cbd49bb974a50b4e04a18cefedc3279653819a61c1471c022c841ffe919060",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3012046dacb60304b7fb87ca13d2d8baecf4eb93f380c36be71849a309f270c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MathlibProofCertificate.toAnalyticCertificate
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (P : MathlibProofCertificate Γ b q) :
    AnalyticCertificate where
  kind := b
  label := P.theoremName
  publicHash := 0
  sound := q.statement
  soundProof := P.proof

/-- Package a Mathlib-backed proof certificate as an analytic authority
token. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb905be41626136095d45cfc1e8d937112d6f18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
