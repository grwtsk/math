# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:746f05cd965548a4cf150be111c650e4a02157116797230670b2d19240fd4956",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ca5619ec07a5bc33e6d956a5",
  "source": {
    "blob": "6cb20a0d6e20d3e0d32d1a074bab30e1b1693cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca5619ec07a5bc33e6d956a5613eca9d3e2d4de69b7e03e4dd3b45b24089badc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:746f05cd965548a4cf150be111c650e4a02157116797230670b2d19240fd4956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ((shiftFunctor₂ C y).obj K).HasTotal (up ℤ) := fun n =>
  hasCoproduct_of_equiv_of_iso (K.toGradedObject.mapObjFun (π (up ℤ) (up ℤ) (up ℤ)) (n + y)) _
    { toFun := fun ⟨⟨a, b⟩, h⟩ => ⟨⟨a, b + y⟩, by
        simp only [Set.mem_preimage, instTotalComplexShape_π, Set.mem_singleton_iff] at h ⊢
        omega⟩
      invFun := fun ⟨⟨a, b⟩, h⟩ => ⟨(a, b - y), by
        simp only [Set.mem_preimage, instTotalComplexShape_π, Set.mem_singleton_iff] at h ⊢
        omega⟩
      left_inv _ := by simp
      right_inv _ := by simp }
    (fun _ => Iso.refl _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb20a0d6e20d3e0d32d1a074bab30e1b1693cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
