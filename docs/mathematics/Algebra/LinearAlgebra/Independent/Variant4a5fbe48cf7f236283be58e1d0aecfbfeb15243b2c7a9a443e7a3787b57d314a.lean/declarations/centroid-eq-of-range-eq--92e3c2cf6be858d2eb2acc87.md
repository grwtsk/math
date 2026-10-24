# centroid_eq_of_range_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc7de1d2f2b6e6d2bdc203b9fdec3ae18da1f12a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1020,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a5fbe48cf7f236283be58e1d0aecfbfeb15243b2c7a9a443e7a3787b57d314a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe685605-5f23-9cce-89e1-757e20886233",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fbe018a-14bf-9270-72a7-47878f515d8e",
  "kind": "theorem",
  "lexical_name": "centroid_eq_of_range_eq",
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
  "slug": "centroid-eq-of-range-eq--92e3c2cf6be858d2eb2acc87",
  "source": {
    "blob": "bc7de1d2f2b6e6d2bdc203b9fdec3ae18da1f12a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1041,
    "line": 1020,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant4a5fbe48cf7f236283be58e1d0aecfbfeb15243b2c7a9a443e7a3787b57d314a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92e3c2cf6be858d2eb2acc87ec722a82b8f31e706e6d8c6a4d91b0aa2447d89f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant4a5fbe48cf7f236283be58e1d0aecfbfeb15243b2c7a9a443e7a3787b57d314a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fbe018a-14bf-9270-72a7-47878f515d8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1020–1041.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centroid_eq_of_range_eq {n : ℕ} {s₁ s₂ : Simplex k P n}
    (h : Set.range s₁.points = Set.range s₂.points) :
    Finset.univ.centroid k s₁.points = Finset.univ.centroid k s₂.points := by
  rw [← Set.image_univ, ← Set.image_univ, ← Finset.coe_univ] at h
  exact
    Finset.univ.centroid_eq_of_inj_on_of_image_eq k _
      (fun _ _ _ _ he => AffineIndependent.injective s₁.independent he)
      (fun _ _ _ _ he => AffineIndependent.injective s₂.independent he) h

end Simplex

end Affine

namespace Affine

namespace Simplex

variable {k V P : Type*} [Ring k] [PartialOrder k] [AddCommGroup V] [Module k V] [AffineSpace V P]

/-- The interior of a simplex is the set of points that can be expressed as an affine combination
of the vertices with weights strictly between 0 and 1. This is equivalent to the intrinsic
interior of the convex hull of the vertices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant4a5fbe48cf7f236283be58e1d0aecfbfeb15243b2c7a9a443e7a3787b57d314a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant4a5fbe48cf7f236283be58e1d0aecfbfeb15243b2c7a9a443e7a3787b57d314a.lean#L1020).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc7de1d2f2b6e6d2bdc203b9fdec3ae18da1f12a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
