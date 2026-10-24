# exists_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e80ce0e52b2dde74182ebd773b5f8b3bf36976df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf91f38345943497cd9a1d88516957bba5ea76b8bef1b8e97fff0a7026800715.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:971806a9-bf52-8a57-08d2-0f9c07964878",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d8a7645-3063-5ae1-4009-4191d511aa68",
  "kind": "lemma",
  "lexical_name": "exists_lift",
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
  "slug": "exists-lift--3b2283ae8013d1df859fdb7f",
  "source": {
    "blob": "e80ce0e52b2dde74182ebd773b5f8b3bf36976df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 147,
    "path": "GRWTSK/Topology/AlgebraicTopology/CategoryWithFibrations/Variantbf91f38345943497cd9a1d88516957bba5ea76b8bef1b8e97fff0a7026800715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b2283ae8013d1df859fdb7f68d5944049ebcf6186f80df763f281b1acbdfb22",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/CategoryWithFibrations/Variantbf91f38345943497cd9a1d88516957bba5ea76b8bef1b8e97fff0a7026800715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d8a7645-3063-5ae1-4009-4191d511aa68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_lift :
    ∃ (φ : Δ[n + 1] ⟶ X),
      (∀ (j : Fin (n + 2)) (hj : j ≠ i), stdSimplex.δ j ≫ φ = f j hj) ∧
      φ ≫ p = b := by
  have sq : CommSq hf.desc Λ[n + 1, i].ι p b :=
    ⟨horn.hom_ext' (fun j hj ↦ by simpa using comm j hj)⟩
  exact ⟨sq.lift, fun j hj ↦ by simp [← ι_ι_assoc i j hj], by simp⟩

/-- If `f : ∀ (j : Fin (n + 2)) (_ : j ≠ i), Δ[n] ⟶ X` is a compatible family
of morphisms (which defines a morphism `Λ[n + 1, i] ⟶ X`), `p : X ⟶ Y` a Kan fibration
and `b : Δ[n + 1] ⟶ Y` such that for all `j ≠ i`, `f j _ ≫ p = stdSimplex.δ j ≫ b`,
then this is a lifting `Δ[n + 1] ⟶ X`. -/
@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/CategoryWithFibrations/Variantbf91f38345943497cd9a1d88516957bba5ea76b8bef1b8e97fff0a7026800715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/CategoryWithFibrations/Variantbf91f38345943497cd9a1d88516957bba5ea76b8bef1b8e97fff0a7026800715.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80ce0e52b2dde74182ebd773b5f8b3bf36976df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
