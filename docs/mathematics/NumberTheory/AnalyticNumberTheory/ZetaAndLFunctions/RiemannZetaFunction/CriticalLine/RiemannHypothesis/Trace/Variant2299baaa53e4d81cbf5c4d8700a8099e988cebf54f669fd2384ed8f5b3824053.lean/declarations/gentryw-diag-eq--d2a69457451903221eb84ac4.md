# GentryW_diag_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a60af8c7-9b68-b2b0-a706-4a6af2a816e5",
  "kind": "lemma",
  "lexical_name": "GentryW_diag_eq",
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
  "slug": "gentryw-diag-eq--d2a69457451903221eb84ac4",
  "source": {
    "blob": "24e4e88dd0c9bddae4026b54fcadbe1c3177cf0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 162,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a69457451903221eb84ac4e151e0b08a39e74100e735632000f49aebffb381",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a60af8c7-9b68-b2b0-a706-4a6af2a816e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GentryW_diag_eq (hΓ : Zeta23.GammaFacts) (hF : LocalHypsCore cϱ p F) (cPi : ℝ) (c : ℕ → ℂ)
    (k : ℤ) (hk : 0 < p.tau k) :
    GentryW cPi c p F k k = (∫ r, F.phiHat r ^ 2 * Zeta23.mu (p.tau k + r))
      + cPi * (∫ r, F.phiHat r ^ 2 * Zeta23.PiX p.X (p.tau k + r))
      + (∫ r, F.phiHat r ^ 2 * Pc p.X c (p.tau k + r)) := by
  show (∫ τ, F.phiHat (τ - p.tau k) * F.phiHat (τ - p.tau k) * nucW cPi p.X c τ) = _
  have htrans : (∫ τ, F.phiHat (τ - p.tau k) * F.phiHat (τ - p.tau k) * nucW cPi p.X c τ)
      = ∫ r, F.phiHat r ^ 2 * nucW cPi p.X c (p.tau k + r) := by
    rw [← integral_add_right_eq_self _ (p.tau k)]
    congr 1; funext r; simp only [add_sub_cancel_right]; ring_nf
  rw [htrans]
  have hν : ∀ r, F.phiHat r ^ 2 * nucW cPi p.X c (p.tau k + r)
      = (F.phiHat r ^ 2 * Zeta23.mu (p.tau k + r)
          + cPi * (F.phiHat r ^ 2 * Zeta23.PiX p.X (p.tau k + r)))
        + F.phiHat r ^ 2 * Pc p.X c (p.tau k + r) := by
    intro r; simp only [nucW]; ring
  simp_rw [hν]
  have h2 : Integrable (fun r => cPi * (F.phiHat r ^ 2 * Zeta23.PiX p.X (p.tau k + r))) :=
    (Pi_part_integrable hF _).const_mul cPi
  have h12 : Integrable (fun r => F.phiHat r ^ 2 * Zeta23.mu (p.tau k + r)
      + cPi * (F.phiHat r ^ 2 * Zeta23.PiX p.X (p.tau k + r))) :=
    (mu_part_integrable hΓ hF hk).add h2
  rw [integral_add h12 (Pc_part_integrable hF c _),
    integral_add (mu_part_integrable hΓ hF hk) h2, integral_const_mul]

set_option maxHeartbeats 1600000 in
/-- **[prop:trace] for ν = μ + cΠ·Π_X + P_c** with arbitrary complex coefficients (`c 1 = 0`):
`|tr G̃(ν) − a L N| ≤ C · (L √X + L · S₁(c; X))` for `T ≥ T₀` and every `N` with
`|N − Tℓ₁/2π| ≤ A·l`.  Constants depend on (cϱ, λ, A, cΠ, H-Γ); the Chebyshev bound used is
`Zeta23.Cheb.chebyshevMertens`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e4e88dd0c9bddae4026b54fcadbe1c3177cf0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
