# weighted_children_le_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33734afd-d6aa-46f3-42b0-24aa99b647de",
  "kind": "theorem",
  "lexical_name": "weighted_children_le_cap",
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
  "slug": "weighted-children-le-cap--4e7a0efccb6a4bbf29dfb373",
  "source": {
    "blob": "d2add0ea1e0206a096fbfd90d38b914794cb1f38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantda2156b16ec468360c138512329e727affd6f224e349091f7123f5b545053496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e7a0efccb6a4bbf29dfb373cb8b33acb2406c2893de62c8b2b6d917e5d39975",
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

Occurrence: `result:33734afd-d6aa-46f3-42b0-24aa99b647de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_children_le_cap {ι : Type*} (s : Finset ι)
    (D H W : ι → ℝ) {Wp C : ℝ} (hWp : 0 < Wp)
    (hW : ∀ i ∈ s, 0 ≤ W i) (hwidth : (∑ i ∈ s, W i) = Wp)
    (hcap : ∀ i ∈ s, compression (D i) (H i) (W i) ≤ C) :
    (∑ i ∈ s, (W i / Wp) * compression (D i) (H i) (W i)) ≤ C := by
  calc
    _ ≤ ∑ i ∈ s, (W i / Wp) * C := Finset.sum_le_sum
      (fun i hi => mul_le_mul_of_nonneg_left (hcap i hi) (div_nonneg (hW i hi) hWp.le))
    _ = C := by rw [← Finset.sum_mul, ← Finset.sum_div, hwidth, div_self hWp.ne', one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantda2156b16ec468360c138512329e727affd6f224e349091f7123f5b545053496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantda2156b16ec468360c138512329e727affd6f224e349091f7123f5b545053496.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2add0ea1e0206a096fbfd90d38b914794cb1f38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
