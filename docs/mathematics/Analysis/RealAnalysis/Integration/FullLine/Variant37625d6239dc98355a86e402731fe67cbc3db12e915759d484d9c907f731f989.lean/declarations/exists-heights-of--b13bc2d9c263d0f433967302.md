# exists_heights_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:991c64ba-f43d-de0c-9f11-bacd2dc27ce9",
  "kind": "theorem",
  "lexical_name": "exists_heights_of",
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
  "slug": "exists-heights-of--b13bc2d9c263d0f433967302",
  "source": {
    "blob": "133d738d698b7cf16c2b9024a42b278b900a3a64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b13bc2d9c263d0f4339673022be21a6e38f8e9f80c8ee0930aebd691691a5071",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:991c64ba-f43d-de0c-9f11-bacd2dc27ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_heights_of {a b : ℝ}
    (hGH : ∃ C : ℝ, 0 < C ∧ ∃ j₀ : ℕ, ∀ j : ℕ, j₀ ≤ j → ∃ R : ℝ, (j : ℝ) ≤ R ∧ R ≤ (j : ℝ) + 1 ∧
      ∀ s : ℂ, (s.im = R ∨ s.im = -R) → a ≤ s.re → s.re ≤ b →
        f s ≠ 0 ∧ ‖logDeriv f s‖ ≤ C * (Real.log ((j : ℝ) + 3)) ^ 2) :
    ∃ C : ℝ, 0 < C ∧ ∃ j₀ : ℕ, 1 ≤ j₀ ∧ ∃ R : ℕ → ℝ, ∀ j : ℕ,
      (j : ℝ) + j₀ ≤ R j ∧ R j ≤ (j : ℝ) + j₀ + 1 ∧
      ∀ s : ℂ, (s.im = R j ∨ s.im = -R j) → a ≤ s.re → s.re ≤ b →
        f s ≠ 0 ∧ ‖logDeriv f s‖ ≤ C * (Real.log ((j : ℝ) + j₀ + 3)) ^ 2 := by
  obtain ⟨C, hC, j₀, h⟩ := hGH
  have hex : ∀ j : ℕ, ∃ R : ℝ, ((j + (j₀ + 1) : ℕ) : ℝ) ≤ R ∧ R ≤ ((j + (j₀ + 1) : ℕ) : ℝ) + 1 ∧
      ∀ s : ℂ, (s.im = R ∨ s.im = -R) → a ≤ s.re → s.re ≤ b →
        f s ≠ 0 ∧ ‖logDeriv f s‖ ≤ C * (Real.log (((j + (j₀ + 1) : ℕ) : ℝ) + 3)) ^ 2 :=
    fun j => h (j + (j₀ + 1)) (by omega)
  refine ⟨C, hC, j₀ + 1, by omega, fun j => (hex j).choose, fun j => ?_⟩
  obtain ⟨hs1, hs2, hs3⟩ := (hex j).choose_spec
  have e : ((j + (j₀ + 1) : ℕ) : ℝ) = (j : ℝ) + ((j₀ + 1 : ℕ) : ℝ) := by push_cast; ring
  refine ⟨by rw [← e]; exact hs1, by rw [← e]; exact hs2, fun s him h1 h2 => ?_⟩
  rw [← e]
  exact hs3 s him h1 h2

/-! ## The horizontal sides -/

/-- **Horizontal sides vanish**: ‖H‖ ≤ C_H/(1+R_j²) on the segment and ‖f′/f‖ ≤ K log²(j+j₀+3) there,
R_j ≥ j + j₀ ≥ 1, so  ‖HIntegral‖ ≤ (2c−1)·C_H·K·log²/(1+R_j²) → 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133d738d698b7cf16c2b9024a42b278b900a3a64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
