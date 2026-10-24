# actualZeroHeightHead_conj_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90538815-6181-8ad9-1565-1c1df77a30c4",
  "kind": "theorem",
  "lexical_name": "actualZeroHeightHead_conj_eq",
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
  "slug": "actualzeroheighthead-conj-eq--40ba0b3a8ee2d11a3473d7ea",
  "source": {
    "blob": "adad11e9ee8e95bdc4f7aacc1a161f4bf79699f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroHeadReality/Variant791590fb0f4aaf90b1c59e0f867e01d120020921d62c9c2ee55163241cd80a73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40ba0b3a8ee2d11a3473d7eaba1587735be81734553ae56cf9e2cac5a977c111",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroHeadReality/Variant791590fb0f4aaf90b1c59e0f867e01d120020921d62c9c2ee55163241cd80a73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90538815-6181-8ad9-1565-1c1df77a30c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroHeightHead_conj_eq (A R : ℝ) :
    conj (actualZeroHeightHead A R) = actualZeroHeightHead A R := by
  classical
  let F := (actualZeroHeightHead_finite R).toFinset
  let w : (zetaZeros zetaSeam).carrier → ℂ := fun rho =>
    ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho
  have hmem (rho : (zetaZeros zetaSeam).carrier) (hrho : rho ∈ F) :
      actualConjugateZero rho ∈ F := by
    simp only [F, Set.Finite.mem_toFinset, Set.mem_ofPred_eq] at hrho ⊢
    simpa only [actualConjugateZero, Complex.conj_im, abs_neg] using hrho
  have he : (∑ rho ∈ F, w (actualConjugateZero rho)) = ∑ rho ∈ F, w rho := by
    apply Finset.sum_bij (fun rho _ => actualConjugateZero rho)
    · exact hmem
    · intro rho hrho eta heta h
      have hi := congrArg actualConjugateZero h
      simpa only [actualConjugateZero_involutive] using hi
    · intro rho hrho
      exact ⟨actualConjugateZero rho, hmem rho hrho,
        actualConjugateZero_involutive rho⟩
    · intro rho hrho
      rfl
  calc
    _ = ∑ rho ∈ F, conj (w rho) := by
      unfold actualZeroHeightHead
      simp only [map_sum]
      rfl
    _ = ∑ rho ∈ F, w (actualConjugateZero rho) := by
      apply sum_congr rfl
      intro rho hrho
      exact (actualConjugateZero_weight A rho).symm
    _ = _ := he

/-- Every real open height gives an exactly real actual full finite contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroHeadReality/Variant791590fb0f4aaf90b1c59e0f867e01d120020921d62c9c2ee55163241cd80a73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroHeadReality/Variant791590fb0f4aaf90b1c59e0f867e01d120020921d62c9c2ee55163241cd80a73.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adad11e9ee8e95bdc4f7aacc1a161f4bf79699f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
