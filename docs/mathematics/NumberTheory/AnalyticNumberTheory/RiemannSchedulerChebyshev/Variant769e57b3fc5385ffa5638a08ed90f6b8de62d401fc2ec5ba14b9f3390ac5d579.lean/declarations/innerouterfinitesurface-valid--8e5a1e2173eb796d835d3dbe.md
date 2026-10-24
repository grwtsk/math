# InnerOuterFiniteSurface.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:791eaa440e5a93f572ba7c86bee94434ce806105b7270168137792893295ec81",
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
  "slug": "innerouterfinitesurface-valid--8e5a1e2173eb796d835d3dbe",
  "source": {
    "blob": "b79e62661e927d66b5d389011fb3436cc4c3600b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e5a1e2173eb796d835d3dbe59e1a0d3cbef4593fbcd4074401dc046297c7d13",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:791eaa440e5a93f572ba7c86bee94434ce806105b7270168137792893295ec81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b79e62661e927d66b5d389011fb3436cc4c3600b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
