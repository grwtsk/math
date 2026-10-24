# integrable_Hsum_mul_archDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9416a67313657b74c4c490f7fc262e07c4d0ce9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d10665e-165b-5d72-8a6b-1ee07440efda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ec97314-40c4-5d31-0999-2f06437a8909",
  "kind": "theorem",
  "lexical_name": "integrable_Hsum_mul_archDiff",
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
  "slug": "integrable-hsum-mul-archdiff--6fad1e04fc1cdf9de93c3af0",
  "source": {
    "blob": "9416a67313657b74c4c490f7fc262e07c4d0ce9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 443,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fad1e04fc1cdf9de93c3af0b86f7ee186d3912636d5e9f554db0d4a31ce0f78",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ec97314-40c4-5d31-0999-2f06437a8909`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_Hsum_mul_archDiff (hq : 1 < q) (hχ1 : χ ≠ 1) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3 / 2) :
    Integrable (fun t : ℝ => (Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I))
      * (logDeriv (completedLSym χ) ((c : ℂ) + t * I) - logDeriv χ.LFunction ((c : ℂ) + t * I))) := by
  obtain ⟨C, hC0, hC⟩ := norm_Hfn_le hk hkc
  set φ : ℝ → ℂ := fun t => Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I) with hφ
  have hφc : Continuous φ := by
    refine (continuous_Hfn_line hk hkc c).add ?_
    have h := continuous_Hfn_line hk hkc (1 - c)
    have : (fun t : ℝ => Hfn k (1 - c - t * I))
        = (fun t : ℝ => Hfn k (((1 - c : ℝ) : ℂ) + t * I)) ∘ fun t : ℝ => -t := by
      funext t; simp only [Function.comp_apply, one_sub_cast]
    rw [this]; exact h.comp continuous_neg
  have hφb : ∀ t, ‖φ t‖ ≤ (2 * C) / (1 + t ^ 2) := by
    intro t
    have h1 := hC c t (by linarith) (by linarith)
    have h2 := hC (1 - c) (-t) (by linarith) (by linarith)
    rw [← one_sub_cast, neg_sq] at h2
    calc ‖φ t‖ ≤ ‖Hfn k ((c : ℂ) + t * I)‖ + ‖Hfn k (1 - c - t * I)‖ := norm_add_le _ _
      _ ≤ C / (1 + t ^ 2) + C / (1 + t ^ 2) := add_le_add h1 h2
      _ = (2 * C) / (1 + t ^ 2) := by ring
  have hI := integrable_mul_logDeriv_archChi_of_decay (q := q) (parity χ) (parity_le_one' χ) hφc
    (by positivity) hφb (by linarith : (1:ℝ)/2 ≤ c) hc2
  refine hI.congr (Eventually.of_forall fun t => ?_)
  have hre : 0 < ((c : ℂ) + t * I).re := by simp; linarith
  have hL : χ.LFunction ((c : ℂ) + t * I) ≠ 0 :=
    DirichletCharacter.LFunction_ne_zero_of_one_le_re χ (Or.inl hχ1) (by simp; linarith)
  simp only [hφ]
  rw [logDeriv_completedLSym_sub_L hq hχ1 hre hL]

end MajorantsChi

/-! ## The archimedean line shift -/

section LineShift

/-- **G-generic archimedean line shift** (gamma_line_shift with Γℝ'/Γℝ replaced by
any `G` holomorphic on re > 0 with ‖G(σ+it)‖ ≤ C_G log(2+|t|) on 1/2 ≤ σ ≤ 3/2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9416a67313657b74c4c490f7fc262e07c4d0ce9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
