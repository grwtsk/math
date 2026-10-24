# _root_.CategoryTheory.Functor.toCostructuredArrowIsoToCostructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b534507c46e1ccae59d47d22517e2809a253ef857dab6f6380e9522f8afb534",
  "kind": "def",
  "lexical_name": "_root_.CategoryTheory.Functor.toCostructuredArrowIsoToCostructuredArrow",
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
  "slug": "root-categorytheory-functor-tocostructuredarrowisotocostructuredarrow--9e468b474e616e69182a58ac",
  "source": {
    "blob": "9059ea7e342be3a22f86ef54e55d24db389f0f46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e468b474e616e69182a58ac7c057534fe2cd51a79b4cd27990b089b3ba30fc9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b534507c46e1ccae59d47d22517e2809a253ef857dab6f6380e9522f8afb534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.CategoryTheory.Functor.toCostructuredArrowIsoToCostructuredArrow (G : J ⥤ K)
    (F : K ⥤ C) (X : C) (f : (Y : J) → F.obj (G.obj Y) ⟶ X)
    (h : ∀ {Y Z : J} (g : Y ⟶ Z), F.map (G.map g) ≫ f Z = f Y) :
    G.toCostructuredArrow F X f h ≅
      (Cocone.mk X ⟨f, by simp [h]⟩).toCostructuredArrow ⋙ CostructuredArrow.pre _ _ _ :=
  Iso.refl _

/-- Interpreting the legs of a cocone as a costructured arrow and then forgetting the arrow again
    does nothing. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9059ea7e342be3a22f86ef54e55d24db389f0f46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
