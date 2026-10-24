# scaleWindow_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b298a4d4ab6e4448a9fe7f23231c6a3b626cdaea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5a79cdf-4db7-b165-b2e6-8d39d64defc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a71597ff-9221-7dbf-1095-e37027923e9d",
  "kind": "theorem",
  "lexical_name": "scaleWindow_ae",
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
  "slug": "scalewindow-ae--1da3465c683094d9ea2aaf53",
  "source": {
    "blob": "b298a4d4ab6e4448a9fe7f23231c6a3b626cdaea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1da3465c683094d9ea2aaf5386010a858fa9b695d021bcdaa8ba28302e9c0bf4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a71597ff-9221-7dbf-1095-e37027923e9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scaleWindow_ae (T t : ℝ) (m d : ℕ) (ht : 0 ≤ t) :
    (fun A ↦ scaleWindow A t m d) =ᵐ[volume.restrict (Ioc 1 T)]
      (Ioc (lowerScale t) (upperScale T m d)).indicator (fun A ↦ scalePolynomial A t) := by
  filter_upwards [ae_restrict_mem measurableSet_Ioc,
    ae_restrict_of_ae (volume.ae_ne (Real.sqrt m)),
    ae_restrict_of_ae (volume.ae_ne (Real.sqrt d)),
    ae_restrict_of_ae (volume.ae_ne (t/2))] with A hA hm hd ht'
  have hA0 : 0 ≤ A := by linarith [hA.1]
  have hcut : A ∈ Ioc (lowerScale t) (upperScale T m d) ↔
      (A^2 < (m:ℝ) ∧ A^2 < (d:ℝ)) ∧ t ≤ 2*A := by
    simp only [lowerScale, upperScale, mem_Ioc, max_lt_iff, le_min_iff]
    rw [← Real.lt_sqrt hA0, ← Real.lt_sqrt hA0]
    constructor
    · rintro ⟨⟨_,htA⟩,_,hmA,hdA⟩
      exact ⟨⟨lt_of_le_of_ne hmA hm, lt_of_le_of_ne hdA hd⟩, by linarith⟩
    · rintro ⟨⟨hmA,hdA⟩,htA⟩
      exact ⟨⟨hA.1, by apply lt_of_le_of_ne (by linarith); exact Ne.symm ht'⟩,
        hA.2, hmA.le, hdA.le⟩
  by_cases hc : A^2 < (m:ℝ) ∧ A^2 < (d:ℝ)
  · by_cases hs : t ≤ 2*A
    · rw [indicator_of_mem (hcut.mpr ⟨hc,hs⟩), scaleWindow, if_pos hc]
      exact (scalePolynomial_eq_source A t hA.1.le ht hs).symm
    · have hnot : A ∉ Ioc (lowerScale t) (upperScale T m d) := fun h ↦ hs (hcut.mp h).2
      rw [indicator_of_notMem hnot, scaleWindow, if_pos hc]
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith [hA.1])
        (by rw [abs_of_nonneg ht]; linarith), mul_zero]
  · rw [indicator_of_notMem (fun h ↦ hc (hcut.mp h).1), scaleWindow, if_neg hc]

/-- Genuine local integrability, including the strict factor-cutoff jumps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b298a4d4ab6e4448a9fe7f23231c6a3b626cdaea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
