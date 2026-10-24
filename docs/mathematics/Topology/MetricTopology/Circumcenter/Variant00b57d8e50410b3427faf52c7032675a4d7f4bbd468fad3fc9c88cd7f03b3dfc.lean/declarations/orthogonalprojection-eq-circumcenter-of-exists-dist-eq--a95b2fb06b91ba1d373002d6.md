# orthogonalProjection_eq_circumcenter_of_exists_dist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:483a9dc0-599d-b9c4-0cf0-ee15fc510fac",
  "kind": "theorem",
  "lexical_name": "orthogonalProjection_eq_circumcenter_of_exists_dist_eq",
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
  "slug": "orthogonalprojection-eq-circumcenter-of-exists-dist-eq--a95b2fb06b91ba1d373002d6",
  "source": {
    "blob": "fdf27b75e3954ea760c79c60baa5cb6d2eca1d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 473,
    "path": "GRWTSK/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a95b2fb06b91ba1d373002d6a9a4fcf63db3acc6a640904f9faf4578a45d1059",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:483a9dc0-599d-b9c4-0cf0-ee15fc510fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalProjection_eq_circumcenter_of_exists_dist_eq {n : ℕ} (s : Simplex ℝ P n) {p : P}
    (hr : ∃ r, ∀ i, dist (s.points i) p = r) :
    ↑(s.orthogonalProjectionSpan p) = s.circumcenter := by
  change ∃ r : ℝ, ∀ i, (fun x => dist x p = r) (s.points i) at hr
  have hr : ∃ (r : ℝ), ∀ (a : P),
      a ∈ Set.range (fun (i : Fin (n + 1)) => s.points i) → dist a p = r := by
    cases' hr with r hr
    use r
    refine' Set.forall_range_iff.mpr _
    exact hr
  rw [exists_dist_eq_iff_exists_dist_orthogonalProjection_eq (subset_affineSpan ℝ _) p] at hr
  cases' hr with r hr
  exact
    s.eq_circumcenter_of_dist_eq (orthogonalProjection_mem p) fun i => hr _ (Set.mem_range_self i)
#align affine.simplex.orthogonal_projection_eq_circumcenter_of_exists_dist_eq Affine.Simplex.orthogonalProjection_eq_circumcenter_of_exists_dist_eq

/-- If a point has the same distance from all vertices of a simplex,
the orthogonal projection of that point onto the subspace spanned by
that simplex is its circumcenter.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf27b75e3954ea760c79c60baa5cb6d2eca1d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
