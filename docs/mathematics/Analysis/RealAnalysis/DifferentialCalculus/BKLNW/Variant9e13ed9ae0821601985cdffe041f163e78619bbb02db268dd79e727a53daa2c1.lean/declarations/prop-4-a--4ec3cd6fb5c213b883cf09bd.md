# prop_4_a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c29388cf-495f-4f0a-cbae-a2d5159cfc89",
  "kind": "theorem",
  "lexical_name": "prop_4_a",
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
  "slug": "prop-4-a--4ec3cd6fb5c213b883cf09bd",
  "source": {
    "blob": "e42498b7280215dd8b3febb10d2704958bab8a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 651,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ec3cd6fb5c213b883cf09bda9efcd810be07c30499b624bce65c5043754fd10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c29388cf-495f-4f0a-cbae-a2d5159cfc89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_4_a (I : Inputs) {b x : ℝ} (hx : exp b ≤ x) :
    θ (x ^ (1 / 2 : ℝ)) ≤ (1 + I.ε (log I.x₁)) * x ^ (1 / 2 : ℝ) := by
  have ha : 1 < I.x₁ := by linarith [I.hx₁, (one_lt_exp_iff.2 (by linarith) : 1 < exp 7)]
  have hb : 0 < log I.x₁ := log_pos (by linarith)
  by_cases! hp : x ^ (1 / 2 : ℝ) ≤ I.x₁
  · have hq : 0 < x ^ (1 / 2 : ℝ) := by
      suffices 0 < x from rpow_pos_of_pos this _
      exact (exp_pos b).trans_le hx
    refine (I.hx₁' (x ^ (1 / 2 : ℝ)) ⟨hq, hp⟩).le.trans ?_
    nth_rw 1 [← one_mul (x ^ (1 / 2 : ℝ))]
    gcongr
    linarith [I.epsilon_nonneg hb.le]
  · calc
    _ ≤ ψ (x ^ (1 / 2 : ℝ)) := theta_le_psi _
    _ ≤ (1 + I.ε (log I.x₁)) * x ^ (1 / 2 : ℝ) := by
      have := (le_abs_self (ψ (x ^ (1 / 2 : ℝ)) - x ^ (1 / 2 : ℝ))).trans <|
        I.hε (log I.x₁) hb.le (x ^ (1 / 2 : ℝ)) (exp_log (by linarith : 0 < I.x₁) ▸ hp).le
      linarith

@[blueprint
  "bklnw-prop-4-b"
  (title := "BKLNW Proposition 4, part b")
  (statement := /--  If $b > 2\log x_1$, then we have
\[
\theta(x^{1/2}) \leq (1 + \varepsilon(b/2))x^{1/2} \quad \text{for } x \geq e^b.
\]
 -/)
  (proof := /-- Note that in the paper, the inequality in Proposition 4 is strict, but the
argument can only show nonstrict inequalities. As in the above subcase, we have for $x \geq e^b$
\[
\theta(x^{1/2}) \leq \psi(x^{1/2}) \leq (1 + \varepsilon(b/2))x^{1/2},
\]
since $x^{1/2} > e^{b/2} > x_1 \geq e^7$.
 -/)
  (latexEnv := "proposition")
  (discussion := 642)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42498b7280215dd8b3febb10d2704958bab8a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
