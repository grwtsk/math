# eqOn_piecewise_of_isMIntegralCurveOn_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddf8df5b-adba-4502-c7dd-254eeac7ee94",
  "kind": "lemma",
  "lexical_name": "eqOn_piecewise_of_isMIntegralCurveOn_Ioo",
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
  "slug": "eqon-piecewise-of-ismintegralcurveon-ioo--51c2a737ef0b906f00432e1f",
  "source": {
    "blob": "b01418a834361d0988a6855f35212635e34fab65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 117,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51c2a737ef0b906f00432e1fa05d96a52b80b82fc13356e986fb7c242949fded",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddf8df5b-adba-4502-c7dd-254eeac7ee94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eqOn_piecewise_of_isMIntegralCurveOn_Ioo [BoundarylessManifold I M]
    (hv : CMDiff 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M)))
    {a b a' b' : ℝ} (hγ : IsMIntegralCurveOn γ v (Ioo a b))
    (hγ' : IsMIntegralCurveOn γ' v (Ioo a' b'))
    (ht₀ : t₀ ∈ Ioo a b ∩ Ioo a' b') (h : γ t₀ = γ' t₀) :
    EqOn (piecewise (Ioo a b) γ γ') γ' (Ioo a' b') := by
  intro t ht
  suffices H : EqOn γ γ' (Ioo (max a a') (min b b')) by
    by_cases hmem : t ∈ Ioo a b
    · rw [piecewise, ite_eq_left hmem]
      apply H
      simp [ht.1, ht.2, hmem.1, hmem.2]
    · rw [piecewise, ite_eq_right hmem]
  apply isMIntegralCurveOn_Ioo_eqOn_of_contMDiff_boundaryless _ hv
    (hγ.mono (Ioo_subset_Ioo (le_max_left ..) (min_le_left ..)))
    (hγ'.mono (Ioo_subset_Ioo (le_max_right ..) (min_le_right ..))) h
  exact ⟨max_lt ht₀.1.1 ht₀.2.1, lt_min ht₀.1.2 ht₀.2.2⟩

/-- The extension of an integral curve by another integral curve is an integral curve.

If two integral curves are defined on overlapping open intervals, and they agree at a point in
their common domain, then they can be patched together to form a longer integral curve.

This is stated for manifolds without boundary for simplicity. We actually only need to assume that
the images of `γ` and `γ'` lie in the interior of the manifold.
TODO: Generalise to manifolds with boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b01418a834361d0988a6855f35212635e34fab65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
