# Disk.containsBox_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d89cdae6-06ce-61a2-9b32-27784ee41ee6",
  "kind": "theorem",
  "lexical_name": "Disk.containsBox_sound",
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
  "slug": "disk-containsbox-sound--5e66352b5fe3a8eff2dfdbc8",
  "source": {
    "blob": "8448980c5c8be5b8a0bbfddcb687e6d2f8ee535d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e66352b5fe3a8eff2dfdbc8b82466a07acb320a553e88ff61c4b2575992f895",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d89cdae6-06ce-61a2-9b32-27784ee41ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Disk.containsBox_sound (d : Disk) (b : Rectangle) (h : d.ContainsBox b) :
    b.carrier ⊆ d.carrier := by
  intro z hz
  have hxl : |b.left - d.re| ≤ d.realReach b := le_max_left _ _
  have hxr : |b.right - d.re| ≤ d.realReach b := le_max_right _ _
  have hyb : |b.bottom - d.im| ≤ d.imagReach b := le_max_left _ _
  have hyt : |b.top - d.im| ≤ d.imagReach b := le_max_right _ _
  have hxl' : |(b.left : ℝ) - (d.re : ℝ)| ≤ (d.realReach b : ℝ) := by
    exact_mod_cast hxl
  have hxr' : |(b.right : ℝ) - (d.re : ℝ)| ≤ (d.realReach b : ℝ) := by
    exact_mod_cast hxr
  have hyb' : |(b.bottom : ℝ) - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) := by
    exact_mod_cast hyb
  have hyt' : |(b.top : ℝ) - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) := by
    exact_mod_cast hyt
  have hx : |z.re - (d.re : ℝ)| ≤ (d.realReach b : ℝ) :=
    (abs_sub_le_endpoint_max hz.1 hz.2.1).trans (max_le hxl' hxr')
  have hy : |z.im - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) :=
    (abs_sub_le_endpoint_max hz.2.2.1 hz.2.2.2).trans (max_le hyb' hyt')
  have hsum : (d.realReach b : ℝ) + (d.imagReach b : ℝ) ≤ (d.radius : ℝ) := by
    exact_mod_cast h.2
  change dist z d.center ≤ (d.radius : ℝ)
  rw [dist_eq_norm]
  exact (Complex.norm_le_abs_re_add_abs_im (z - d.center)).trans
    (by simpa only [Complex.sub_re, Complex.sub_im, Disk.center] using
      (add_le_add hx hy).trans hsum)

/-- The interior seam is present on BOTH sides; no area-only coverage argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8448980c5c8be5b8a0bbfddcb687e6d2f8ee535d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
