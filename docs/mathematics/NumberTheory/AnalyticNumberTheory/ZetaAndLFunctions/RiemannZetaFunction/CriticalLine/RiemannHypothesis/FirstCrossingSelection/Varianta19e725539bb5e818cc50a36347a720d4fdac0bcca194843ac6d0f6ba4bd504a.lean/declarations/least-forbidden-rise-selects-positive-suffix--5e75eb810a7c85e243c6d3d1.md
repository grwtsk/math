# least_forbidden_rise_selects_positive_suffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:023e0ba6-a425-dcf2-3c08-a695cfb5a574",
  "kind": "theorem",
  "lexical_name": "least_forbidden_rise_selects_positive_suffix",
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
  "slug": "least-forbidden-rise-selects-positive-suffix--5e75eb810a7c85e243c6d3d1",
  "source": {
    "blob": "f01bcc4e562bbf7b4d473c9b16c8cfa4607fb8e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingSelection/Varianta19e725539bb5e818cc50a36347a720d4fdac0bcca194843ac6d0f6ba4bd504a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e75eb810a7c85e243c6d3d180a07a990d10746ab6cdaddf757852177c1d3fb8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingSelection/Varianta19e725539bb5e818cc50a36347a720d4fdac0bcca194843ac6d0f6ba4bd504a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:023e0ba6-a425-dcf2-3c08-a695cfb5a574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem least_forbidden_rise_selects_positive_suffix (N : ℕ) {R : ℝ} (hR : 0 ≤ R)
    (hex : ∃ K : ℕ, R < ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N) :
    ∃ K : ℕ, 0 < K ∧ R < actualSuffix N K 0 ∧
      (∀ j : ℕ, j < K → 0 < actualSuffix N K j) ∧ actualSuffix N K K = 0 := by
  let K := Nat.find hex
  have hfinal : R < ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N :=
    Nat.find_spec hex
  have hK : 0 < K := by
    by_contra h
    have hz : K = 0 := by omega
    rw [hz, Nat.add_zero, sub_self] at hfinal
    linarith
  refine ⟨K, hK, ?_, ?_, actualSuffix_terminal N K⟩
  · simpa only [actualSuffix, Nat.add_zero] using hfinal
  · intro j hj
    have hprior : ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N ≤ R :=
      le_of_not_gt (Nat.find_min hex hj)
    unfold actualSuffix
    linarith

end
end GRWTSK.RiemannHypothesis.Conversation.FirstCrossingSelection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingSelection/Varianta19e725539bb5e818cc50a36347a720d4fdac0bcca194843ac6d0f6ba4bd504a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingSelection/Varianta19e725539bb5e818cc50a36347a720d4fdac0bcca194843ac6d0f6ba4bd504a.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f01bcc4e562bbf7b4d473c9b16c8cfa4607fb8e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
