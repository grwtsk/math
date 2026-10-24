# actualSignedZeroHeightShell_eq_head_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ba5a4d1-a4cc-f9b1-4e29-33ae01292882",
  "kind": "theorem",
  "lexical_name": "actualSignedZeroHeightShell_eq_head_sub",
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
  "slug": "actualsignedzeroheightshell-eq-head-sub--19c5e24ef889e86404d7311d",
  "source": {
    "blob": "008a5074e1b88821788ed4273a48dad3211a0bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19c5e24ef889e86404d7311d59b056be2cafb92e393c83072a3cb1fc76037ed6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ba5a4d1-a4cc-f9b1-4e29-33ae01292882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSignedZeroHeightShell_eq_head_sub (A R1 R2 : ℝ) (hR : R1 ≤ R2) :
    actualSignedZeroHeightShell A R1 R2 =
      actualZeroHeightHead A R2 - actualZeroHeightHead A R1 := by
  classical
  let F := (actualZeroHeightHead_finite R2).toFinset
  have hf : F.filter (fun rho : (zetaZeros zetaSeam).carrier => |(rho : ℂ).im| < R1) =
      (actualZeroHeightHead_finite R1).toFinset := by
    ext rho
    simp only [F, mem_filter, Set.Finite.mem_toFinset, Set.mem_ofPred_eq]
    constructor
    · exact fun h => h.2
    · exact fun h => ⟨h.trans_le hR, h⟩
  have hs := Finset.sum_filter_add_sum_filter_not F
    (fun rho => |(rho : ℂ).im| < R1)
    (fun rho => ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)
  simp only [not_lt, hf] at hs
  change actualZeroHeightHead A R1 + actualSignedZeroHeightShell A R1 R2 =
    actualZeroHeightHead A R2 at hs
  linear_combination hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `008a5074e1b88821788ed4273a48dad3211a0bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
