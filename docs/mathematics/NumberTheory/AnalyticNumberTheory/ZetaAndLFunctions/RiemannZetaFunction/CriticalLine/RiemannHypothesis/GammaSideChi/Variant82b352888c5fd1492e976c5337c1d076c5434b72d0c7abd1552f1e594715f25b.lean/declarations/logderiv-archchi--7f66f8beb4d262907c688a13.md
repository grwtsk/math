# logDeriv_archChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8805b5f-3457-47f9-f52e-5837b8041d59",
  "kind": "theorem",
  "lexical_name": "logDeriv_archChi",
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
  "slug": "logderiv-archchi--7f66f8beb4d262907c688a13",
  "source": {
    "blob": "267fd268c63a7a8d9cfc7e51348d51963561b6e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f66f8beb4d262907c688a132b0ba8475faff3f9b0e4421e373d5807fbe2bb99",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8805b5f-3457-47f9-f52e-5837b8041d59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_archChi {s : ℂ} (hs : 0 < s.re) :
    logDeriv (archChi q κ) s = (Real.log q : ℂ) / 2 +
      (-(Real.log Real.pi : ℂ) / 2 + (1/2 : ℂ) * Complex.digamma ((s + κ) / 2)) := by
  have hκre : 0 < (s + (κ:ℂ)).re := by
    simp only [Complex.add_re, Complex.natCast_re]
    have : (0:ℝ) ≤ κ := Nat.cast_nonneg κ
    linarith
  have hq0 : (q : ℂ) ≠ 0 := by exact_mod_cast (Nat.pos_of_ne_zero (NeZero.ne q)).ne'
  have e : archChi q κ = fun s : ℂ => (q : ℂ) ^ (s / 2) * Complex.Gammaℝ (s + κ) := rfl
  have hf : (fun s : ℂ => (q : ℂ) ^ (s / 2)) s ≠ 0 := q_cpow_ne_zero q s
  have hg : (fun s : ℂ => Complex.Gammaℝ (s + κ)) s ≠ 0 := by
    apply Complex.Gammaℝ_ne_zero_of_re_pos hκre
  have hdf : DifferentiableAt ℂ (fun s : ℂ => (q : ℂ) ^ (s / 2)) s :=
    DifferentiableAt.const_cpow (by fun_prop) (Or.inl hq0)
  have hdg : DifferentiableAt ℂ (fun s : ℂ => Complex.Gammaℝ (s + κ)) s := by
    have hG : DifferentiableAt ℂ Complex.Gammaℝ (s + κ) :=
      (Gammaℝ_differentiableOn (s + κ) hκre).differentiableAt
        (isOpen_rightHalfPlane.mem_nhds hκre)
    have haff : DifferentiableAt ℂ (fun z : ℂ => z + (κ:ℂ)) s := by fun_prop
    have hcomp : DifferentiableAt ℂ (Complex.Gammaℝ ∘ fun z : ℂ => z + (κ:ℂ)) s :=
      DifferentiableAt.comp s hG haff
    exact hcomp
  rw [e, logDeriv_mul (f := fun s : ℂ => (q : ℂ) ^ (s / 2))
    (g := fun s : ℂ => Complex.Gammaℝ (s + κ)) s hf hg hdf hdg]
  have h1 : logDeriv (fun s : ℂ => (q : ℂ) ^ (s / 2)) s = (Real.log q : ℂ) / 2 := by
    have hder : HasDerivAt (fun s : ℂ => (q : ℂ) ^ (s / 2))
        ((q : ℂ) ^ (s / 2) * Complex.log q * (1 / 2)) s := by
      have hd : HasDerivAt (fun s : ℂ => s / 2) (1 / 2 : ℂ) s := by
        simpa using (hasDerivAt_id s).div_const (2:ℂ)
      exact hd.const_cpow (Or.inl hq0)
    rw [logDeriv_apply, hder.deriv]
    have hne : (q : ℂ) ^ (s / 2) ≠ 0 := q_cpow_ne_zero q s
    have hlogq : Complex.log (q : ℂ) = (Real.log q : ℂ) := by
      rw [← Complex.ofReal_natCast, Complex.ofReal_log (Nat.cast_nonneg q)]
    rw [hlogq, mul_assoc, mul_div_cancel_left₀ _ hne]
    ring
  have h2 : logDeriv (fun s : ℂ => Complex.Gammaℝ (s + κ)) s =
      -(Real.log Real.pi : ℂ) / 2 + (1/2 : ℂ) * Complex.digamma ((s + κ) / 2) := by
    have hshift : AnalyticAt ℂ (fun s : ℂ => s + (κ:ℂ)) s := by fun_prop
    have hGd : DifferentiableAt ℂ Complex.Gammaℝ ((fun s : ℂ => s + (κ:ℂ)) s) :=
      (Gammaℝ_differentiableOn (s + κ) hκre).differentiableAt
        (isOpen_rightHalfPlane.mem_nhds hκre)
    have := logDeriv_comp (f := Complex.Gammaℝ) (g := fun s : ℂ => s + (κ:ℂ)) (x := s)
      hGd (by fun_prop)
    rw [show (Complex.Gammaℝ ∘ fun s : ℂ => s + (κ:ℂ)) = fun s => Complex.Gammaℝ (s + κ) from rfl]
      at this
    rw [this, RvM.logDeriv_Gammaℝ hκre]
    have : deriv (fun s : ℂ => s + (κ:ℂ)) s = 1 := by
      rw [deriv_add_const, deriv_id'']
    rw [this]; ring
  rw [h1, h2]

/-- Re logDeriv arch(½+it) = π·μ_χ(t). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `267fd268c63a7a8d9cfc7e51348d51963561b6e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
