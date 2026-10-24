# completedL_ne_zero_on_horizontals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90844d7d-2307-221e-87b4-c6577d433b40",
  "kind": "theorem",
  "lexical_name": "completedL_ne_zero_on_horizontals",
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
  "slug": "completedl-ne-zero-on-horizontals--9bf19b596f880b6588df0a1c",
  "source": {
    "blob": "835c3afb474850f1326707942fc16b1285b07d38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variant981396e02a58c8c4ff93c0acd64f6e581e86fa08b6121b5328855a9fe719ddc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bf19b596f880b6588df0a1c6c14c162530bcf6db61746eac51fd8a5ed7d2821",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variant981396e02a58c8c4ff93c0acd64f6e581e86fa08b6121b5328855a9fe719ddc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90844d7d-2307-221e-87b4-c6577d433b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completedL_ne_zero_on_horizontals (hq : 1 < q) (hprim : χ.IsPrimitive)
    {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3 / 2) {R : ℝ}
    (hL : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 → χ.LFunction s ≠ 0) :
    ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 - c ≤ s.re → s.re ≤ c → completedLFunction χ s ≠ 0 := by
  have hχ1 : χ ≠ 1 := ne_one_of_primitive hq hprim
  -- the right half: a zero of Λ with re > 0 is a nontrivial zero of L
  have aux : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      completedLSym χ s ≠ 0 := by
    intro s him h1 h2 h0
    have hnt := (completedLSym_eq_zero_iff hq hprim).mp h0
    exact hL s him h1 h2 hnt.1
  intro s him h1 h2 h0
  have h0' : completedLSym χ s = 0 := (completedLSym_eq_zero_iff' s).mpr h0
  rcases le_or_gt (1 / 2 : ℝ) s.re with hre | hre
  · exact aux s him hre (by linarith) h0'
  · -- Λ_sym χ s = Λ_sym χ (1 − (1 − s)) = W · Λ_sym χ⁻¹ (1 − s) = W · conj (Λ_sym χ (conj (1 − s)))
    have e1 : completedLSym χ s = rootNumber χ * completedLSym χ⁻¹ (1 - s) := by
      have := completedLSym_one_sub hprim (1 - s)
      rwa [sub_sub_cancel] at this
    rw [e1, completedLSym_inv_eq_conj hq hχ1, mul_eq_zero] at h0'
    rcases h0' with hW | hc
    · exact rootNumber_ne_zero hq hprim hW
    · rw [map_eq_zero] at hc
      apply aux ((starRingEnd ℂ) (1 - s)) ?_ ?_ ?_ hc
      · rcases him with h | h
        · left; simp [h]
        · right; simp [h]
      · simp; linarith
      · simp; linarith

/-! ## The full-line integrand is integrable -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variant981396e02a58c8c4ff93c0acd64f6e581e86fa08b6121b5328855a9fe719ddc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variant981396e02a58c8c4ff93c0acd64f6e581e86fa08b6121b5328855a9fe719ddc0.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `835c3afb474850f1326707942fc16b1285b07d38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
