# natTransIntoForgetCompFiberwiseColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba8080256b26a61e54a4c056f6494161a42541642e62de21321b9eaba74722cd",
  "kind": "def",
  "lexical_name": "natTransIntoForgetCompFiberwiseColimit",
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
  "slug": "nattransintoforgetcompfiberwisecolimit--073668bf0d035a57cb6bcee6",
  "source": {
    "blob": "8b7fce224c7590c982ee74210221e8726437cdea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:073668bf0d035a57cb6bcee6f041fddcf114cfe1d15f8230c9a4d8fff4f0b47b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba8080256b26a61e54a4c056f6494161a42541642e62de21321b9eaba74722cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def natTransIntoForgetCompFiberwiseColimit :
    G ⟶ Grothendieck.forget F ⋙ fiberwiseColimit G where
  app X := colimit.ι (Grothendieck.ι F X.base ⋙ G) X.fiber
  naturality _ _ f := by
    simp only [Functor.comp_obj, Grothendieck.forget_obj, fiberwiseColimit_obj, Functor.comp_map,
      Grothendieck.forget_map, fiberwiseColimit_map, ι_colimMap_assoc, Grothendieck.ι_obj,
      NatTrans.comp_app, whiskerRight_app, Functor.associator_hom_app, Category.comp_id,
      colimit.ι_pre]
    rw [← colimit.w (Grothendieck.ι F _ ⋙ G) f.fiber]
    simp only [← Category.assoc, Functor.comp_obj, Functor.comp_map, ← G.map_comp]
    congr 2
    apply Grothendieck.ext <;> simp

variable {G} in
/-- A cocone on a functor `G : Grothendieck F ⥤ H` induces a cocone on the fiberwise colimit
on `G`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b7fce224c7590c982ee74210221e8726437cdea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
