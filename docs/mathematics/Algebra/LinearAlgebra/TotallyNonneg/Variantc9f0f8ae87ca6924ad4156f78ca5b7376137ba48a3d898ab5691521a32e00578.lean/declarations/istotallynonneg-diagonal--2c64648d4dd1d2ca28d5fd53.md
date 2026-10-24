# IsTotallyNonneg.diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d607c15-943a-55ba-975f-81a2cc2df357",
  "kind": "lemma",
  "lexical_name": "IsTotallyNonneg.diagonal",
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
  "slug": "istotallynonneg-diagonal--2c64648d4dd1d2ca28d5fd53",
  "source": {
    "blob": "e484150d53a591a98b68185292ccc984c5ab2146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c64648d4dd1d2ca28d5fd53337831d2f1f3d5d835e19659c5902708ab4c8894",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d607c15-943a-55ba-975f-81a2cc2df357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsTotallyNonneg.diagonal [DecidableEq ι] {f : ι → R} (hf : 0 ≤ f) :
    (diagonal f).IsTotallyNonneg := by
  intro n rows cols hrows hcols
  by_cases h_range : Set.range rows = Set.range cols
  · rw [hrows.eq_of_range_eq hcols h_range, submatrix_diagonal _ _ hcols.injective, det_diagonal]
    exact Finset.prod_nonneg fun _ _ ↦ hf _
  · have : ¬(Set.range rows ⊆ Set.range cols) := by
      grind [hrows.injective.range_eq_range_iff_subset]
    obtain ⟨_, ⟨i, _⟩, _⟩ := Set.not_subset.mp this
    have : ∀ j, rows i ≠ cols j := by grind
    simp [det_eq_zero_of_row_eq_zero i, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e484150d53a591a98b68185292ccc984c5ab2146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
