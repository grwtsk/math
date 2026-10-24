# isSheafFor_subsieve_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5eea5b42-5499-738a-a6f6-d91d382ffb89",
  "kind": "theorem",
  "lexical_name": "isSheafFor_subsieve_aux",
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
  "slug": "issheaffor-subsieve-aux--450a08431ec541b5b3417941",
  "source": {
    "blob": "268f9c1f5276189c603b1987bfa1cb0111258b2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 725,
    "line": 701,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:450a08431ec541b5b34179415db5739fbfa9f547606cc05de738e2447ce7eddf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5eea5b42-5499-738a-a6f6-d91d382ffb89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–725.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheafFor_subsieve_aux (P : Cᵒᵖ ⥤ Type w) {S : Sieve X} {R : Presieve X}
    (h : (S : Presieve X) ≤ R) (hS : IsSheafFor P (S : Presieve X))
    (trans : ∀ ⦃Y⦄ ⦃f : Y ⟶ X⦄, R f → IsSeparatedFor P (S.pullback f : Presieve Y)) :
    IsSheafFor P R := by
  rw [← isSeparatedFor_and_exists_isAmalgamation_iff_isSheafFor]
  constructor
  · intro x t₁ t₂ ht₁ ht₂
    exact
      hS.isSeparatedFor _ _ _ (isAmalgamation_restrict h x t₁ ht₁)
        (isAmalgamation_restrict h x t₂ ht₂)
  · intro x hx
    use hS.amalgamate _ (hx.restrict h)
    intro W j hj
    apply (trans hj).ext
    intro Y f hf
    rw [← FunctorToTypes.map_comp_apply, ← op_comp, hS.valid_glue (hx.restrict h) _ hf,
      FamilyOfElements.restrict, ← hx (𝟙 _) f (h _ hf) _ (id_comp _)]
    simp
#align category_theory.presieve.is_sheaf_for_subsieve_aux CategoryTheory.Presieve.isSheafFor_subsieve_aux

/--
If `P` is a sheaf for every pullback of the sieve `S`, then `P` is a sheaf for any presieve which
contains `S`.
This is closely related to [Elephant] C2.1.6.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `268f9c1f5276189c603b1987bfa1cb0111258b2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
