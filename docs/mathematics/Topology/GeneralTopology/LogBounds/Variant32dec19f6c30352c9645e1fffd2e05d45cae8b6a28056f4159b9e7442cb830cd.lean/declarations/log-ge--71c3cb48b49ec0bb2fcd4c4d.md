# log_ge'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f4234b1-1e4f-aabe-819d-3775abdce1df",
  "kind": "theorem",
  "lexical_name": "log_ge'",
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
  "slug": "log-ge--71c3cb48b49ec0bb2fcd4c4d",
  "source": {
    "blob": "e23fcf52bff736a11cb9f88cef61f370d9e54480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71c3cb48b49ec0bb2fcd4c4d4484a1480683aae383709b5ab156fab505d32f3d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f4234b1-1e4f-aabe-819d-3775abdce1df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_ge' (t t₀ : ℝ) (ht : 0 ≤ t) (ht0 : t ≤ t₀) (ht0' : t₀ < 1) :
    (t / t₀) * log (1 - t₀) ≤ log (1 - t) := by
  by_cases ht0_eq : t₀ = 0
  · have ht_eq : t = 0 := le_antisymm (ht0.trans (le_of_eq ht0_eq)) ht
    simp only [ht0_eq, ht_eq]
    simp
  · have ht0_pos : 0 < t₀ := lt_of_le_of_ne (ht.trans ht0) (Ne.symm ht0_eq)
    have h1mt0_pos : 0 < 1 - t₀ := by linarith
    have h1mt_pos : 0 < 1 - t := by linarith [ht0]
    have hconcave := StrictConcaveOn.concaveOn strictConcaveOn_log_Ioi
    set a := t / t₀
    set b := 1 - t / t₀
    have ha_nonneg : 0 ≤ a := div_nonneg ht (le_of_lt ht0_pos)
    have ha_le1 : a ≤ 1 := div_le_one_of_le₀ ht0 (le_of_lt ht0_pos)
    have hb_nonneg : 0 ≤ b := by simp only [b]; linarith
    have hab : a + b = 1 := by simp only [a, b]; ring
    have hx_mem : 1 - t₀ ∈ Set.Ioi (0 : ℝ) := h1mt0_pos
    have hy_mem : (1 : ℝ) ∈ Set.Ioi (0 : ℝ) := Set.mem_Ioi.mpr one_pos
    have hconv : a * (1 - t₀) + b * 1 = 1 - t := by
      simp only [a, b]
      field_simp
      ring
    have hconc := hconcave.2 hx_mem hy_mem ha_nonneg hb_nonneg hab
    simp only [smul_eq_mul] at hconc
    rw [hconv, log_one, mul_zero, add_zero] at hconc
    exact hconc

/-! ## Symmetric combination bounds -/

/-- The symmetric combination g(t) = 1/log(1+t) + 1/log(1-t).
    Despite the apparent singularities, this is well-defined and bounded for t ∈ (0, 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23fcf52bff736a11cb9f88cef61f370d9e54480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
