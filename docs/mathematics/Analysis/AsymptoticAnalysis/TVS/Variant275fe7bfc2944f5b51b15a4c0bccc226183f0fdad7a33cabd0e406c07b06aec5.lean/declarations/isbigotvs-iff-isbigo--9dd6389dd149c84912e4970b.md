# isBigOTVS_iff_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8cee50f-0224-d0e4-7319-4a0e6e2a4579",
  "kind": "lemma",
  "lexical_name": "isBigOTVS_iff_isBigO",
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
  "slug": "isbigotvs-iff-isbigo--9dd6389dd149c84912e4970b",
  "source": {
    "blob": "e63d2fe0ba18b4bef643d14ef335e32f12d9de78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 837,
    "line": 799,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dd6389dd149c84912e4970b5b23e8e5c6fce4ffa2bd99a09e6ea3df0b14e9fb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8cee50f-0224-d0e4-7319-4a0e6e2a4579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 799–837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBigOTVS_iff_isBigO : f =O[𝕜; l] g ↔ f =O[l] g := by
  rcases NormedField.exists_one_lt_norm 𝕜 with ⟨c, hc : 1 < ‖c‖₊⟩
  constructor
  · rw [nhds_basis_ball.isBigOTVS_iff nhds_basis_ball, isBigO_iff]
    intro h
    rcases h 1 one_pos with ⟨r, hr₀, hr⟩
    lift r to ℝ≥0 using hr₀.le
    norm_cast at hr₀
    refine ⟨(‖c‖₊ / r : ℝ≥0), hr.mono fun x hx ↦ ?_⟩
    suffices ‖f x‖ₑ ≤ (‖c‖₊ / r : ℝ≥0) * ‖g x‖ₑ by
      simp only [enorm_eq_nnnorm, ← coe_nnnorm] at this ⊢
      exact mod_cast this
    calc
      ‖f x‖ₑ ≤ egauge 𝕜 (ball 0 1) (f x) := le_egauge_ball_one ..
      _ ≤ egauge 𝕜 (ball 0 r) (g x) := hx
      _ ≤ ‖c‖ₑ * ‖g x‖ₑ / ↑r :=
        egauge_ball_le_of_one_lt_norm hc <| .inl hr₀.ne'
      _ = (‖c‖₊ / r : ℝ≥0) * ‖g x‖ₑ := by
        simp [hr₀.ne', ENNReal.mul_div_right_comm, enorm_eq_nnnorm]
  · rw [nhds_basis_ball.isBigOTVS_iff nhds_basis_ball, isBigO_iff']
    have hc₀ : 0 < ‖c‖₊ := one_pos.trans hc
    rintro ⟨C, hC₀, hC⟩ r hr₀
    lift C to ℝ≥0 using hC₀.le; norm_cast at hC₀
    lift r to ℝ≥0 using hr₀.le; norm_cast at hr₀
    refine ⟨r / (C * ‖c‖₊), by positivity, hC.mono fun x hx ↦ ?_⟩
    calc
      egauge 𝕜 (ball 0 r) (f x) ≤ ‖c‖ₑ * ‖f x‖ₑ / r :=
        egauge_ball_le_of_one_lt_norm hc <| .inl hr₀.ne'
      _ ≤ ‖c‖ₑ * (C * ‖g x‖ₑ) / r := by
        gcongr
        simp only [enorm_eq_nnnorm, ← coe_nnnorm] at hx ⊢
        exact mod_cast hx
      _ = ‖g x‖ₑ / (r / (C * ‖c‖₊) : ℝ≥0) := by
        simp_all [pos_iff_ne_zero, ENNReal.div_eq_inv_mul, ENNReal.mul_inv]
        ac_rfl
      _ ≤ _ := div_le_egauge_ball _ _ _

alias ⟨IsBigOTVS.isBigO, IsBigO.isBigOTVS⟩ := isBigOTVS_iff_isBigO

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean#L799).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e63d2fe0ba18b4bef643d14ef335e32f12d9de78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
