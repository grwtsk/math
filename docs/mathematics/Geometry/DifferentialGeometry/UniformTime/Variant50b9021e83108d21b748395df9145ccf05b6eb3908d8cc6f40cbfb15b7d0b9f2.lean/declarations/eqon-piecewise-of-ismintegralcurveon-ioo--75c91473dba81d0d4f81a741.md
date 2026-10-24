# eqOn_piecewise_of_isMIntegralCurveOn_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e4a7e2723fe6ef8e7f9deb69d3a2a274fbcc425",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1f32174-342a-c856-d021-0e1f24ae0001",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f95529ce-7350-2e19-66d2-8b4ca5748603",
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
  "slug": "eqon-piecewise-of-ismintegralcurveon-ioo--75c91473dba81d0d4f81a741",
  "source": {
    "blob": "2e4a7e2723fe6ef8e7f9deb69d3a2a274fbcc425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 109,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75c91473dba81d0d4f81a74102d1b48cb5d0129fd416c793b9aba4139aff67df",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f95529ce-7350-2e19-66d2-8b4ca5748603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–134.

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

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e4a7e2723fe6ef8e7f9deb69d3a2a274fbcc425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
