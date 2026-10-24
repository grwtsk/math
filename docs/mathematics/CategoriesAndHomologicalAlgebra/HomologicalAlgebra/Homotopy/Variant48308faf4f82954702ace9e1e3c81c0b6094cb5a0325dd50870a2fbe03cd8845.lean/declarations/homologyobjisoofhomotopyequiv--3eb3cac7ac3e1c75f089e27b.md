# homologyObjIsoOfHomotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a191b78d2320078d151cfaabe5f59516ef361b36909592cf4b868a23564ade23",
  "kind": "def",
  "lexical_name": "homologyObjIsoOfHomotopyEquiv",
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
  "slug": "homologyobjisoofhomotopyequiv--3eb3cac7ac3e1c75f089e27b",
  "source": {
    "blob": "19fe5f5dcfb35c38458e3137c3be93b6e0818cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 830,
    "line": 811,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3eb3cac7ac3e1c75f089e27b3a8deffe901b5a42f5b28428d9cfd6770ad4c2ce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a191b78d2320078d151cfaabe5f59516ef361b36909592cf4b868a23564ade23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 811–830.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homologyObjIsoOfHomotopyEquiv (f : HomotopyEquiv C D) (i : ι) :
    (homologyFunctor V c i).obj C ≅ (homologyFunctor V c i).obj D where
  hom := (homologyFunctor V c i).map f.hom
  inv := (homologyFunctor V c i).map f.inv
  hom_inv_id := by
    rw [← Functor.map_comp, homology_map_eq_of_homotopy f.homotopyHomInvId,
      CategoryTheory.Functor.map_id]
  inv_hom_id := by
    rw [← Functor.map_comp, homology_map_eq_of_homotopy f.homotopyInvHomId,
      CategoryTheory.Functor.map_id]
#align homology_obj_iso_of_homotopy_equiv homologyObjIsoOfHomotopyEquiv

end

namespace CategoryTheory

variable {W : Type*} [Category W] [Preadditive W]

/-- An additive functor takes homotopies to homotopies. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean#L811).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19fe5f5dcfb35c38458e3137c3be93b6e0818cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
