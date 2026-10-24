# bicone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b6265b5a6c97a0f0e583f77e85c71ab853452a03409e5a57ce19dbab37ad0d7",
  "kind": "def",
  "lexical_name": "bicone",
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
  "slug": "bicone--2588ebfce2aadc7b04303033",
  "source": {
    "blob": "917ae99f00c8a25fc23461368dd823b3f3c63ccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6d0da4aa9f697c1617a566c8c782f088efe51dade9a3f8259c0caa5f6e029844.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2588ebfce2aadc7b04303033606973028566d663f23f2fdeb7414856e3626e6a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6d0da4aa9f697c1617a566c8c782f088efe51dade9a3f8259c0caa5f6e029844.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b6265b5a6c97a0f0e583f77e85c71ab853452a03409e5a57ce19dbab37ad0d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bicone [HasFiniteBiproducts C] {J : Type} [Finite J] (F : J → Karoubi C) : Bicone F where
  pt :=
    { X := biproduct fun j => (F j).X
      p := biproduct.map fun j => (F j).p
      idem := by
        ext
        simp only [assoc, biproduct.map_π, biproduct.map_π_assoc, idem] }
  π j :=
    { f := (biproduct.map fun j => (F j).p) ≫ Bicone.π _ j
      comm := by
        simp only [assoc, biproduct.bicone_π, biproduct.map_π, biproduct.map_π_assoc, (F j).idem] }
  ι j :=
    { f := biproduct.ι (fun j => (F j).X) j ≫ biproduct.map fun j => (F j).p
      comm := by simp only [biproduct.ι_map, assoc, idem_assoc] }
  ι_π j j' := by
    split_ifs with h
    · subst h
      simp only [biproduct.ι_map, biproduct.bicone_π, biproduct.map_π, eqToHom_refl,
        id_f, hom_ext_iff, comp_f, assoc, bicone_ι_π_self_assoc, idem]
    · dsimp
      simp only [biproduct.ι_map, biproduct.map_π, hom_ext_iff, comp_f,
        assoc, biproduct.ι_π_ne_assoc _ h, zero_comp, comp_zero, instZero_zero]

end Biproducts

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6d0da4aa9f697c1617a566c8c782f088efe51dade9a3f8259c0caa5f6e029844.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6d0da4aa9f697c1617a566c8c782f088efe51dade9a3f8259c0caa5f6e029844.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `917ae99f00c8a25fc23461368dd823b3f3c63ccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
