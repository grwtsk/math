# InnerOuterFiniteSurface.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b90bd1736eb4720fb415bbfb7819085faed92839293b254cda4bcff0526853e",
  "kind": "def",
  "lexical_name": "InnerOuterFiniteSurface.Valid",
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
  "slug": "innerouterfinitesurface-valid--c1be803c9cf625a4200add4e",
  "source": {
    "blob": "33be4cff06bf41f55f829313b28be8657d04bb65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant3e9f668212042dc08f2a99a2225fd0992860d88aa9c81d0866fbefa81409d67b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1be803c9cf625a4200add4e5376112f55571e410f00091b4600ec4c48bcfe7e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant3e9f668212042dc08f2a99a2225fd0992860d88aa9c81d0866fbefa81409d67b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b90bd1736eb4720fb415bbfb7819085faed92839293b254cda4bcff0526853e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InnerOuterFiniteSurface.Valid (I : InnerOuterFiniteSurface) : Prop :=
  I.finiteSampleDomain = true /\
  I.finitePrimeBoundDeclared = true /\
  I.metricDeclared = true /\
  I.truncationRuleDeclared = true /\
  I.residueForDomainMismatch = true /\
  I.rhClaim = ClaimStatus.absent /\
  I.analyticContinuationClaim = ClaimStatus.absent /\
  I.pntClaim = ClaimStatus.absent /\
  I.primePredictionClaim = ClaimStatus.absent

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant3e9f668212042dc08f2a99a2225fd0992860d88aa9c81d0866fbefa81409d67b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant3e9f668212042dc08f2a99a2225fd0992860d88aa9c81d0866fbefa81409d67b.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33be4cff06bf41f55f829313b28be8657d04bb65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
