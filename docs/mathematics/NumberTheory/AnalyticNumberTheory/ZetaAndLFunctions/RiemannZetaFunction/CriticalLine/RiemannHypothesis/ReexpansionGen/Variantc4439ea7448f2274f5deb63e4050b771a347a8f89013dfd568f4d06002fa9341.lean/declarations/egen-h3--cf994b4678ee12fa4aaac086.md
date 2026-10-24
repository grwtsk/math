# eGen_H3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb6a62ee-3696-658f-92f5-8852ca186391",
  "kind": "theorem",
  "lexical_name": "eGen_H3",
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
  "slug": "egen-h3--cf994b4678ee12fa4aaac086",
  "source": {
    "blob": "c44add26a7f407e151ee79ab0dff13008593abc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 240,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf994b4678ee12fa4aaac0860502a42ac7312314f446c82d6520ce2ff62653ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb6a62ee-3696-658f-92f5-8852ca186391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eGen_H3 (hre : ∀ T, (Lb T).re = l T / 2) {T : ℝ} (hT : T0re ≤ T) (r : ℕ) {x : ℝ} (hx2 : 2 ≤ x) (hxl : x ≤ Real.exp (l T)) :
    ∑ N ∈ Ioc 0 ⌊x⌋₊, ‖eGen Lb T r N‖ ^ 2 / N ≤ CF * (4 / l T) ^ (2 * r) * l T ^ 2 * (1 + Real.log x) := by
  have h := sum_norm_eGen_sq_div_le Lb hre hT r hx2 hxl
  have hl := l_ge_of_T0re_le hT
  have hKe : 0 ≤ 128 * Real.exp 1 * KM := mul_nonneg (by positivity) KM_nonneg
  have hxpos : 0 < x := by linarith
  have hu0 : 0 ≤ Real.log x := Real.log_nonneg (by linarith)
  have hul : Real.log x ≤ l T := (Real.log_le_iff_le_exp hxpos).mpr hxl
  have hA : 0 ≤ CF * (4 / l T) ^ (2 * r) := by
    have : 0 ≤ 4 / l T := by apply div_nonneg (by norm_num); linarith
    exact mul_nonneg CF_pos.le (pow_nonneg this _)
  calc ∑ N ∈ Ioc 0 ⌊x⌋₊, ‖eGen Lb T r N‖ ^ 2 / N ≤ CF * (4 / l T) ^ (2 * r) * Real.log x ^ 2 := h
    _ ≤ CF * (4 / l T) ^ (2 * r) * (l T ^ 2 * (1 + Real.log x)) := by
        apply mul_le_mul_of_nonneg_left _ hA
        have h1 : Real.log x ^ 2 ≤ l T ^ 2 := pow_le_pow_left₀ hu0 hul 2
        have h2 : l T ^ 2 ≤ l T ^ 2 * (1 + Real.log x) := by
          have : 0 ≤ l T ^ 2 := sq_nonneg _
          nlinarith
        linarith
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c44add26a7f407e151ee79ab0dff13008593abc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
