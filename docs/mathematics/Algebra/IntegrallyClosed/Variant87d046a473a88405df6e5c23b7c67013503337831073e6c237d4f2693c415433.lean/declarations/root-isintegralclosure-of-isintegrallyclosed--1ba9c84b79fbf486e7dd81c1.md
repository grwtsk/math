# _root_.IsIntegralClosure.of_isIntegrallyClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2ac48fe7d6b3d33a3bd2ee082b0b19d08803c35b3967f7387875d47f4024ec7",
  "kind": "instance",
  "lexical_name": "_root_.IsIntegralClosure.of_isIntegrallyClosed",
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
  "slug": "root-isintegralclosure-of-isintegrallyclosed--1ba9c84b79fbf486e7dd81c1",
  "source": {
    "blob": "88fb3e802a23c22bf0870eb03f89077f2de0f04c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 230,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ba9c84b79fbf486e7dd81c130dc518ef478212cfaf70693955a27dd9954123c",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2ac48fe7d6b3d33a3bd2ee082b0b19d08803c35b3967f7387875d47f4024ec7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.IsIntegralClosure.of_isIntegrallyClosed [IsIntegrallyClosed R]
    [Algebra S R] [Algebra S K] [IsScalarTower S R K] [Algebra.IsIntegral S R] :
    IsIntegralClosure R S K :=
  IsIntegralClosure.of_isIntegrallyClosedIn

variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88fb3e802a23c22bf0870eb03f89077f2de0f04c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
