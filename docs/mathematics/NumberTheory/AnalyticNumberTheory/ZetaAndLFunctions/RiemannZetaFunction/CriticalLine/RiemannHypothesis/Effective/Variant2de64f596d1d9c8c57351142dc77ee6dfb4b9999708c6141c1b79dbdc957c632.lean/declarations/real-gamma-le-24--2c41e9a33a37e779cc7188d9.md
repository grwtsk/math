# Real_Gamma_le_24

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b74148f-a5e3-4cc9-4915-2b94d652dd12",
  "kind": "theorem",
  "lexical_name": "Real_Gamma_le_24",
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
  "slug": "real-gamma-le-24--2c41e9a33a37e779cc7188d9",
  "source": {
    "blob": "8a53c155d9d22710a053a3573734ed409642ac61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 576,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c41e9a33a37e779cc7188d98fdeae99e4994cda68ba2eaa4b97f2c91e5cdb96",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b74148f-a5e3-4cc9-4915-2b94d652dd12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real_Gamma_le_24 {x : ℝ} (hx1 : (1/4 : ℝ) ≤ x) (hx2 : x ≤ 5) :
    Real.Gamma x ≤ 24 := by
  have hΓ4 : Real.Gamma 4 = 6 := by
    rw [show (4:ℝ) = (3:ℕ) + 1 by norm_num, Real.Gamma_nat_eq_factorial]
    norm_num
  have hΓ5 : Real.Gamma 5 = 24 := by
    rw [show (5:ℝ) = (4:ℕ) + 1 by norm_num, Real.Gamma_nat_eq_factorial]
    norm_num
  rcases le_or_gt 2 x with h2 | h2
  · -- monotone branch
    calc Real.Gamma x ≤ Real.Gamma 5 :=
          Real.Gamma_strictMonoOn_Ici.monotoneOn (Set.mem_Ici.mpr h2)
            (Set.mem_Ici.mpr (by norm_num)) hx2
      _ = 24 := hΓ5
  · -- recurrence branch: Γ(x) = Γ(x+2)/(x(x+1)), x+2 ∈ [9/4, 4)
    have hx0 : (0:ℝ) < x := by linarith
    have hrec : Real.Gamma (x + 2) = (x + 1) * x * Real.Gamma x := by
      rw [show x + 2 = (x + 1) + 1 by ring, Real.Gamma_add_one (by linarith),
        Real.Gamma_add_one (by linarith)]
      ring
    have hG2 : Real.Gamma (x + 2) ≤ 6 := by
      rcases le_or_gt 2 (x + 2) with h | h
      · calc Real.Gamma (x + 2) ≤ Real.Gamma 4 :=
            Real.Gamma_strictMonoOn_Ici.monotoneOn (Set.mem_Ici.mpr h)
              (Set.mem_Ici.mpr (by norm_num)) (by linarith)
          _ = 6 := hΓ4
      · linarith
    have hge : (1/4 : ℝ) * (5/4) ≤ x * (x + 1) := by nlinarith
    have hΓpos : (0:ℝ) < Real.Gamma x := Real.Gamma_pos_of_pos hx0
    have h6 : (x + 1) * x * Real.Gamma x ≤ 6 := by
      rw [← hrec]
      exact hG2
    nlinarith

/-- Pointwise bound for ξ on the right half-strip of the disk: for 1/2 ≤ Re s ≤ 10, s ≠ 1,
‖ξ(s)‖ ≤ ‖s‖/2·24·(‖s−1‖·(1/2 + ‖s‖/Re s) + 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a53c155d9d22710a053a3573734ed409642ac61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
