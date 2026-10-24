# primitive_element_iff_algHom_eq_of_eval'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5f09213-3fa6-aae2-dee2-33ad18df7f7b",
  "kind": "theorem",
  "lexical_name": "primitive_element_iff_algHom_eq_of_eval'",
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
  "slug": "primitive-element-iff-alghom-eq-of-eval--08bec2b33c8b7d0edd023310",
  "source": {
    "blob": "2b9546978513fabf1ef67e65f1e08c1933913002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 388,
    "path": "GRWTSK/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08bec2b33c8b7d0edd023310410ad1532ef6e62c392cc1b164e2a82e27820d58",
  "verification": {
    "reference": "docs/verification/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5f09213-3fa6-aae2-dee2-33ad18df7f7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_element_iff_algHom_eq_of_eval' (α : E) :
    F⟮α⟯ = ⊤ ↔ Function.Injective fun φ : E →ₐ[F] A ↦ φ α := by
  classical
  simp_rw [primitive_element_iff_minpoly_natDegree_eq, ← card_rootSet_eq_natDegree (K := A)
    (Algebra.IsSeparable.isSeparable F α) (hA _), ← toFinset_card,
    ← (Algebra.IsAlgebraic.of_finite F E).range_eval_eq_rootSet_minpoly_of_splits _ hA α,
    ← AlgHom.card_of_splits F E A hA, Fintype.card, toFinset_range, Finset.card_image_iff,
    Finset.coe_univ, ← injective_iff_injOn_univ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9546978513fabf1ef67e65f1e08c1933913002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
