# actualCriticalZeroHeightHead_real_uniform_ninth_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99d11140-19e8-f7fa-482e-79ff4e058f76",
  "kind": "theorem",
  "lexical_name": "actualCriticalZeroHeightHead_real_uniform_ninth_bound",
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
  "slug": "actualcriticalzeroheighthead-real-uniform-ninth-bound--ac08cad293b8880b71151f2f",
  "source": {
    "blob": "a7698d99725e8ba07f3f9015bf005269b6933d51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variantf13910aceb828fe993f8e77222e878baff31276d8b70b95d0c9818e73ff19017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac08cad293b8880b71151f2f0515cd814fd2a03bcccd1e6f8aa32be14a36f3e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variantf13910aceb828fe993f8e77222e878baff31276d8b70b95d0c9818e73ff19017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99d11140-19e8-f7fa-482e-79ff4e058f76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalZeroHeightHead_real_uniform_ninth_bound :
    ∃ C R0 : ℝ, 0 ≤ C ∧ 1 ≤ R0 ∧ ∀ A R : ℝ, R0 ≤ A →
      0 ≤ (actualCriticalZeroHeightHead A R).re ∧
        (actualCriticalZeroHeightHead A R).re ≤ C / A ^ 9 := by
  obtain ⟨C, R0, hC, hR0, hb⟩ := actualCriticalZeroHeightHead_uniform_ninth_bound
  refine ⟨C, R0, hC, hR0, fun A R hA => ?_⟩
  exact ⟨actualCriticalZeroHeightHead_re_nonneg A R (hR0.trans hA),
    (Complex.re_le_norm _).trans (hb A R hA)⟩

end
end FormalResearch.RiemannHypothesis.ActualCriticalZeroMagnitude
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variantf13910aceb828fe993f8e77222e878baff31276d8b70b95d0c9818e73ff19017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variantf13910aceb828fe993f8e77222e878baff31276d8b70b95d0c9818e73ff19017.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7698d99725e8ba07f3f9015bf005269b6933d51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
