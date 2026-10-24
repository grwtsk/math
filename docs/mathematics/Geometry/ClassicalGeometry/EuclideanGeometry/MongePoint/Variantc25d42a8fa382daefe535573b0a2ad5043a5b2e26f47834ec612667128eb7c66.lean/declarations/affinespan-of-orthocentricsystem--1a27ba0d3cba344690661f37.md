# affineSpan_of_orthocentricSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:055ecf0b-74b1-cff3-06cc-0949180cc076",
  "kind": "theorem",
  "lexical_name": "affineSpan_of_orthocentricSystem",
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
  "slug": "affinespan-of-orthocentricsystem--1a27ba0d3cba344690661f37",
  "source": {
    "blob": "f582cc6d4efac0da3198e0b3cbe489bfc5611cb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 658,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a27ba0d3cba344690661f37ad5d474bad393556fbb6b8dfb23f150cd76ff4d6",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:055ecf0b-74b1-cff3-06cc-0949180cc076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineSpan_of_orthocentricSystem {s : Set P} (ho : OrthocentricSystem s) {p : Fin 3 → P}
    (hps : Set.range p ⊆ s) (hpi : Function.Injective p) :
    affineSpan ℝ (Set.range p) = affineSpan ℝ s := by
  have ha := ho.affineIndependent hps hpi
  rcases ho with ⟨t, _, hts⟩
  have hs : affineSpan ℝ s = affineSpan ℝ (Set.range t.points) := by
    rw [hts, affineSpan_insert_eq_affineSpan ℝ t.orthocenter_mem_affineSpan]
  refine ext_of_direction_eq ?_
    ⟨p 0, mem_affineSpan ℝ (Set.mem_range_self _), mem_affineSpan ℝ (hps (Set.mem_range_self _))⟩
  have hfd : FiniteDimensional ℝ (affineSpan ℝ s).direction := by rw [hs]; infer_instance
  refine Submodule.eq_of_le_of_finrank_eq (direction_le (affineSpan_mono ℝ hps)) ?_
  rw [hs, direction_affineSpan, direction_affineSpan, ha.finrank_vectorSpan (Fintype.card_fin _),
    t.independent.finrank_vectorSpan (Fintype.card_fin _)]

/-- All triangles in an orthocentric system have the same circumradius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f582cc6d4efac0da3198e0b3cbe489bfc5611cb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
