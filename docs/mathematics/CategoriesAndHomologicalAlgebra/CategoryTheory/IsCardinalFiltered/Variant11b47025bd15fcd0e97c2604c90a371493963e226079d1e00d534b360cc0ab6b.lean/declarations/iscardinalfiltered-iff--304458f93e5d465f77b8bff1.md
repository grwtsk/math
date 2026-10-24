# isCardinalFiltered_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d1c0584-2801-5ebb-5f9c-4a17316c9c23",
  "kind": "lemma",
  "lexical_name": "isCardinalFiltered_iff'",
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
  "slug": "iscardinalfiltered-iff--304458f93e5d465f77b8bff1",
  "source": {
    "blob": "f4c848d03449cb7400ec9eb4ac29ff3639a7d061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 330,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:304458f93e5d465f77b8bff12cd3391a3ba4158ab5b5651b6c0a7006a86c81c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d1c0584-2801-5ebb-5f9c-4a17316c9c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalFiltered_iff' :
    IsCardinalFiltered J κ ↔
      (∀ ⦃ι : Type w⦄ (j : ι → J) (_ : HasCardinalLT ι κ),
        ∃ (k : J), ∀ (i : ι), Nonempty (j i ⟶ k)) ∧
      ∀ ⦃ι : Type w⦄ ⦃j k : J⦄ (f : ι → (j ⟶ k)) (_ : HasCardinalLT ι κ) (_ : Nonempty ι),
        ∃ (l : J) (a : k ⟶ l) (b : j ⟶ l), ∀ (i : ι), f i ≫ a = b := by
  rw [isCardinalFiltered_iff]
  refine ⟨fun h ↦ ⟨h.1, by tauto⟩, fun ⟨h₁, h₂⟩ ↦ ⟨h₁, fun ι j k f hι ↦ ?_⟩⟩
  by_cases hι' : Nonempty ι
  · exact h₂ f hι hι'
  · obtain ⟨l, hl⟩ := h₁ (fun (x : ULift.{w} (Fin 2)) ↦ match x with
      | ULift.up 0 => j
      | ULift.up 1 => k)
      (hasCardinalLT_of_finite _ _ (Cardinal.IsRegular.aleph0_le Fact.out))
    exact ⟨l, (hl ⟨1⟩).some, (hl ⟨0⟩).some, by tauto⟩

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c848d03449cb7400ec9eb4ac29ff3639a7d061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
