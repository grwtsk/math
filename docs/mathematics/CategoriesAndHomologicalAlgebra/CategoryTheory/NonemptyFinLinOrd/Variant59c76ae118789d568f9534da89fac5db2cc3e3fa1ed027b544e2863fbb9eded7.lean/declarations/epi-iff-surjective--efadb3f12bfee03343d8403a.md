# epi_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ec87477f278bbcc9dac695e1a45c713d4e8185b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59c76ae118789d568f9534da89fac5db2cc3e3fa1ed027b544e2863fbb9eded7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e13a7797-fbe6-1890-7919-329615d77776",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:513c1391-02e3-11ac-5ba2-ebf5d2e3b4c6",
  "kind": "theorem",
  "lexical_name": "epi_iff_surjective",
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
  "slug": "epi-iff-surjective--efadb3f12bfee03343d8403a",
  "source": {
    "blob": "8ec87477f278bbcc9dac695e1a45c713d4e8185b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant59c76ae118789d568f9534da89fac5db2cc3e3fa1ed027b544e2863fbb9eded7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efadb3f12bfee03343d8403ad6ad6407902b7f8ecf0b1923e5e788b46f3d39a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant59c76ae118789d568f9534da89fac5db2cc3e3fa1ed027b544e2863fbb9eded7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:513c1391-02e3-11ac-5ba2-ebf5d2e3b4c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_iff_surjective {A B : NonemptyFinLinOrd.{u}} (f : A ⟶ B) :
    Epi f ↔ Function.Surjective f := by
  constructor
  · intro
    dsimp only [Function.Surjective]
    by_contra! ⟨m, hm⟩
    let Y := of (ULift (Fin 2))
    let p₁ : B ⟶ Y := ofHom
      ⟨fun b => if b < m then ULift.up 0 else ULift.up 1, fun x₁ x₂ h => by
        simp only
        split_ifs with h₁ h₂ h₂
        any_goals apply Fin.zero_le
        · exfalso
          exact h₁ (lt_of_le_of_lt h h₂)
        · rfl⟩
    let p₂ : B ⟶ Y := ofHom
      ⟨fun b => if b ≤ m then ULift.up 0 else ULift.up 1, fun x₁ x₂ h => by
        simp only
        split_ifs with h₁ h₂ h₂
        any_goals apply Fin.zero_le
        · exfalso
          exact h₁ (h.trans h₂)
        · rfl⟩
    have h : p₁ m = p₂ m := by
      congr
      rw [← cancel_epi f]
      ext a : 3
      simp only [p₁, p₂, hom_hom_comp, OrderHom.comp_coe, Function.comp_apply]
      change ite _ _ _ = ite _ _ _
      split_ifs with h₁ h₂ h₂
      any_goals rfl
      · exfalso
        exact h₂ (le_of_lt h₁)
      · exfalso
        exact hm a (eq_of_le_of_not_lt h₂ h₁)
    simp [Y, p₁, p₂, ConcreteCategory.hom_ofHom] at h
  · intro h
    exact ConcreteCategory.epi_of_surjective f h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant59c76ae118789d568f9534da89fac5db2cc3e3fa1ed027b544e2863fbb9eded7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant59c76ae118789d568f9534da89fac5db2cc3e3fa1ed027b544e2863fbb9eded7.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ec87477f278bbcc9dac695e1a45c713d4e8185b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
