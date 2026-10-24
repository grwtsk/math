# parent_le_weighted_children

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8170f4e-ac90-73ad-8a0f-3e7fe0623c32",
  "kind": "theorem",
  "lexical_name": "parent_le_weighted_children",
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
  "slug": "parent-le-weighted-children--ec412a4e84d2bc75e5d0c54f",
  "source": {
    "blob": "d2add0ea1e0206a096fbfd90d38b914794cb1f38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantda2156b16ec468360c138512329e727affd6f224e349091f7123f5b545053496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec412a4e84d2bc75e5d0c54f34d71ea46ff1cc017d812e5c229b2f6a62335dae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantda2156b16ec468360c138512329e727affd6f224e349091f7123f5b545053496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8170f4e-ac90-73ad-8a0f-3e7fe0623c32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parent_le_weighted_children {ι : Type*} (s : Finset ι)
    (D H W : ι → ℝ) {Hp Wp Dp : ℝ}
    (_hHp : 0 < Hp) (hWp : 0 < Wp) (hW : ∀ i ∈ s, 0 < W i)
    (hH : ∀ i ∈ s, 0 < H i) (hD : ∀ i ∈ s, 0 ≤ D i)
    (hheight : ∀ i ∈ s, H i ≤ Hp) (hdebt : Dp = ∑ i ∈ s, D i) :
    compression Dp Hp Wp ≤ ∑ i ∈ s, (W i / Wp) * compression (D i) (H i) (W i) := by
  unfold compression
  rw [hdebt, Finset.sum_div]
  apply Finset.sum_le_sum
  intro i hi
  have hd := div_le_div_of_nonneg_left (hD i hi) (hH i hi) (hheight i hi)
  have hdw := div_le_div_of_nonneg_right hd hWp.le
  have hparent : D i / (Hp * Wp) = (D i / Hp) / Wp := by ring
  have hchild : W i / Wp * (D i / (H i * W i)) = (D i / H i) / Wp := by
    field_simp [(hW i hi).ne', (hH i hi).ne', hWp.ne']
  simpa only [hparent, hchild] using hdw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantda2156b16ec468360c138512329e727affd6f224e349091f7123f5b545053496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantda2156b16ec468360c138512329e727affd6f224e349091f7123f5b545053496.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2add0ea1e0206a096fbfd90d38b914794cb1f38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
