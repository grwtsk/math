# enrichedFunctorTypeEquivFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73deadd35b62535fecbcd7741653ee245c76185ad68d94ba2779737206aa547b",
  "kind": "def",
  "lexical_name": "enrichedFunctorTypeEquivFunctor",
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
  "slug": "enrichedfunctortypeequivfunctor--95d68292e1b1714eb2dfab84",
  "source": {
    "blob": "95bf36525c56d82731fd31a6c64d4acc5d28b001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 429,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95d68292e1b1714eb2dfab841bcdb310f14fe4cc72e89c6adbb87c289567967f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73deadd35b62535fecbcd7741653ee245c76185ad68d94ba2779737206aa547b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def enrichedFunctorTypeEquivFunctor {C : Type u₁} [𝒞 : EnrichedCategory (Type v) C] {D : Type u₂}
    [𝒟 : EnrichedCategory (Type v) D] : EnrichedFunctor (Type v) C D ≃ C ⥤ D where
  toFun F :=
    { obj := fun X => F.obj X
      map := fun f => F.map _ _ f
      map_id := fun X => congr_fun (F.map_id X) PUnit.unit
      map_comp := fun f g => congr_fun (F.map_comp _ _ _) ⟨f, g⟩ }
  invFun F :=
    { obj := fun X => F.obj X
      map := fun _ _ f => F.map f
      map_id := fun X => by ext ⟨⟩; exact F.map_id X
      map_comp := fun X Y Z => by ext ⟨f, g⟩; exact F.map_comp f g }
  left_inv _ := rfl
  right_inv _ := rfl

/-- We verify that the presheaf representing natural transformations
between `Type v`-enriched functors is actually represented by
the usual type of natural transformations!
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95bf36525c56d82731fd31a6c64d4acc5d28b001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
