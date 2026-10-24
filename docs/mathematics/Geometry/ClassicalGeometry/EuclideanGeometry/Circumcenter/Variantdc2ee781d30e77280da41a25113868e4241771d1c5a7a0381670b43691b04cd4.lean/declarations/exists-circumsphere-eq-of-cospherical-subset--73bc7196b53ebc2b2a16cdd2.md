# exists_circumsphere_eq_of_cospherical_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90152296-436f-ec23-cbd7-e2b33aea8780",
  "kind": "theorem",
  "lexical_name": "exists_circumsphere_eq_of_cospherical_subset",
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
  "slug": "exists-circumsphere-eq-of-cospherical-subset--73bc7196b53ebc2b2a16cdd2",
  "source": {
    "blob": "9dcc3bda2862df36e284732fd248cbc9a318d657",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 748,
    "line": 739,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73bc7196b53ebc2b2a16cdd2b583244b0cca2bb5a3ecc452b6bf1ee308e766a7",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90152296-436f-ec23-cbd7-e2b33aea8780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–748.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_circumsphere_eq_of_cospherical_subset {s : AffineSubspace ℝ P} {ps : Set P}
    (h : ps ⊆ s) [Nonempty s] {n : ℕ} [FiniteDimensional ℝ s.direction]
    (hd : finrank ℝ s.direction = n) (hc : Cospherical ps) :
    ∃ c : Sphere P, ∀ sx : Simplex ℝ P n, Set.range sx.points ⊆ ps → sx.circumsphere = c := by
  obtain ⟨r, hr⟩ := exists_circumradius_eq_of_cospherical_subset h hd hc
  obtain ⟨c, hc⟩ := exists_circumcenter_eq_of_cospherical_subset h hd hc
  exact ⟨⟨c, r⟩, fun sx hsx => Sphere.ext (hc sx hsx) (hr sx hsx)⟩

/-- Two n-simplices among cospherical points in an n-dimensional
subspace have the same circumsphere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dcc3bda2862df36e284732fd248cbc9a318d657` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
