# fullyFaithfulForget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:124636714311264311dda2f33d5db8bb1340ddc284f5b7b48dc9bb64daeead4a",
  "kind": "def",
  "lexical_name": "fullyFaithfulForget",
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
  "slug": "fullyfaithfulforget--ab6583d76799d0c93c3cbbff",
  "source": {
    "blob": "9c51dc420e2fde22614285fbab50ce82d1fb4c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 500,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9bd15a21c11863eec791c48c2b00c99e4fb0a694174c4a411e30d769f9950ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab6583d76799d0c93c3cbbff45706b338fec071e054a0badbcf412df0b4e143d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9bd15a21c11863eec791c48c2b00c99e4fb0a694174c4a411e30d769f9950ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:124636714311264311dda2f33d5db8bb1340ddc284f5b7b48dc9bb64daeead4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fullyFaithfulForget : (forget (C := C) (D := D)).FullyFaithful :=
  fullyFaithfulInducedFunctor _

section

variable {F G : LaxBraidedFunctor C D} (e : ∀ X, F.obj X ≅ G.obj X)
    (naturality : ∀ {X Y : C} (f : X ⟶ Y), F.map f ≫ (e Y).hom = (e X).hom ≫ G.map f := by
      cat_disch)
    (unit : ε F.toFunctor ≫ (e (𝟙_ C)).hom = ε G.toFunctor := by cat_disch)
    (tensor : ∀ X Y, μ F.toFunctor X Y ≫ (e (X ⊗ Y)).hom =
      ((e X).hom ⊗ₘ (e Y).hom) ≫ μ G.toFunctor X Y := by cat_disch)

set_option backward.privateInPublic true in
/-- Constructor for isomorphisms between lax braided functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9bd15a21c11863eec791c48c2b00c99e4fb0a694174c4a411e30d769f9950ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9bd15a21c11863eec791c48c2b00c99e4fb0a694174c4a411e30d769f9950ae.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c51dc420e2fde22614285fbab50ce82d1fb4c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
