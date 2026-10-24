# log_ge'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05bfc0f3-85ed-3ea2-3c59-fc9fcdd419be",
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
  "slug": "log-ge--ed85dc456b9e68cd53fd2169",
  "source": {
    "blob": "e31288865f1982eca7052420a942462b9bdd375e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 115,
    "path": "GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed85dc456b9e68cd53fd216921711db36a56ba3b2691ff94964bd4c326512f74",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05bfc0f3-85ed-3ea2-3c59-fc9fcdd419be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_ge' (t t₀ : ℝ) (ht : 0 ≤ t) (ht0 : t ≤ t₀) (ht0' : t₀ < 1) :
    (t / t₀) * log (1 - t₀) ≤ log (1 - t) := by
  by_cases ht0_eq : t₀ = 0
  · -- When t₀ = 0, we have t = 0 (since 0 ≤ t ≤ t₀ = 0)
    have ht_eq : t = 0 := le_antisymm (ht0.trans (le_of_eq ht0_eq)) ht
    simp only [ht0_eq, ht_eq]
    simp
  · -- When t₀ > 0
    have ht0_pos : 0 < t₀ := lt_of_le_of_ne (ht.trans ht0) (Ne.symm ht0_eq)
    have h1mt0_pos : 0 < 1 - t₀ := by linarith
    have h1mt_pos : 0 < 1 - t := by linarith [ht0]
    -- Use concavity of log
    have hconcave := StrictConcaveOn.concaveOn strictConcaveOn_log_Ioi
    -- Points: x = 1-t₀ and y = 1
    -- Weights: a = t/t₀ and b = 1 - t/t₀
    set a := t / t₀
    set b := 1 - t / t₀
    have ha_nonneg : 0 ≤ a := div_nonneg ht (le_of_lt ht0_pos)
    have ha_le1 : a ≤ 1 := div_le_one_of_le₀ ht0 (le_of_lt ht0_pos)
    have hb_nonneg : 0 ≤ b := by simp only [b]; linarith
    have hab : a + b = 1 := by simp only [a, b]; ring
    have hx_mem : 1 - t₀ ∈ Set.Ioi (0 : ℝ) := h1mt0_pos
    have hy_mem : (1 : ℝ) ∈ Set.Ioi (0 : ℝ) := Set.mem_Ioi.mpr one_pos
    -- The convex combination: a(1-t₀) + b·1 = 1-t
    have hconv : a * (1 - t₀) + b * 1 = 1 - t := by
      simp only [a, b]
      field_simp
      ring
    -- Apply concavity: a·log(x) + b·log(y) ≤ log(ax + by)
    have hconc := hconcave.2 hx_mem hy_mem ha_nonneg hb_nonneg hab
    simp only [smul_eq_mul] at hconc
    rw [hconv, log_one, mul_zero, add_zero] at hconc
    exact hconc


/-! ## PNT#767: Symmetrization bound -/

/-- The symmetric combination g(t) = 1/log(1+t) + 1/log(1-t). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31288865f1982eca7052420a942462b9bdd375e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
