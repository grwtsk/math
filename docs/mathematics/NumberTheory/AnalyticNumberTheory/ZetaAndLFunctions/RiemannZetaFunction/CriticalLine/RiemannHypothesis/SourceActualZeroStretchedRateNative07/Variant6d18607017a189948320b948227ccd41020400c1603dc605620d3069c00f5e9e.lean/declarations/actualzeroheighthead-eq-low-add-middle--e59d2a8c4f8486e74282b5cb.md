# actualZeroHeightHead_eq_low_add_middle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbc825e9-1b35-b7c6-2988-3dbade4e231a",
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
  "slug": "actualzeroheighthead-eq-low-add-middle--e59d2a8c4f8486e74282b5cb",
  "source": {
    "blob": "cfc0d7f7f0e0452a3b116cf867c7a0c5a2337d40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 193,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variant6d18607017a189948320b948227ccd41020400c1603dc605620d3069c00f5e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e59d2a8c4f8486e74282b5cb75530239601c7c3e270be5db293571f3e447ebb3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variant6d18607017a189948320b948227ccd41020400c1603dc605620d3069c00f5e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbc825e9-1b35-b7c6-2988-3dbade4e231a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–215.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variant6d18607017a189948320b948227ccd41020400c1603dc605620d3069c00f5e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variant6d18607017a189948320b948227ccd41020400c1603dc605620d3069c00f5e9e.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfc0d7f7f0e0452a3b116cf867c7a0c5a2337d40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
