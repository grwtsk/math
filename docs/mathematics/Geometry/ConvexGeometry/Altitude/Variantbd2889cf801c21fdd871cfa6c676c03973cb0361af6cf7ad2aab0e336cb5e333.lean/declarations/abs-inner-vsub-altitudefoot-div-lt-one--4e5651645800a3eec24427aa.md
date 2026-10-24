# abs_inner_vsub_altitudeFoot_div_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d2e2209-74d1-1ad2-ea2a-f96899831b80",
  "kind": "lemma",
  "lexical_name": "abs_inner_vsub_altitudeFoot_div_lt_one",
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
  "slug": "abs-inner-vsub-altitudefoot-div-lt-one--4e5651645800a3eec24427aa",
  "source": {
    "blob": "a1aa69771aa82b62f207e19c9fcdc09fd48e6eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 415,
    "path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e5651645800a3eec24427aab97c8b1eb5d252a38e5008c6dcf600009358b377",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d2e2209-74d1-1ad2-ea2a-f96899831b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_inner_vsub_altitudeFoot_div_lt_one {i j : Fin (n + 1)} (hij : i ≠ j) :
    |⟪s.points i -ᵥ s.altitudeFoot i, s.points j -ᵥ s.altitudeFoot j⟫
            / (s.height i * s.height j)| < 1 := by
  rw [abs_div, div_lt_one (by simp [height])]
  nth_rw 2 [abs_eq_self.2]
  · exact abs_inner_vsub_altitudeFoot_lt_mul _ hij
  · simp only [height]
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1aa69771aa82b62f207e19c9fcdc09fd48e6eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
