# congr_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16d75ebd-2b40-5c34-fd79-14baf8368d3d",
  "kind": "lemma",
  "lexical_name": "congr_map",
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
  "slug": "congr-map--3739d160d33bffc9c82ea67f",
  "source": {
    "blob": "481935825b291019c9604d5549abcf3ddf084ffd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 430,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3739d160d33bffc9c82ea67f431f216bd17235946c45fc6a2c7efcb5bcf1de7a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16d75ebd-2b40-5c34-fd79-14baf8368d3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma congr_map {j₁ j₂ : J} (iter₁ : Φ.Iteration j₁) (iter₂ : Φ.Iteration j₂)
    {k₁ k₂ : J} (h : k₁ ≤ k₂) (h₁ : k₂ ≤ j₁) (h₂ : k₂ ≤ j₂) :
    iter₁.F.map (homOfLE h : ⟨k₁, h.trans h₁⟩ ⟶ ⟨k₂, h₁⟩) =
      eqToHom (congr_obj iter₁ iter₂ k₁ (h.trans h₁) (h.trans h₂)) ≫
        iter₂.F.map (homOfLE h) ≫
        eqToHom (congr_obj iter₁ iter₂ k₂ h₁ h₂).symm := by
  have := (Arrow.mk_eq_mk_iff _ _).1 (congr_arrowMap iter₁ iter₂ h h₁ h₂)
  tauto

/-- Given `iter₁ : Φ.Iteration j₁` and `iter₂ : Φ.Iteration j₂`, with `j₁ ≤ j₂`,
if `k₁ ≤ k₂` are elements such that `k₁ ≤ j₁` and `k₂ ≤ k₂`, then this
is the canonical map `iter₁.F.obj ⟨k₁, h₁⟩ ⟶ iter₂.F.obj ⟨k₂, h₂⟩`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `481935825b291019c9604d5549abcf3ddf084ffd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
