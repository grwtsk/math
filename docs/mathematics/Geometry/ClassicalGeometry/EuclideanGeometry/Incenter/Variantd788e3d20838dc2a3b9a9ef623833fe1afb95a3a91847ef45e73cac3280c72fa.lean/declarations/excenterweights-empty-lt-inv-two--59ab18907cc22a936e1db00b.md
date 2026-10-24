# excenterWeights_empty_lt_inv_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3582747-5b7d-9ef2-5497-44ee6bdd590f",
  "kind": "lemma",
  "lexical_name": "excenterWeights_empty_lt_inv_two",
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
  "slug": "excenterweights-empty-lt-inv-two--59ab18907cc22a936e1db00b",
  "source": {
    "blob": "401cc1ded433db248dd46aeca64cc5cd3edffc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 338,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59ab18907cc22a936e1db00b320c66c56e306977c1726354ef7d184607dc85bd",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3582747-5b7d-9ef2-5497-44ee6bdd590f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma excenterWeights_empty_lt_inv_two [n.AtLeastTwo] (i : Fin (n + 1)) :
    s.excenterWeights ∅ i < 2⁻¹ := by
  have h : (s.height i)⁻¹ + (s.height i)⁻¹ < (s.height i)⁻¹ + ∑ j ∈ {i}ᶜ, (s.height j)⁻¹ := by
    have := s.inv_height_lt_sum_inv_height i
    rwa [filter_ne', ← compl_singleton, ← add_lt_add_iff_left (s.height i)⁻¹] at this
  replace h : 2 * (s.height i)⁻¹ < ∑ j ∈ {i}, (s.height j)⁻¹ + ∑ j ∈ {i}ᶜ, (s.height j)⁻¹ := by
    rwa [two_mul, sum_singleton]
  replace h : (s.height i)⁻¹ / ∑ i, (s.height i)⁻¹ < 2⁻¹ := by
    rwa [sum_add_sum_compl, ← lt_inv_mul_iff₀ zero_lt_two, ← div_lt_iff₀ (by positivity)] at h
  convert! h
  simp [excenterWeights, excenterWeightsUnnorm, div_eq_inv_mul]

/-- The exsphere with signs determined by the given set of indices (for the empty set, this is
the insphere; for a singleton set, this is the exsphere opposite a vertex).  This is only
meaningful if `s.ExcenterExists`; otherwise, it is a sphere of radius zero at some arbitrary
point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401cc1ded433db248dd46aeca64cc5cd3edffc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
