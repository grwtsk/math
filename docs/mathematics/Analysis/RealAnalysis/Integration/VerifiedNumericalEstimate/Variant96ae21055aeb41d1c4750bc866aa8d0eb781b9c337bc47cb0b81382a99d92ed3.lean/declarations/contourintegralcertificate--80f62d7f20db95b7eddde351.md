# contourIntegralCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:038146ad9d32d9da9b0fdc815e6566f6646461addd6136b74b368ef44c9a5bc6",
  "kind": "def",
  "lexical_name": "contourIntegralCertificate",
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
  "slug": "contourintegralcertificate--80f62d7f20db95b7eddde351",
  "source": {
    "blob": "1800c221460a1452591ee7f9ac90789fc5fd57ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 368,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant96ae21055aeb41d1c4750bc866aa8d0eb781b9c337bc47cb0b81382a99d92ed3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80f62d7f20db95b7eddde351ad23c6e011ff8ed59ba47a235b5262969890fa0d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant96ae21055aeb41d1c4750bc866aa8d0eb781b9c337bc47cb0b81382a99d92ed3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:038146ad9d32d9da9b0fdc815e6566f6646461addd6136b74b368ef44c9a5bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def contourIntegralCertificate
    (A : ContourIntegralAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.contourIntegral
  label := A.schema.estimate.label
  publicHash := A.schema.estimate.estimateHash
  sound :=
    A.schema.enclosureSound ∧
      A.schema.theoremInterpretation ∧
      A.contourIntegralSound
  soundProof := contour_integral_authorized A

/-- Convert an argument-principle count authority into an analytic certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant96ae21055aeb41d1c4750bc866aa8d0eb781b9c337bc47cb0b81382a99d92ed3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant96ae21055aeb41d1c4750bc866aa8d0eb781b9c337bc47cb0b81382a99d92ed3.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1800c221460a1452591ee7f9ac90789fc5fd57ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
