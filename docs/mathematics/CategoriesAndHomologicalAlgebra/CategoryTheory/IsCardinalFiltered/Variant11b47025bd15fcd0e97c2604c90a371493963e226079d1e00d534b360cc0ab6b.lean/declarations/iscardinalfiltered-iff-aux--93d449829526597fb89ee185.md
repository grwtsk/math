# isCardinalFiltered_iff_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:180e8a99-2f9b-3e96-5f12-c12d1be83629",
  "kind": "lemma",
  "lexical_name": "isCardinalFiltered_iff_aux₂",
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
  "slug": "iscardinalfiltered-iff-aux--93d449829526597fb89ee185",
  "source": {
    "blob": "f4c848d03449cb7400ec9eb4ac29ff3639a7d061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 290,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93d449829526597fb89ee185ea16afcb317c8b7c3b1132aa8980ea57dae281a2",
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

Occurrence: `result:180e8a99-2f9b-3e96-5f12-c12d1be83629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalFiltered_iff_aux₂ {ι : Type w} {j : ι → J} {k : J}
    (f₁ f₂ : ∀ i, j i ⟶ k) (hι : HasCardinalLT ι κ) :
    ∃ (l : J) (a : k ⟶ l), ∀ i, f₁ i ≫ a = f₂ i ≫ a := by
  have (i : ι) : ∃ (l : J) (p : k ⟶ l), f₁ i ≫ p = f₂ i ≫ p := by
    obtain ⟨l, a, b, hl⟩ := h₂ (Sum.elim (fun (_ : PUnit.{w + 1}) ↦ f₁ i)
      (fun (_ : PUnit.{w + 1}) ↦ f₂ i))
        (hasCardinalLT_of_finite _ _ (Cardinal.IsRegular.aleph0_le Fact.out))
    exact ⟨l, a, (hl (Sum.inl .unit)).trans (hl (Sum.inr .unit)).symm⟩
  choose l p hp using this
  obtain ⟨l, a, b, h⟩ := isCardinalFiltered_iff_aux₁ h₁ h₂ p hι
  exact ⟨l, b, fun i ↦ by grind⟩

set_option backward.defeqAttrib.useBackward true in
variable (J κ) in
/-- A category is `κ`-filtered iff
1. any family of objects of cardinality `< κ` admits a map towards a common object, and
2. any family of morphisms `j ⟶ k` of cardinality `< κ` (between *fixed* objects
   `j` and `k`) can be coequalized by a suitable morphism `k ⟶ l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant11b47025bd15fcd0e97c2604c90a371493963e226079d1e00d534b360cc0ab6b.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c848d03449cb7400ec9eb4ac29ff3639a7d061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
