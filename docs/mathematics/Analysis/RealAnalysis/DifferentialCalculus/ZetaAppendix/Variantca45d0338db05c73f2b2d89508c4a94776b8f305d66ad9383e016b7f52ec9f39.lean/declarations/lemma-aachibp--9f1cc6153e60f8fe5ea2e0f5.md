# lemma_aachIBP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70593349-784c-6a9d-17e2-aa7228ee5952",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f8c15c5-4761-f757-34ac-b2748c4b5a77",
  "kind": "theorem",
  "lexical_name": "lemma_aachIBP",
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
  "slug": "lemma-aachibp--9f1cc6153e60f8fe5ea2e0f5",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 401,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f1cc6153e60f8fe5ea2e0f5d7b0dbf2107938ad2b8292a78470c910158fc399",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f8c15c5-4761-f757-34ac-b2748c4b5a77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_aachIBP (s : ℂ) (ν : ℝ) (hν : ν ≠ 0) (a b : ℝ)
    (ha : a > |s.im| / (2 * π * |ν|)) (hb : b > a) :
    let φ : ℝ → ℝ := fun t ↦ ν * t - (s.im / (2 * π)) * Real.log t
    let Φ : ℝ → ℂ := fun t ↦
      (t ^ (-s.re) : ℝ) * e (φ t) / (2 * π * I * (deriv φ t))
    ∫ t in Set.Icc a b, t ^ (-s) * e (ν * t) = Φ b - Φ a +
      (s.re * ∫ t in Set.Icc a b,
        (t ^ (-s.re - 1) : ℝ) / (2 * π * I * (deriv φ t)) * e (φ t)) +
      ∫ t in Set.Icc a b, (t ^ (-s.re) : ℝ) * (deriv (deriv φ) t) /
        (2 * π * I * (deriv φ t) ^ 2) * e (φ t) := by
  have ha_pos : 0 < a := lt_of_le_of_lt (div_nonneg (abs_nonneg _) (by positivity)) ha
  intro φ Φ
  have hIcc_pos : Set.Icc a b ⊆ Set.Ioi 0 := fun t ht ↦ lt_of_lt_of_le ha_pos ht.1
  have h_lhs : ∫ t in Set.Icc a b, t ^ (-s) * e (ν * t) =
      ∫ t in Set.Icc a b, (t ^ (-s.re) : ℝ) * e (φ t) := by
    refine setIntegral_congr_fun measurableSet_Icc ?_
    intro t ht
    simpa [φ] using phase_rewrite t s ν (hIcc_pos ht)
  rw [h_lhs]
  have h_phi_ne : ∀ t ∈ Set.Icc a b, deriv φ t ≠ 0 := by
    intro t ht
    exact phi_deriv_ne_zero s ν a t ha ha_pos hν ht.1
  have hsmooth : ContDiffOn ℝ 2 φ (Set.Ioi 0) := by
    simp only [φ]
    apply ContDiffOn.sub
    · fun_prop
    · apply ContDiffOn.mul contDiffOn_const
      exact contDiffOn_log.mono (fun x hx ↦ ne_of_gt hx)
  have h_diff : ∀ t ∈ Set.Icc a b, DifferentiableAt ℝ φ t :=
    fun t ht ↦ (hsmooth.differentiableOn (by norm_num)).differentiableAt
      (Ioi_mem_nhds (hIcc_pos ht))
  have h_diff2 : ∀ t ∈ Set.Icc a b, DifferentiableAt ℝ (deriv φ) t := by
    intro t ht
    have h := hsmooth.contDiffAt (Ioi_mem_nhds (hIcc_pos ht))
    have h1 : ContDiffAt ℝ 1 (deriv φ) t := h.derivWithin (by norm_num)
    exact h1.differentiableAt (by norm_num)
  have h_cont : ContinuousOn φ (Set.Icc a b) :=
    (hsmooth.mono (fun x hx ↦ lt_of_lt_of_le ha_pos hx.1)).continuousOn
  have h_deriv_cont : ContinuousOn (fun t ↦ deriv φ t) (Set.Icc a b) := by
    have h1 : ContinuousOn (deriv φ) (Set.Ioi 0) :=
      hsmooth.continuousOn_deriv_of_isOpen isOpen_Ioi (by norm_num)
    exact h1.mono (fun x hx ↦ lt_of_lt_of_le ha_pos hx.1)
  have h_deriv2_cont : ContinuousOn (fun t ↦ deriv (deriv φ) t) (Set.Icc a b) := by
    have h1 : ContDiffOn ℝ 1 (deriv φ) (Set.Ioi 0) :=
      ((contDiffOn_succ_iff_deriv_of_isOpen isOpen_Ioi).mp hsmooth).2.2
    exact (h1.continuousOn_deriv_of_isOpen isOpen_Ioi (by norm_num)).mono
      (fun x hx ↦ lt_of_lt_of_le ha_pos hx.1)
  exact integral_power_phase_ibp s.re φ a b hb ha_pos h_phi_ne h_diff h_diff2
    h_cont h_deriv_cont h_deriv2_cont

@[blueprint
  "lem:aachra"
  (title := "Total variation of a function with monotone absolute value")
  (statement := /--
Let $g:[a,b]\to \mathbb{R}$ be continuous, with $|g(t)|$ non-increasing. Then
$g$ is monotone, and $\|g\|_{\mathrm{TV}} = |g(a)|-|g(b)|$.
-/)
  (proof := /--
Suppose $g$ changed sign: $g(a')>0>g(b')$ or $g(a') <0 < g(b')$ for some
$a\leq a'< b'\leq b$. By IVT, there would be an $r\in [a',b']$ such that $g(r)=0$.
Since $|g|$ is non-increasing, $g(b')=0$; contradiction. So, $g$ does not change sign:
either $g\leq 0$ or $g\geq 0$.

Thus, there is an $\varepsilon\in \{-1,1\}$ such that $g(t) = \varepsilon |g(t)|$ for all
$t\in [a,b]$. Hence, $g$ is monotone. Then $\|g\|_{\mathrm{TV}} = |g(a)-g(b)|$.
Since $|g(a)|\geq |g(b)|$ and $g(a)$, $g(b)$ are either both non-positive or non-negative,
$|g(a)-g(b)| = |g(a)|-|g(b)|$.
-/)
  (latexEnv := "lemma")
  (discussion := 547)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
