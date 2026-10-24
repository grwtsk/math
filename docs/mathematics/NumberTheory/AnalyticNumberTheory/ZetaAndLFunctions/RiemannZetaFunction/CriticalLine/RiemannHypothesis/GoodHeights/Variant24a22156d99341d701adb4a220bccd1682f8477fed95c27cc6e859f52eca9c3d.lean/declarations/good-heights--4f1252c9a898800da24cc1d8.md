# good_heights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dba3f39a75f2bde58693a7099808443cac7773ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31cc1a40-b923-2441-d38b-f43ab857747f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfde5931-407e-e273-23eb-4a83fd489a21",
  "kind": "theorem",
  "lexical_name": "good_heights",
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
  "slug": "good-heights--4f1252c9a898800da24cc1d8",
  "source": {
    "blob": "dba3f39a75f2bde58693a7099808443cac7773ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 330,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f1252c9a898800da24cc1d81bfde408a083fa3bbb8e3a74ac2251eeb2698f01",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfde5931-407e-e273-23eb-4a83fd489a21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem good_heights : ∃ Cg : ℝ, 0 < Cg ∧ ∃ R : ℕ → ℝ, ∀ j : ℕ,
    (j : ℝ) + 7 ≤ R j ∧ R j ≤ (j : ℝ) + 8 ∧
    ∀ s : ℂ, (s.im = R j ∨ s.im = -R j) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg * (Real.log ((j : ℝ) + 10)) ^ 2 := by
  obtain ⟨C, hC, h⟩ := good_heights_at
  have hex : ∀ j : ℕ, ∃ R : ℝ, ((j + 7 : ℕ) : ℝ) ≤ R ∧ R ≤ ((j + 7 : ℕ) : ℝ) + 1 ∧
      ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ C * (Real.log (((j + 7 : ℕ) : ℝ) + 3)) ^ 2 :=
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
    have e3 : Real.log (((j + 7 : ℕ) : ℝ) + 3) = Real.log ((j : ℝ) + 10) := by rw [e]; ring_nf
    obtain ⟨h3, h4⟩ := hs3 s him h1 h2
    exact ⟨h3, by rwa [e3] at h4⟩


end WeilEF
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dba3f39a75f2bde58693a7099808443cac7773ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
