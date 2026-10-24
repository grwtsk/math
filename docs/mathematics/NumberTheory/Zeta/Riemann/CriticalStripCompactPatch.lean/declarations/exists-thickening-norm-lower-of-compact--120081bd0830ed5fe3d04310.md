# exists_thickening_norm_lower_of_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb4b20d9-9a15-9b30-3dfd-23476dd02cf9",
  "kind": "theorem",
  "lexical_name": "exists_thickening_norm_lower_of_compact",
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
  "slug": "exists-thickening-norm-lower-of-compact--120081bd0830ed5fe3d04310",
  "source": {
    "blob": "c83a5a5fb282e3ee21a498b7b43153cc618e2432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:120081bd0830ed5fe3d0431022ce77e5aaf9813ee6764df9fa9133147d245b2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb4b20d9-9a15-9b30-3dfd-23476dd02cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_thickening_norm_lower_of_compact {F : ℂ → ℂ} {K : Set ℂ}
    (hK : IsCompact K) (hneK : K.Nonempty) (hF : Continuous F)
    (hne : ∀ z ∈ K, F z ≠ 0) :
    ∃ r b : ℝ, 0 < r ∧ 0 < b ∧
      ∀ z ∈ Metric.thickening r K, b ≤ ‖F z‖ := by
  obtain ⟨c, hc, hmin⟩ := hK.exists_isMinOn hneK hF.norm.continuousOn
  have hnorm : 0 < ‖F c‖ := norm_pos_iff.mpr (hne c hc)
  have hopen : IsOpen {z : ℂ | ‖F c‖ / 2 < ‖F z‖} :=
    isOpen_lt continuous_const hF.norm
  have hsub : K ⊆ {z : ℂ | ‖F c‖ / 2 < ‖F z‖} := by
    intro z hz
    have hle : ‖F c‖ ≤ ‖F z‖ := (isMinOn_iff.mp hmin) z hz
    change ‖F c‖ / 2 < ‖F z‖
    linarith
  obtain ⟨r, hr, hthick⟩ := hK.exists_thickening_subset_open hopen hsub
  exact ⟨r, ‖F c‖ / 2, hr, by positivity, fun z hz => (hthick hz).le⟩

/-- A positive width at every natural stage does not imply a common positive lower
bound. This is a quantifier counterexample, not a statement about zeta zero locations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c83a5a5fb282e3ee21a498b7b43153cc618e2432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
