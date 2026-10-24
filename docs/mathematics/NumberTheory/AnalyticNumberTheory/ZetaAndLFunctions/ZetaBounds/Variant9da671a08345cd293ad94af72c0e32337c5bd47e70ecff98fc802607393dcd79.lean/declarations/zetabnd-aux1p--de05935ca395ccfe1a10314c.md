# ZetaBnd_aux1p

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00faa181-cc88-4c9a-f081-31d5f38f4adf",
  "kind": "lemma",
  "lexical_name": "ZetaBnd_aux1p",
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
  "slug": "zetabnd-aux1p--de05935ca395ccfe1a10314c",
  "source": {
    "blob": "1221067f6024cf817e255715555eb90609acba6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1260,
    "line": 1235,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de05935ca395ccfe1a10314caf8ed6791896dcb1ba64ea1ff7302ff3a0db4e8a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00faa181-cc88-4c9a-f081-31d5f38f4adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1235–1260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ZetaBnd_aux1p (N : ℕ) (Npos : 1 ≤ N) {σ : ℝ} (hσ : σ ∈ Ioc 0 2) :
    (fun (t : ℝ) ↦
      ‖(σ + t * I) * ∫ x in Ioi (N : ℝ), (⌊x⌋ + 1 / 2 - x) / (x : ℂ) ^ ((σ + t * I) + 1)‖)
    =O[Filter.principal {t | 2 ≤ |t|}] fun t ↦ |t| * N ^ (-σ) / σ := by
  rw [Asymptotics.IsBigO_def]
  use 2
  rw [Asymptotics.isBigOWith_principal]
  intro t ht
  simp only [mem_setOf_eq] at ht
  rw [norm_norm, norm_mul, mul_div_assoc, norm_mul]
  have : 2 * (‖|t|‖ * ‖↑N ^ (-σ) / σ‖) = (2 * |t|) * ((N : ℝ) ^ (-σ) / σ) := by
    simp only [Real.norm_eq_abs, _root_.abs_abs, norm_div]
    have : σ ≠ 0 := by linarith [hσ.1]
    field_simp
    rw [abs_of_pos hσ.1]
    have : 0 < (N : ℝ) ^ (-σ) := by
      refine Real.rpow_pos_of_pos ?_ _
      positivity
    rw [abs_of_pos this]
    ring
  rw [this]
  apply mul_le_mul ?_ (ZetaBnd_aux1b N Npos hσ.1) (norm_nonneg _) (by positivity)
  refine le_trans (by apply norm_add_le) ?_
  simp only [norm_real, norm_mul, norm_I, mul_one, Complex.norm_of_nonneg hσ.1.le, Real.norm_eq_abs]
  linarith [hσ.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean#L1235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1221067f6024cf817e255715555eb90609acba6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
