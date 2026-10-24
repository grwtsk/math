# d_squared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0d9114e-364c-493c-8ee0-720cda2cb2b1",
  "kind": "theorem",
  "lexical_name": "d_squared",
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
  "slug": "d-squared--a441eacd9d91f8461c8855b9",
  "source": {
    "blob": "5161b2a05fc15d5ccd281e394a4df7a6ab898eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant60a04a9dfbc207073485c5e674c2135108966be6e3e21d9caabfa52624c0bcca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a441eacd9d91f8461c8855b94b6e07d4e197cfdd30d1ed2b3c6a236f3c5a25b2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant60a04a9dfbc207073485c5e674c2135108966be6e3e21d9caabfa52624c0bcca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0d9114e-364c-493c-8ee0-720cda2cb2b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d_squared (n : ℕ) : objD X (n + 1) ≫ objD X n = 0 := by
  -- It's a pity we need to do a case split here;
    -- after the first rw the proofs are almost identical
  rcases n with _ | n <;> dsimp [objD]
  · rw [Subobject.factorThru_arrow_assoc, Category.assoc, ← Fin.castSucc_zero,
      ← X.δ_comp_δ_assoc (Fin.zero_le (0 : Fin 2)),
      ← factorThru_arrow _ _ (finset_inf_arrow_factors Finset.univ _ (0 : Fin 2) (by simp)),
      Category.assoc, kernelSubobject_arrow_comp_assoc, zero_comp, comp_zero]
  · rw [factorThru_right, factorThru_eq_zero, factorThru_arrow_assoc, Category.assoc,
      ← Fin.castSucc_zero,
      ← X.δ_comp_δ (Fin.zero_le (0 : Fin (n + 3))),
      ← factorThru_arrow _ _ (finset_inf_arrow_factors Finset.univ _ (0 : Fin (n + 3)) (by simp)),
      Category.assoc, kernelSubobject_arrow_comp_assoc, zero_comp, comp_zero]

/-- The normalized Moore complex functor, on objects.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant60a04a9dfbc207073485c5e674c2135108966be6e3e21d9caabfa52624c0bcca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant60a04a9dfbc207073485c5e674c2135108966be6e3e21d9caabfa52624c0bcca.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5161b2a05fc15d5ccd281e394a4df7a6ab898eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
