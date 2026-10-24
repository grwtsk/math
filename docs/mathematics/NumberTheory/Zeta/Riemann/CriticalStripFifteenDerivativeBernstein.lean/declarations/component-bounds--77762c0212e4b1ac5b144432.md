# component_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab26c968-7f6c-82a9-1f51-5fc837816cd1",
  "kind": "theorem",
  "lexical_name": "component_bounds",
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
  "slug": "component-bounds--77762c0212e4b1ac5b144432",
  "source": {
    "blob": "aa38a402eef98530b48e54c0cb4b5ca3142e6bca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77762c0212e4b1ac5b144432c726b3b2071832b5f605c8f19a27b83029ee0f96",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab26c968-7f6c-82a9-1f51-5fc837816cd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem component_bounds {s : ℂ} (hx : 0 ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : (14 : ℝ) ≤ s.im) (hy1 : s.im ≤ 15) :
    -(15/2 : ℝ) ≤ (model s).re ∧ (model s).re ≤ 17/2 ∧
      (7 : ℝ) ≤ (model s).im ∧ (model s).im ≤ 41/2 := by
  have hv : 0 ≤ s.im-14 := by linarith
  have hv1 : s.im-14 ≤ 1 := by linarith
  have h0 := tensorValue_nonneg reLower hx hx1 hv hv1
  have h1 := tensorValue_nonneg reUpper hx hx1 hv hv1
  have h2 := tensorValue_nonneg imLower hx hx1 hv hv1
  have h3 := tensorValue_nonneg imUpper hx hx1 hv hv1
  rw [reLower_identity] at h0
  rw [reUpper_identity] at h1
  rw [imLower_identity] at h2
  rw [imUpper_identity] at h3
  have he : (⟨s.re,14+(s.im-14)⟩ : ℂ) = s := by
    apply Complex.ext <;> simp
  rw [he] at h0 h1 h2 h3
  exact ⟨by linarith, by linarith, by linarith, by linarith⟩

/-- The center is an actual complex number; no positive-form relabeling occurs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa38a402eef98530b48e54c0cb4b5ca3142e6bca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
