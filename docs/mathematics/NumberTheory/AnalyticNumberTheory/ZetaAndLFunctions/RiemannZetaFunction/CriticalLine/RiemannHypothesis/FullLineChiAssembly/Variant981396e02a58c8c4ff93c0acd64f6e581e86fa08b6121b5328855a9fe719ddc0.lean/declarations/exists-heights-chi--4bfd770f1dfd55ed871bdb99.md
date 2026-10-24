# exists_heights_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b777609-5eec-06aa-8466-0a7a4b9ef353",
  "kind": "theorem",
  "lexical_name": "exists_heights_chi",
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
  "slug": "exists-heights-chi--4bfd770f1dfd55ed871bdb99",
  "source": {
    "blob": "835c3afb474850f1326707942fc16b1285b07d38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variant981396e02a58c8c4ff93c0acd64f6e581e86fa08b6121b5328855a9fe719ddc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bfd770f1dfd55ed871bdb99a862ef1e470f71a0e2452ce0e99506980ac3f32e",
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

Occurrence: `result:6b777609-5eec-06aa-8466-0a7a4b9ef353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_heights_chi (hq : 1 < q) (hprim : χ.IsPrimitive) :
    ∃ Cg : ℝ, 0 < Cg ∧ ∃ R : ℕ → ℝ, ∀ j : ℕ,
    (j : ℝ) + 7 ≤ R j ∧ R j ≤ (j : ℝ) + 8 ∧
    ∀ s : ℂ, (s.im = R j ∨ s.im = -R j) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      χ.LFunction s ≠ 0 ∧ ‖logDeriv χ.LFunction s‖ ≤ Cg * (Real.log ((q:ℝ) * ((j : ℝ) + 10))) ^ 2 := by
  obtain ⟨C, hC, h⟩ := good_heights_chi hq hprim
  have hex : ∀ j : ℕ, ∃ R : ℝ, ((j + 7 : ℕ) : ℝ) ≤ R ∧ R ≤ ((j + 7 : ℕ) : ℝ) + 1 ∧
      ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
        χ.LFunction s ≠ 0 ∧
        ‖logDeriv χ.LFunction s‖ ≤ C * (Real.log ((q:ℝ) * (((j + 7 : ℕ) : ℝ) + 3))) ^ 2 :=
    fun j => h (j + 7) (by omega)
  refine ⟨C, hC, fun j => (hex j).choose, fun j => ?_⟩
  dsimp only
  obtain ⟨hs1, hs2, hs3⟩ := (hex j).choose_spec
  have e : ((j + 7 : ℕ) : ℝ) = (j : ℝ) + 7 := by push_cast; ring
  refine ⟨?_, ?_, ?_⟩
  · calc (j : ℝ) + 7 = ((j + 7 : ℕ) : ℝ) := e.symm
      _ ≤ _ := hs1
  · exact hs2.trans (by rw [e]; linarith)
  · intro s him h1 h2
    have e3 : Real.log ((q:ℝ) * (((j + 7 : ℕ) : ℝ) + 3)) = Real.log ((q:ℝ) * ((j : ℝ) + 10)) := by
      rw [e]; ring_nf
    obtain ⟨h3, h4⟩ := hs3 s him h1 h2
    exact ⟨h3, by rwa [e3] at h4⟩

/-! ## Λ(·,χ) ≠ 0 on the horizontal sides (left half by the functional equation + conjugation:
Λ_sym(s,χ) = W(χ)·conj Λ_sym(1 − conj s, χ), and 1 − conj s has re = 1 − re s > 1/2, SAME im) -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variant981396e02a58c8c4ff93c0acd64f6e581e86fa08b6121b5328855a9fe719ddc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variant981396e02a58c8c4ff93c0acd64f6e581e86fa08b6121b5328855a9fe719ddc0.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `835c3afb474850f1326707942fc16b1285b07d38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
