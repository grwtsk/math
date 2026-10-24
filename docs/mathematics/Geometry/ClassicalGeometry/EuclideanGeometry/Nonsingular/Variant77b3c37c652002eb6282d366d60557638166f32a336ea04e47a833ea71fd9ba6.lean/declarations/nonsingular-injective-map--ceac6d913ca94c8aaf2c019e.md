# Nonsingular.injective_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb4bf4c6-969a-36f7-2243-8a0ff6efae10",
  "kind": "lemma",
  "lexical_name": "Nonsingular.injective_map",
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
  "slug": "nonsingular-injective-map--ceac6d913ca94c8aaf2c019e",
  "source": {
    "blob": "27570167e30476d5ca72bcef24786c992d7e57a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceac6d913ca94c8aaf2c019ec965daf744272cfc8ee39ea5040db23f823f0a1d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb4bf4c6-969a-36f7-2243-8a0ff6efae10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nonsingular.injective_map
    [X.Nonsingular] {n : ℕ} (x : X _⦋n⦌) (hx : x ∈ X.nonDegenerate n)
    {m : SimplexCategory} {f g : m ⟶ ⦋n⦌}
    (h : X.map f.op x = X.map g.op x) :
    f = g := by
  have := Nonsingular.mono' x hx
  apply stdSimplex.{u}.map_injective
  rw [← cancel_mono (yonedaEquiv.symm x)]
  apply yonedaEquiv.injective
  simpa [yonedaEquiv_comp, yonedaEquiv_map]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27570167e30476d5ca72bcef24786c992d7e57a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
