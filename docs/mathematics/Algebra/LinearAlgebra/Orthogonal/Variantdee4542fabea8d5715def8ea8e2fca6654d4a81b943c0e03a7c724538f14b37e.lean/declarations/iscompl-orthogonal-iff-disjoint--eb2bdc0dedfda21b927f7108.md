# isCompl_orthogonal_iff_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15828a87-9240-b0a8-598d-a8c6abd7fdad",
  "kind": "lemma",
  "lexical_name": "isCompl_orthogonal_iff_disjoint",
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
  "slug": "iscompl-orthogonal-iff-disjoint--eb2bdc0dedfda21b927f7108",
  "source": {
    "blob": "c9971815c9a8e9d42288036f33c1245c27a77467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 305,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb2bdc0dedfda21b927f71085298f67f159fc57cce0e1eb98615b5f98be1f9a5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15828a87-9240-b0a8-598d-a8c6abd7fdad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompl_orthogonal_iff_disjoint (hB₀ : B.IsRefl) :
    IsCompl W (B.orthogonal W) ↔ Disjoint W (B.orthogonal W) := by
  refine ⟨IsCompl.disjoint, fun h ↦ ⟨h, ?_⟩⟩
  rw [codisjoint_iff]
  apply (eq_top_of_finrank_eq <| (finrank_le _).antisymm _)
  calc
    finrank K V ≤ finrank K V + finrank K ↥(W ⊓ B.orthogonal ⊤) := le_self_add
    _ ≤ finrank K ↥(W ⊔ B.orthogonal W) + finrank K ↥(W ⊓ B.orthogonal W) := ?_
    _ ≤ finrank K ↥(W ⊔ B.orthogonal W) := by simp [h.eq_bot]
  rw [finrank_sup_add_finrank_inf_eq, finrank_add_finrank_orthogonal hB₀ W]

/-- A subspace is complement to its orthogonal complement with respect to some
reflexive bilinear form if that bilinear form restricted on to the subspace is nondegenerate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9971815c9a8e9d42288036f33c1245c27a77467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
