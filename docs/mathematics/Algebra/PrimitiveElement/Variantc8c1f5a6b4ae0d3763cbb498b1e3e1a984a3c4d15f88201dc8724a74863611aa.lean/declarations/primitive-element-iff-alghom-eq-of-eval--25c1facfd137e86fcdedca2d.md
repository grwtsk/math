# primitive_element_iff_algHom_eq_of_eval'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6496f05dabad7c51dd05de34d543e6145817149e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d89515dd-5049-9649-1534-ccbbebd9e1ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:968826e2-5a4f-1d69-75d0-643fc39a0c8a",
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
  "slug": "primitive-element-iff-alghom-eq-of-eval--25c1facfd137e86fcdedca2d",
  "source": {
    "blob": "6496f05dabad7c51dd05de34d543e6145817149e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 380,
    "path": "GRWTSK/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25c1facfd137e86fcdedca2d0554a58fd64323acfc83597d57513f5ee7b0fb6c",
  "verification": {
    "reference": "docs/verification/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:968826e2-5a4f-1d69-75d0-643fc39a0c8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–388.

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

[Verification target and public status](../../../../../verification/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6496f05dabad7c51dd05de34d543e6145817149e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
