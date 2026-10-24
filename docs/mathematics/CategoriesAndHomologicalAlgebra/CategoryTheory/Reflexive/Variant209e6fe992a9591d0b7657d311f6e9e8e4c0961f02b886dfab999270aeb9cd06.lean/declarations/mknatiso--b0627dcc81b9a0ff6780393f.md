# mkNatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2e35c404946dc26fca3476cc67300ac77fc89145d3a3f20dd6d3a4a0d813907",
  "kind": "def",
  "lexical_name": "mkNatIso",
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
  "slug": "mknatiso--b0627dcc81b9a0ff6780393f",
  "source": {
    "blob": "975fc126816a7cf6bcd130f7bc22490d9e3f9d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 436,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0627dcc81b9a0ff6780393f5c97743932ce76ea8b8e765c7c3fa38a1908e340",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2e35c404946dc26fca3476cc67300ac77fc89145d3a3f20dd6d3a4a0d813907`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNatIso (e₀ : F.obj zero ≅ G.obj zero) (e₁ : F.obj one ≅ G.obj one)
    (h₁ : F.map left ≫ e₀.hom = e₁.hom ≫ G.map left := by cat_disch)
    (h₂ : F.map right ≫ e₀.hom = e₁.hom ≫ G.map right := by cat_disch)
    (h₃ : F.map reflexion ≫ e₁.hom = e₀.hom ≫ G.map reflexion := by cat_disch) :
    F ≅ G where
  hom := mkNatTrans e₀.hom e₁.hom
  inv := mkNatTrans e₀.inv e₁.inv
        (by rw [← cancel_epi e₁.hom, e₁.hom_inv_id_assoc, ← reassoc_of% h₁, e₀.hom_inv_id,
            Category.comp_id])
        (by rw [← cancel_epi e₁.hom, e₁.hom_inv_id_assoc, ← reassoc_of% h₂, e₀.hom_inv_id,
            Category.comp_id])
        (by rw [← cancel_epi e₀.hom, e₀.hom_inv_id_assoc, ← reassoc_of% h₃, e₁.hom_inv_id,
            Category.comp_id])
  hom_inv_id := by ext x; cases x <;> simp
  inv_hom_id := by ext x; cases x <;> simp

variable (F)

/-- Every functor out of `WalkingReflexivePair` is isomorphic to the `reflexivePair` given by
its components -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975fc126816a7cf6bcd130f7bc22490d9e3f9d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
