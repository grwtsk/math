# exists_heightsW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cf2d75db2f44cb0dd99e2160fd273caf639f807",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8323d37-0606-0c9d-5485-7369f0dc90f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e29b368-1420-e48d-a680-cfaaaffb1126",
  "kind": "lemma",
  "lexical_name": "exists_heightsW",
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
  "slug": "exists-heightsw--327f053d83a9d65aec4f8bf5",
  "source": {
    "blob": "2cf2d75db2f44cb0dd99e2160fd273caf639f807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 260,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:327f053d83a9d65aec4f8bf5fcae05edc02a49249662b8454bc83900c9d52fca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e29b368-1420-e48d-a680-cfaaaffb1126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_heightsW {t₀ : ℝ}
    (hGH : ∃ C : ℝ, 0 < C ∧ ∃ j₀ : ℕ, t₀ + 1 ≤ j₀ ∧ ∀ j : ℕ, j₀ ≤ j → ∃ R : ℝ, (j : ℝ) ≤ R ∧ R ≤ (j : ℝ) + 1 ∧
      ∀ s : ℂ, (s.im = R ∨ s.im = -R) → -1 ≤ s.re → s.re ≤ 2 →
        hardyW s ≠ 0 ∧ ‖L2 s + logDeriv hardyW s‖ ≤ C * (Real.log ((j : ℝ) + 3)) ^ 2) :
    ∃ C : ℝ, 0 < C ∧ ∃ j₁ : ℕ, 1 ≤ j₁ ∧ t₀ < j₁ ∧ ∃ R : ℕ → ℝ, ∀ j : ℕ,
      (j : ℝ) + j₁ ≤ R j ∧ R j ≤ (j : ℝ) + j₁ + 1 ∧
      ∀ s : ℂ, (s.im = R j ∨ s.im = -R j) → -1 ≤ s.re → s.re ≤ 2 →
        hardyW s ≠ 0 ∧ ‖L2 s + logDeriv hardyW s‖ ≤ C * (Real.log ((j : ℝ) + j₁ + 3)) ^ 2 := by
  obtain ⟨C, hC, j₀, ht₀, h⟩ := hGH
  have hex : ∀ j : ℕ, ∃ R : ℝ, ((j + (j₀ + 1) : ℕ) : ℝ) ≤ R ∧ R ≤ ((j + (j₀ + 1) : ℕ) : ℝ) + 1 ∧
      ∀ s : ℂ, (s.im = R ∨ s.im = -R) → -1 ≤ s.re → s.re ≤ 2 →
        hardyW s ≠ 0 ∧ ‖L2 s + logDeriv hardyW s‖ ≤ C * (Real.log (((j + (j₀ + 1) : ℕ) : ℝ) + 3)) ^ 2 :=
    fun j => h (j + (j₀ + 1)) (by omega)
  refine ⟨C, hC, j₀ + 1, by omega, by push_cast; linarith, fun j => (hex j).choose, fun j => ?_⟩
  obtain ⟨hs1, hs2, hs3⟩ := (hex j).choose_spec
  have e : ((j + (j₀ + 1) : ℕ) : ℝ) = (j : ℝ) + ((j₀ + 1 : ℕ) : ℝ) := by push_cast; ring
  refine ⟨by rw [← e]; exact hs1, by rw [← e]; exact hs2, fun s him h1 h2 => ?_⟩
  rw [← e]
  exact hs3 s him h1 h2

/-- **The W full-line identity** [XF′ Prop 9.1 / (Z4)]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf2d75db2f44cb0dd99e2160fd273caf639f807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
