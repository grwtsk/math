# conj_riemannZeta_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52214ef5-d843-5568-fe69-2e6f04061132",
  "kind": "theorem",
  "lexical_name": "conj_riemannZeta_conj",
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
  "slug": "conj-riemannzeta-conj--c62b0de47eea08d0a9a0e426",
  "source": {
    "blob": "7cf0dc9a7c8bd92c9bd8a7a8920b342d621c0bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c62b0de47eea08d0a9a0e426be3eb96c33ac7b3c59143e6dfc9a006d7a996c5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52214ef5-d843-5568-fe69-2e6f04061132`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conj_riemannZeta_conj (s : ℂ) : conj (riemannZeta (conj s)) = riemannZeta s := by
  by_cases hs1 : s = 1
  · subst hs1
    rw [map_one, Complex.conj_eq_iff_real, riemannZeta_one]
    use (Real.eulerMascheroniConstant - Real.log (4 * Real.pi)) / 2
    rw [show (4 * ↑Real.pi : ℂ) = ↑(4 * Real.pi) from by push_cast; ring,
      ← Complex.ofReal_log (by positivity : (0 : ℝ) ≤ 4 * Real.pi)]
    push_cast
    ring
  · let U : Set ℂ := {1}ᶜ
    let g := fun s ↦ conj (riemannZeta (conj s))
    suffices Set.EqOn g riemannZeta U by
      apply this
      rwa [Set.mem_compl_singleton_iff]
    apply AnalyticOnNhd.eqOn_of_preconnected_of_eventuallyEq (𝕜 := ℂ) (z₀ := 2)
    · simp [U]
    · rw [Filter.eventuallyEq_iff_exists_mem]
      set V := Complex.re ⁻¹' (Set.Ioi 1)
      use V
      constructor
      · have Vopen : IsOpen V := Complex.continuous_re.isOpen_preimage _ isOpen_Ioi
        exact Vopen.mem_nhds (by simp [V])
      · intro s hs
        exact conj_riemannZeta_conj_aux1 s hs
    · refine DifferentiableOn.analyticOnNhd ?_ isOpen_compl_singleton
      intro s₁ hs₁
      have hs₁' : conj s₁ ≠ 1 :=
        (map_ne_one_iff (starRingEnd ℂ) (RingHom.injective (starRingEnd ℂ))).mpr hs₁
      convert (HasDerivAt.conj_conj
        (differentiableAt_riemannZeta hs₁').hasDerivAt).differentiableAt.differentiableWithinAt
        (s := U)
      rw [Complex.conj_conj]
    · refine DifferentiableOn.analyticOnNhd ?_ isOpen_compl_singleton
      intro s₁ hs₁
      exact (differentiableAt_riemannZeta hs₁).differentiableWithinAt
    · exact (isConnected_compl_singleton_of_one_lt_rank (by simp) 1).isPreconnected

@[blueprint
  (title := "riemannZeta-conj")
  (statement := /--
    Conjugation symmetry of the Riemann zeta function. Let $s \in \mathbb{C}$. Then
    $$\zeta(\overline{s}) = \overline{\zeta(s)}.$$
  -/)
  (proof := /--
    This follows as an immediate corollary of Theorem \ref{conj_riemannZeta_conj}.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cf0dc9a7c8bd92c9bd8a7a8920b342d621c0bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
