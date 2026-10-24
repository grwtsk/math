# Efun_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f32a2a1-6ef3-c6d2-c72d-86817bd04113",
  "kind": "lemma",
  "lexical_name": "Efun_cell",
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
  "slug": "efun-cell--d00a5f6bd1a711eb953d9988",
  "source": {
    "blob": "185fdd562343c164186061cef468be3f99139a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantd3e60403621c9ab38272b2a00447871c23fa240f1e2c48c83189d36b22705162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d00a5f6bd1a711eb953d998833d6daca81f05833baaebca1e15d4e857c64b266",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantd3e60403621c9ab38272b2a00447871c23fa240f1e2c48c83189d36b22705162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f32a2a1-6ef3-c6d2-c72d-86817bd04113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Efun_cell (hN : 0 < N) {m : ℕ} (hm : m < N) {x : ℝ} (hx : x ∈ Icc ((m : ℝ) / N) ((m + 1 : ℝ) / N)) :
    Efun (massOf S N) N x = Egrid S N m + T S m / N * (x - (m : ℝ) / N) - (x ^ 3 - ((m : ℝ) / N) ^ 3) / 6 := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  have ha : ((m : ℝ) / N) ∈ Icc (0:ℝ) 1 :=
    ⟨by positivity, by rw [div_le_one hNr]; exact_mod_cast hm.le⟩
  have hb1 : ((m + 1 : ℝ) / N) ≤ 1 := by rw [div_le_one hNr]; exact_mod_cast hm
  have hxI : x ∈ Icc (0:ℝ) 1 := ⟨le_trans ha.1 hx.1, le_trans hx.2 hb1⟩
  -- split the integral at m/N
  have hsplit : Efun (massOf S N) N x = Efun (massOf S N) N ((m : ℝ) / N) + ∫ t in ((m : ℝ) / N)..x, Dfun (massOf S N) N t := by
    unfold Efun
    rw [integral_add_adjacent_intervals (ii_Dfun hN ⟨le_rfl, zero_le_one⟩ ha) (ii_Dfun hN ha hxI)]
  rw [hsplit, Efun_grid_eq_Egrid hN hm.le]
  -- on Ι(m/N, x) ⊆ the cell, D = T_m/N − t²/2 almost everywhere
  have hae : ∀ᵐ t ∂volume, t ∈ Ι ((m : ℝ) / N) x → Dfun (massOf S N) N t = T S m / N - t ^ 2 / 2 := by
    filter_upwards [Cstep_ae_cell (s := massOf S N) hN hm] with t ht hmem
    have hmem' : t ∈ Ι ((m : ℝ) / N) ((m + 1 : ℝ) / N) := by
      rw [Set.uIoc_of_le hx.1] at hmem
      rw [Set.uIoc_of_le (cell_le hN m)]
      exact ⟨hmem.1, le_trans hmem.2 hx.2⟩
    rw [Dfun, ht hmem', Csum_massOf]
  rw [integral_congr_ae hae]
  -- ∫ (c − t²/2) = c(x − a) − (x³ − a³)/6
  have hF : ∀ t ∈ uIcc ((m : ℝ) / N) x, HasDerivAt (fun t : ℝ => T S m / N * t - t ^ 3 / 6) (T S m / N - t ^ 2 / 2) t := by
    intro t _
    have h1 : HasDerivAt (fun t : ℝ => T S m / N * t) (T S m / N) t := by
      simpa using (hasDerivAt_id t).const_mul (T S m / N)
    have h2 : HasDerivAt (fun t : ℝ => t ^ 3 / 6) (t ^ 2 / 2) t := by
      have := (hasDerivAt_pow 3 t).div_const 6
      exact this.congr_deriv (by push_cast; ring)
    exact h1.sub h2
  rw [integral_eq_sub_of_hasDerivAt hF ((by fun_prop : Continuous fun t : ℝ => T S m / N - t ^ 2 / 2).intervalIntegrable _ _)]
  ring

/-! ## 3. The sup bound -/

/-- the cubic on a cell: −(m+1) ≤ −m + 3mθ(1−θ) − θ³ ≤ 0 for 0 ≤ θ ≤ 1, m ≥ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantd3e60403621c9ab38272b2a00447871c23fa240f1e2c48c83189d36b22705162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantd3e60403621c9ab38272b2a00447871c23fa240f1e2c48c83189d36b22705162.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `185fdd562343c164186061cef468be3f99139a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
