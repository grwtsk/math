# lemma_10b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:377e802d-1643-03f2-2b10-c623e0c699dc",
  "kind": "theorem",
  "lexical_name": "lemma_10b",
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
  "slug": "lemma-10b--30eea6d8ecc9518294d0bc2a",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30eea6d8ecc9518294d0bc2a55f2bccd05238678a767d4992754e581f33d0935",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:377e802d-1643-03f2-2b10-c623e0c699dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_10b {a b c : ℝ} (ha : a > 0) (hc : c > 0) (hb : b ≥ -c ^ 2 / (16 * a)) :
    StrictAntiOn (g_bound a b c) (Set.Ioi (exp ((c / (4 * a) + (1 / (2 * a)) * sqrt (c ^ 2 / 4 + 4 * a * b)) ^ 2))) := by
  have h_deriv_neg : ∀ x > exp ((c / (4 * a) + 1 / (2 * a) * sqrt (c ^ 2 / 4 + 4 * a * b)) ^ 2),
      deriv (g_bound a b c) x < 0 := by
    intro x hx
    have h_sqrt : sqrt (log x) > c / (4 * a) + 1 / (2 * a) * sqrt (c ^ 2 / 4 + 4 * a * b) :=
      lt_sqrt_of_sq_lt (by simpa using log_lt_log (by positivity) hx)
    have h_quadratic : -a * (sqrt (log x)) ^ 2 + (c / 2) * sqrt (log x) + b < 0 := by
      field_simp at *
      nlinarith [sqrt_nonneg ((c ^ 2 + a * b * 4 ^ 2) / 4),
        mul_self_sqrt (show 0 ≤ (c ^ 2 + a * b * 4 ^ 2) / 4 by nlinarith), sqrt_nonneg (log x),
        mul_self_sqrt (show 0 ≤ log x by
          exact le_of_not_gt fun h ↦ by
            rw [sqrt_eq_zero'.mpr h.le] at *; nlinarith [sqrt_nonneg ((c ^ 2 + a * b * 4 ^ 2) / 4),
              mul_self_sqrt (show 0 ≤ (c ^ 2 + a * b * 4 ^ 2) / 4 by nlinarith)])]
    convert (lemma_10_substep_2 (show x > 1 from lt_trans (by norm_num; positivity) hx)).2 h_quadratic using 1
  intro x hx y hy hxy
  obtain ⟨z, hz⟩ : ∃ z ∈ Set.Ioo x y, deriv (g_bound a b c) z = (g_bound a b c y - g_bound a b c x) / (y - x) := by
    apply_rules [exists_deriv_eq_slope]
    · exact continuousOn_of_forall_continuousAt fun z hz ↦ DifferentiableAt.continuousAt
        (differentiableAt_of_deriv_ne_zero (ne_of_lt (h_deriv_neg z (lt_of_lt_of_le hx hz.1))))
    · exact fun u hu ↦ DifferentiableAt.differentiableWithinAt
        (differentiableAt_of_deriv_ne_zero (ne_of_lt (h_deriv_neg u (lt_trans hx hu.1))))
  have := h_deriv_neg z <| hx.out.trans hz.1.1
  rw [hz.2, div_lt_iff₀] at this <;> linarith

@[blueprint
  "fks2-lemma-10c"
  (title := "FKS2 Lemma 10c")
  (statement := /--
  If $c>0$, $g(0,b,c,x)$ decreases with $x$ for $\sqrt{\log x} < -2b/c$. -/)
  (proof := /-- We apply Lemma \ref{fks2-lemma-10-substep-2}. If $a = 0$, it is negative when $u < \frac{-2b}{c}$.
  Note: this lemma is mistyped as $\sqrt{\log x} > -2b/c$ in \cite{FKS2}.
 -/)
  (latexEnv := "lemma")
  (discussion := 614)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
