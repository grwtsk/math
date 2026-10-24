# finiteSourceMatrix_rowDebt_ordered_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a22253d-c1b4-af8d-5a47-081dc03e2d5d",
  "kind": "theorem",
  "lexical_name": "finiteSourceMatrix_rowDebt_ordered_nonnegative",
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
  "slug": "finitesourcematrix-rowdebt-ordered-nonnegative--148d622dc751a0f9fdc29f5f",
  "source": {
    "blob": "3412f93b0acd7f3ed58097bb4742b1417760f205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 188,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantde59cdc6415a1ceb62043395a6fba937bcf0f447aaddb6e5105540cf0e667547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:148d622dc751a0f9fdc29f5f150e6d610b454a20539b01087e4d839c541948c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantde59cdc6415a1ceb62043395a6fba937bcf0f447aaddb6e5105540cf0e667547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a22253d-c1b4-af8d-5a47-081dc03e2d5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSourceMatrix_rowDebt_ordered_nonnegative
    (hsign : ThetaTailSignRegular) {k N : ℕ} {r c : Fin k ↪o ℕ}
    (h : Separation r c) (nodes : Fin N ↪o ℝ) (hnodes : ∀ i, 0 ≤ nodes i) :
    PositiveLift.LeftOrderedNonnegative (finiteSourceMatrix h.rowDebt nodes) := by
  intro I
  simpa only [finiteSourceMatrix, Matrix.submatrix_apply, id_eq,
    OrderEmbedding.coe_comp, Function.comp_apply] using
    h.rowDebt_det_nonnegative hsign (I.comp nodes) (fun i => hnodes (I i))

/-- Consecutive degrees furnish every ordered minor of the transverse factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantde59cdc6415a1ceb62043395a6fba937bcf0f447aaddb6e5105540cf0e667547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantde59cdc6415a1ceb62043395a6fba937bcf0f447aaddb6e5105540cf0e667547.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3412f93b0acd7f3ed58097bb4742b1417760f205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
