# ofComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf0027c2c83c0fec72a7d29aca7e7099eca2cb59917ea8a5a70a16652d711d1c",
  "kind": "def",
  "lexical_name": "ofComponents",
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
  "slug": "ofcomponents--42701aebe99d525b3c17416f",
  "source": {
    "blob": "8b894ebb8af49d377aeea095a32adc20bcee0ee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant993bd907607ecb6572350fb24ab640a3b5c95fc126bd84c5031d2e50d4730786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42701aebe99d525b3c17416f65d850cfe84f9d310804e7b7baa2ba9d5d81ed53",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant993bd907607ecb6572350fb24ab640a3b5c95fc126bd84c5031d2e50d4730786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf0027c2c83c0fec72a7d29aca7e7099eca2cb59917ea8a5a70a16652d711d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofComponents (app : ∀ X : C, F.obj X ≅ G.obj X)
    (naturality : ∀ {X Y : C} (f : X ⟶ Y),
      F.map f ≫ (app Y).hom = (app X).hom ≫ G.map f := by cat_disch) :
    F ≅ G where
  hom := { app := fun X => (app X).hom }
  inv :=
    { app := fun X => (app X).inv,
      naturality := fun X Y f => by
        have h := congr_arg (fun f => (app X).inv ≫ f ≫ (app Y).inv) (naturality f).symm
        simp only [Iso.inv_hom_id_assoc, Iso.hom_inv_id, assoc, comp_id] at h
        exact h }

@[to_dual (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant993bd907607ecb6572350fb24ab640a3b5c95fc126bd84c5031d2e50d4730786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant993bd907607ecb6572350fb24ab640a3b5c95fc126bd84c5031d2e50d4730786.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b894ebb8af49d377aeea095a32adc20bcee0ee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
