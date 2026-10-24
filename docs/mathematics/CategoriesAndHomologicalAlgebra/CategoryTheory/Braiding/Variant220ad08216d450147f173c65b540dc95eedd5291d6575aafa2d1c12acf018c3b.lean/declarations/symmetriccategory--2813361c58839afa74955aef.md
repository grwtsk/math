# symmetricCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:344835146ba42e0140e0a04adad12993b913f8c28c8d21b105a1ed0b041aec73",
  "kind": "instance",
  "lexical_name": "symmetricCategory",
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
  "slug": "symmetriccategory--2813361c58839afa74955aef",
  "source": {
    "blob": "66ebc79848cfe35f6dd1e41ab2f9a99f3b46dcd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2813361c58839afa74955aefe3a262c6a6f8ca8ce6d8712ffcabd941d72e3621",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:344835146ba42e0140e0a04adad12993b913f8c28c8d21b105a1ed0b041aec73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance symmetricCategory [SymmetricCategory C] :
    SymmetricCategory (GradedObject I C) where
  symmetry _ _ := Monoidal.symmetry _ _

/-!
The braided/symmetric monoidal category structure on `GradedObject ℕ C` can
be inferred from the assumptions `[HasFiniteCoproducts C]`,
`[∀ (X : C), PreservesFiniteCoproducts ((curriedTensor C).obj X)]` and
`[∀ (X : C), PreservesFiniteCoproducts ((curriedTensor C).flip.obj X)]`.
This requires importing `Mathlib/CategoryTheory/Limits/Preserves/Finite.lean`.
-/

end Instances

end GradedObject

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ebc79848cfe35f6dd1e41ab2f9a99f3b46dcd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
