# finiteType_of_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1697851819b1bb890527198b5ac2b65ae9656add98722a2a5b0833f54abad0c",
  "kind": "instance",
  "lexical_name": "finiteType_of_fg",
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
  "slug": "finitetype-of-fg--d3912aad2fb0f735a63e27ff",
  "source": {
    "blob": "1dda6c9206e6187b9b13d614c8cda4b511f625ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 607,
    "path": "GRWTSK/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3912aad2fb0f735a63e27ff2f3a54b910cef114385df142c69aaf820e8b24a1",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1697851819b1bb890527198b5ac2b65ae9656add98722a2a5b0833f54abad0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance finiteType_of_fg [CommRing R] [Monoid.FG M] : FiniteType R (MonoidAlgebra R M) :=
  (AddMonoidAlgebra.finiteType_of_fg R (Additive M)).equiv (toAdditiveAlgEquiv R M).symm
#align monoid_algebra.finite_type_of_fg MonoidAlgebra.finiteType_of_fg

/-- A monoid `M` is finitely generated if and only if `MonoidAlgebra R M` is of finite type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dda6c9206e6187b9b13d614c8cda4b511f625ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
