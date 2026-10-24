# Grothendieck.structuredArrowToStructuredArrowPre

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:882a4d93ddffe81428897cdcc7f8aa88dbd6ae96e7b75089dc70940cf099d2c1",
  "kind": "def",
  "lexical_name": "Grothendieck.structuredArrowToStructuredArrowPre",
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
  "slug": "grothendieck-structuredarrowtostructuredarrowpre--fcbfab8e8047933afb08a945",
  "source": {
    "blob": "82c325140d9282aafbf2b648e09f1b7bb01bbfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1024,
    "line": 1015,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcbfab8e8047933afb08a945e5ba0c243c4976834e99cf32eb4343ccc957deff",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:882a4d93ddffe81428897cdcc7f8aa88dbd6ae96e7b75089dc70940cf099d2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1015–1024.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Grothendieck.structuredArrowToStructuredArrowPre (d : D) (f : F.obj d) :
    StructuredArrow d G ⥤q StructuredArrow ⟨d, f⟩ (pre F G) where
  obj := fun X => StructuredArrow.mk (Y := ⟨X.right, (F.map X.hom).obj f⟩)
    (Grothendieck.Hom.mk (by exact X.hom) (by dsimp; exact 𝟙 _))
  map := fun g => StructuredArrow.homMk
    (Grothendieck.Hom.mk (by exact g.right)
      (eqToHom (by dsimp; rw [← StructuredArrow.w g, map_comp, Cat.comp_obj])))
    (by simp only [StructuredArrow.mk_right]
        apply Grothendieck.ext <;> simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean#L1015).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c325140d9282aafbf2b648e09f1b7bb01bbfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
