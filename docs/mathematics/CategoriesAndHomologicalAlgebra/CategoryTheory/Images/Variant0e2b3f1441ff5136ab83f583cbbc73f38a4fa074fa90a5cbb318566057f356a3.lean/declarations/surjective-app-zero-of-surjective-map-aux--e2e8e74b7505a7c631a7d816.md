# surjective_π_app_zero_of_surjective_map_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cef82c6-15a3-95d2-a161-f24772d7630a",
  "kind": "lemma",
  "lexical_name": "surjective_π_app_zero_of_surjective_map_aux",
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
  "slug": "surjective-app-zero-of-surjective-map-aux--e2e8e74b7505a7c631a7d816",
  "source": {
    "blob": "4895732bc02295bd81bdbd90c82982e89af2fef6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2e8e74b7505a7c631a7d816d8289f524f324b8055eb9104f6167a8dbedd15ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cef82c6-15a3-95d2-a161-f24772d7630a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjective_π_app_zero_of_surjective_map_aux :
    Function.Surjective ((limitCone F).π.app ⟨0⟩) := by
  intro a
  refine ⟨⟨fun ⟨n⟩ ↦ preimage hF a n, ?_⟩, rfl⟩
  intro ⟨n⟩ ⟨m⟩ ⟨⟨⟨(h : m ≤ n)⟩⟩⟩
  induction h with
  | refl =>
    erw [CategoryTheory.Functor.map_id, types_id_apply]
  | @step p h ih =>
    rw [← ih]
    have h' : m ≤ p := h
    erw [CategoryTheory.Functor.map_comp (f := (homOfLE (Nat.le_succ p)).op) (g := (homOfLE h').op),
      types_comp_apply, (hF p _).choose_spec]
    rfl

/--
Given surjections `⋯ ⟶ Xₙ₊₁ ⟶ Xₙ ⟶ ⋯ ⟶ X₀`, the projection map `lim Xₙ ⟶ X₀` is surjective.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4895732bc02295bd81bdbd90c82982e89af2fef6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
