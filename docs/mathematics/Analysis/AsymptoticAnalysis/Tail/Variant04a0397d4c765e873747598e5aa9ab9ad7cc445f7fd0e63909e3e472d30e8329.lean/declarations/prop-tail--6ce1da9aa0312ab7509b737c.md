# prop_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dc5b2fd-e1c9-c40f-a777-11694eb93c99",
  "kind": "theorem",
  "lexical_name": "prop_tail",
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
  "slug": "prop-tail--6ce1da9aa0312ab7509b737c",
  "source": {
    "blob": "aeeed052f300b43537382b09eeef04f0a8dcb49a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 458,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ce1da9aa0312ab7509b737cf965b75d1961fcf5848f21baa12330dd0d728ee0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dc5b2fd-e1c9-c40f-a777-11694eb93c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_tail {Z : ZeroConfig} {P : Params} {T A₀ C₁ : ℝ} (H : TailHyp Z P T A₀ C₁)
    (ha : 0 < P.a T)
    (hEt : (P.tilde T (Z.Ez P T)).IsHermitian) (hEh : (P.hat T (Z.Ez P T)).IsHermitian) :
    (∀ i, |hEt.eigenvalues i| ≤ theta0 A₀ (Real.exp (P.L T / 4) * C₁) T) ∧
    traceNorm hEt ≤ theta0 A₀ (Real.exp (P.L T / 4) * C₁) T ∧
    traceNorm hEh ≤ theta0 A₀ (Real.exp (P.L T / 4) * C₁) T / (P.a T * P.L T) := by
  have hL := H.L_pos
  -- tilde: κ = L⁻¹
  have htilde : P.tilde T (Z.Ez P T) = (((P.L T)⁻¹ : ℝ) : ℂ) • Z.Ez P T := by
    unfold Params.tilde; rw [Complex.ofReal_inv]
  have hEt' : ((((P.L T)⁻¹ : ℝ) : ℂ) • Z.Ez P T).IsHermitian := htilde ▸ hEt
  have h1 : traceNorm hEt ≤ theta0 A₀ (Real.exp (P.L T / 4) * C₁) T := by
    have h := H.traceNorm_smul_Ez_le (κ := (P.L T)⁻¹) (by positivity) hEt'
    have e : (P.L T)⁻¹ * (P.L T * theta0 A₀ H.K T) = theta0 A₀ H.K T := by
      field_simp
    rw [e] at h
    convert h using 2
    rfl
  -- hat: κ = (a L²)⁻¹
  have hhat : P.hat T (Z.Ez P T) = (((P.a T * P.L T ^ 2)⁻¹ : ℝ) : ℂ) • Z.Ez P T := by
    unfold Params.hat; push_cast; rfl
  have hEh' : ((((P.a T * P.L T ^ 2)⁻¹ : ℝ) : ℂ) • Z.Ez P T).IsHermitian := hhat ▸ hEh
  have h2 : traceNorm hEh ≤ theta0 A₀ (Real.exp (P.L T / 4) * C₁) T / (P.a T * P.L T) := by
    have h := H.traceNorm_smul_Ez_le (κ := (P.a T * P.L T ^ 2)⁻¹) (by positivity) hEh'
    have e : (P.a T * P.L T ^ 2)⁻¹ * (P.L T * theta0 A₀ H.K T)
        = theta0 A₀ H.K T / (P.a T * P.L T) := by
      field_simp
    rw [e] at h
    convert h using 2
    rfl
  exact ⟨fun i => (abs_eigenvalues_le_traceNorm hEt i).trans h1, h1, h2⟩

end Series

/-! ### E is Hermitian (real symmetric) — "since ρ and 1−ρ̄ have the same ordinate, both index
sets are invariant under ρ ↦ 1−ρ̄, so A and E are real symmetric" [eq:AE] -/

section Hermitian

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeeed052f300b43537382b09eeef04f0a8dcb49a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
