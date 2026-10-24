# DescentDataAsCoalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09c8172827c50aa5efd1c1f6415641ce76f4857ea7259db936ef3ad5772d02f6",
  "kind": "structure",
  "lexical_name": "DescentDataAsCoalgebra",
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
  "slug": "descentdataascoalgebra--9bd62f1049948cac2ae77a73",
  "source": {
    "blob": "2fadeace558c072af0e29b0335ce458ce2fa09fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variant2180ae6bdb2b2d67f8ddbfca152ed52117e22ea5afa9bd636c4baeb52a4996cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bd62f1049948cac2ae77a7322ae499d1dc24a2fcbe0219fef00e9eae99c16af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variant2180ae6bdb2b2d67f8ddbfca152ed52117e22ea5afa9bd636c4baeb52a4996cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09c8172827c50aa5efd1c1f6415641ce76f4857ea7259db936ef3ad5772d02f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DescentDataAsCoalgebra
    {ι : Type t} {S : C} {X : ι → C} (f : ∀ i, X i ⟶ S) where
  /-- The objects over `X i` for all `i` -/
  obj (i : ι) : (F.obj (.mk (op (X i)))).obj
  /-- The compatibility morphisms. -/
  hom (i₁ i₂ : ι) : obj i₁ ⟶
    (F.map (f i₁).op.toLoc).l.toFunctor.obj
      ((F.map (f i₂).op.toLoc).r.toFunctor.obj (obj i₂))
  counit (i : ι) : hom i i ≫ (F.map (f i).op.toLoc).adj.counit.toNatTrans.app _ = 𝟙 _ := by
    cat_disch
  coassoc (i₁ i₂ i₃ : ι) :
    hom i₁ i₂ ≫ (F.map (f i₁).op.toLoc).l.toFunctor.map
      ((F.map (f i₂).op.toLoc).r.toFunctor.map (hom i₂ i₃)) =
    hom i₁ i₃ ≫
      (F.map (f i₁).op.toLoc).l.toFunctor.map
        ((F.map (f i₂).op.toLoc).adj.unit.toNatTrans.app _) := by cat_disch

namespace DescentDataAsCoalgebra

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
attribute [reassoc (attr := simp)] counit coassoc

section

variable {ι : Type t} {S : C} {X : ι → C} {f : ∀ i, X i ⟶ S}

/-- The type of morphisms in `DescentDataAsCoalgebra`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variant2180ae6bdb2b2d67f8ddbfca152ed52117e22ea5afa9bd636c4baeb52a4996cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variant2180ae6bdb2b2d67f8ddbfca152ed52117e22ea5afa9bd636c4baeb52a4996cb.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fadeace558c072af0e29b0335ce458ce2fa09fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
