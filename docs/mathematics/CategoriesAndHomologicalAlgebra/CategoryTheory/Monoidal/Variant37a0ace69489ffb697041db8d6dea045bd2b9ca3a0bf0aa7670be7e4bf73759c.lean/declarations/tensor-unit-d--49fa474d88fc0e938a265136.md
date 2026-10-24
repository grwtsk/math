# tensor_unit_d₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f571090-1738-0899-4d23-acf521e8366f",
  "kind": "lemma",
  "lexical_name": "tensor_unit_d₂",
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
  "slug": "tensor-unit-d--49fa474d88fc0e938a265136",
  "source": {
    "blob": "d4e88aadaaf329e3857e555bbc9c21c1a58eb842",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49fa474d88fc0e938a2651369c94cc28b5fc8df85aa3f44355b4962594cdf7ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f571090-1738-0899-4d23-acf521e8366f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensor_unit_d₂ (i₁ i₂ j : I) :
    mapBifunctor.d₂ K (tensorUnit C c) (curriedTensor C) c i₁ i₂ j = 0 := by
  by_cases h₁ : c.Rel i₂ (c.next i₂)
  · by_cases h₂ : ComplexShape.π c c c (i₁, c.next i₂) = j
    · rw [mapBifunctor.d₂_eq _ _ _ _ _ h₁ _ h₂, single_obj_d, Functor.map_zero,
        zero_comp, smul_zero]
    · rw [mapBifunctor.d₂_eq_zero' _ _ _ _ _ h₁ _ h₂]
  · rw [mapBifunctor.d₂_eq_zero _ _ _ _ _ _ _ h₁]

end

end

section Unitor

variable (K : HomologicalComplex C c) [DecidableEq I]

section LeftUnitor

variable [∀ X₂, PreservesColimit (Functor.empty.{0} C) ((curriedTensor C).flip.obj X₂)]

/-- Auxiliary definition for `leftUnitor`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e88aadaaf329e3857e555bbc9c21c1a58eb842` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
