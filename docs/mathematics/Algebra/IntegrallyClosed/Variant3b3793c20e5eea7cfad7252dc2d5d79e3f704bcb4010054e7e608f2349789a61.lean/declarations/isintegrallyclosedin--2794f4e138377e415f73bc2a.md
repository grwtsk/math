# IsIntegrallyClosedIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c33669a938e7707d457c08e23b2999dc4c753cae6cef6bda7ef0c8e3363ec1c",
  "kind": "abbrev",
  "lexical_name": "IsIntegrallyClosedIn",
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
  "slug": "isintegrallyclosedin--2794f4e138377e415f73bc2a",
  "source": {
    "blob": "a3b2c3fe97eec48df615cc5229fbc9200ab40b45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 69,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2794f4e138377e415f73bc2acbb0d56d3b1963a3737a47e30928853753e4995a",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c33669a938e7707d457c08e23b2999dc4c753cae6cef6bda7ef0c8e3363ec1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IsIntegrallyClosedIn (R A : Type*) [CommRing R] [CommRing A] [Algebra R A] :=
  IsIntegralClosure R R A

/-- `R` is integrally closed if all integral elements of `Frac(R)` are also elements of `R`.

This definition uses `FractionRing R` to denote `Frac(R)`. See `isIntegrallyClosed_iff`
if you want to choose another field of fractions for `R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b2c3fe97eec48df615cc5229fbc9200ab40b45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
