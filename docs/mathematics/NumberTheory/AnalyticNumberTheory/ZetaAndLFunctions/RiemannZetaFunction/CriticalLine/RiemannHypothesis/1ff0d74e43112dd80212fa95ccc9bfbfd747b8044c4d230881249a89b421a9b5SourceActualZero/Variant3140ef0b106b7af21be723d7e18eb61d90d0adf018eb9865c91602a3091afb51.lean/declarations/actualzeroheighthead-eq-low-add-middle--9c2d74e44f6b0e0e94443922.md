# actualZeroHeightHead_eq_low_add_middle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5ec32fc-687b-05cb-6ede-65885cee5f44",
  "kind": "theorem",
  "lexical_name": "actualZeroHeightHead_eq_low_add_middle",
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
  "slug": "actualzeroheighthead-eq-low-add-middle--9c2d74e44f6b0e0e94443922",
  "source": {
    "blob": "f1a4f042161474ae5aec655a368e334ea0cf1aae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 185,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c2d74e44f6b0e0e9444392245f68d855bdae3a4d2f99759c33c549e0ad11ed4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5ec32fc-687b-05cb-6ede-65885cee5f44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroHeightHead_eq_low_add_middle (A R : ℝ) (hR : 4 ≤ R) :
    actualZeroHeightHead A R = actualZeroHeightHead A 4 + actualMiddleZeroHeightHead A R := by
  classical
  let F := (actualZeroHeightHead_finite R).toFinset
  have hlo : F.filter (fun rho : (zetaZeros zetaSeam).carrier => |(rho : ℂ).im| < 4) =
      (actualZeroHeightHead_finite 4).toFinset := by
    ext rho
    simp only [F, mem_filter, Set.Finite.mem_toFinset, Set.mem_ofPred_eq]
    constructor
    · exact fun h => h.2
    · exact fun h => ⟨h.trans_le hR,h⟩
  have hhi : F.filter (fun rho : (zetaZeros zetaSeam).carrier => ¬ |(rho : ℂ).im| < 4) =
      F.filter (fun rho : (zetaZeros zetaSeam).carrier => 4 ≤ |(rho : ℂ).im|) := by
    ext rho
    simp only [mem_filter, not_lt]
  have he := sum_filter_add_sum_filter_not F
    (fun rho : (zetaZeros zetaSeam).carrier => |(rho : ℂ).im| < 4)
    (fun rho => ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)
  rw [hlo,hhi] at he
  exact he.symm

/-- The entire middle actual-zero sum uses its true reciprocal-six
multiplicity mass; the number of zeros is never substituted for that mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1a4f042161474ae5aec655a368e334ea0cf1aae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
