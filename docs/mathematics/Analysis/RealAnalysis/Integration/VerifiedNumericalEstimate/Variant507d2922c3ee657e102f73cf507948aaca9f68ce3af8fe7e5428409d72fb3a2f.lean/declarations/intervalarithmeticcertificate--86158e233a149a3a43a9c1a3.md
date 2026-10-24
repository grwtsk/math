# intervalArithmeticCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db41c0d7d348d55cb3c0573e4707eff03847496ccb15452d567b8aa600cfda6e",
  "kind": "def",
  "lexical_name": "intervalArithmeticCertificate",
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
  "slug": "intervalarithmeticcertificate--86158e233a149a3a43a9c1a3",
  "source": {
    "blob": "55101f3ca477ca98f3e66fe1de9c842e3fa844b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 350,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86158e233a149a3a43a9c1a3ec3801afaf36d116803fe7b3c3112deab1d78074",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db41c0d7d348d55cb3c0573e4707eff03847496ccb15452d567b8aa600cfda6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intervalArithmeticCertificate
    (A : IntervalArithmeticAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.intervalArithmetic
  label := A.schema.estimate.label
  publicHash := A.schema.estimate.estimateHash
  sound :=
    A.schema.enclosureSound ∧
      A.schema.theoremInterpretation ∧
      A.intervalArithmeticSound
  soundProof := interval_arithmetic_authorized A

/-- Convert a tail-bound authority into an analytic certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55101f3ca477ca98f3e66fe1de9c842e3fa844b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
