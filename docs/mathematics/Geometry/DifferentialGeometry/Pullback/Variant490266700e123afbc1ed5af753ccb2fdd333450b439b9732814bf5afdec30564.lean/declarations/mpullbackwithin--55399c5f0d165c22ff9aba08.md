# mpullbackWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dc029bbd8e74ef1c2620f98350f1e72dd91b45793433b88e77fe7c9d980aa01",
  "kind": "def",
  "lexical_name": "mpullbackWithin",
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
  "slug": "mpullbackwithin--55399c5f0d165c22ff9aba08",
  "source": {
    "blob": "ecc8517501fbd02b2d7581b7ef1cf9a3e4840726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 94,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55399c5f0d165c22ff9aba087e9cb5457b02b9934ad53518b235f87852684453",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dc029bbd8e74ef1c2620f98350f1e72dd91b45793433b88e77fe7c9d980aa01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mpullbackWithin (f : M → M') (V : Π (x : M'), TangentSpace I' x) (s : Set M) (x : M) :
    TangentSpace I x :=
  (mfderivWithin I I' f s x).inverse (V (f x))

variable (I I') in
/-- The pullback of a vector field under a map between manifolds. If the derivative of the map is
not invertible, then pullback is given the junk value zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecc8517501fbd02b2d7581b7ef1cf9a3e4840726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
