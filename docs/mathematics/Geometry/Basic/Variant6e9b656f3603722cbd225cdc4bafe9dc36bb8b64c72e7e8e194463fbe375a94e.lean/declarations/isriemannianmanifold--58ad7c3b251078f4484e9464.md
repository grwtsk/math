# IsRiemannianManifold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d6b3e34340995113521d776b30bdf912f90588eb84394be982e60b86c96e5b0",
  "kind": "class",
  "lexical_name": "IsRiemannianManifold",
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
  "slug": "isriemannianmanifold--58ad7c3b251078f4484e9464",
  "source": {
    "blob": "df5a323d49ec7b544a8a776bdc3dbf2c1c95d09b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 89,
    "path": "GRWTSK/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58ad7c3b251078f4484e946450950d111c14616eb097c073da2b64dafe2d9569",
  "verification": {
    "reference": "docs/verification/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d6b3e34340995113521d776b30bdf912f90588eb84394be982e60b86c96e5b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsRiemannianManifold : Prop where
  out (x y : M) : edist x y = riemannianEDist I x y

end

section

/-!
### Riemannian structure on an inner product vector space

We endow an inner product vector space with the canonical Riemannian metric, given by the
inner product of the vector space in each of the tangent spaces, and we show that this construction
satisfies the `IsRiemannianManifold 𝓘(ℝ, E) E` predicate, i.e., the extended distance between
two points is the infimum of the length of paths between these points.
-/

variable {F : Type*} [NormedAddCommGroup F] [InnerProductSpace ℝ F]

set_option backward.isDefEq.respectTransparency false in
variable (F) in
/-- The standard Riemannian metric on a vector space with an inner product, given by this inner
product on each tangent space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df5a323d49ec7b544a8a776bdc3dbf2c1c95d09b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
