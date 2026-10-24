# isStablyFiniteRing_iff_injective_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e27ea745bb8ab9f7766890e55c6a48e85d89a370",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1556d2f3-71d4-14b6-70c9-c93c6e6872fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb38107d-fa1f-d4df-54b7-d15b4f317411",
  "kind": "theorem",
  "lexical_name": "isStablyFiniteRing_iff_injective_of_surjective",
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
  "slug": "isstablyfinitering-iff-injective-of-surjective--7151f77a6af98cadced992d4",
  "source": {
    "blob": "e27ea745bb8ab9f7766890e55c6a48e85d89a370",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1222,
    "line": 1211,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7151f77a6af98cadced992d432e2515377150fd616828321fa02bd95300a653e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb38107d-fa1f-d4df-54b7-d15b4f317411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1211–1222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isStablyFiniteRing_iff_injective_of_surjective :
    IsStablyFiniteRing A ↔ ∀ n (f : Module.End A (Fin n → A)), Surjective f → Injective f := by
  simp_rw [isStablyFiniteRing_iff_isDedekindFiniteMonoid_moduleEnd, isDedekindFiniteMonoid_iff]
  refine ⟨fun h n f surj ↦ ?_, fun h n f g eq ↦ ?_⟩
  · have ⟨g, eq⟩ := Module.projective_lifting_property _ .id surj
    exact injective_of_comp_eq_id _ _ (h _ eq)
  · have surj := surjective_of_comp_eq_id _ _ eq
    have := (LinearEquiv.ofBijective f ⟨h _ _ surj, surj⟩).symm_comp
    rwa [← left_inv_eq_right_inv this eq]

/-- `Module.End.injective_of_surjective` is the more general version for finite free `A`-modules
not necessarily of the form `Fin n → A`, but this version requires less imports. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.lean#L1211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e27ea745bb8ab9f7766890e55c6a48e85d89a370` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
