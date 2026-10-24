# map_final

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bd72ccfaef910cbc9fe02d809f342583096001a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:879ba3cf-945b-a901-fd91-86a10d3aa052",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29807ac1-b2e4-ca24-5b71-4f338e2774b3",
  "kind": "lemma",
  "lexical_name": "map_final",
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
  "slug": "map-final--bf4eb87fd4570fb7a5646096",
  "source": {
    "blob": "4bd72ccfaef910cbc9fe02d809f342583096001a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf4eb87fd4570fb7a5646096ff5e62b857859ac5f0d3c76a659b0e0bf25e74a3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29807ac1-b2e4-ca24-5b71-4f338e2774b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_final {A : Type u₁} [Category.{v₁} A] {B : Type u₂} [Category.{v₂} B] {T : Type u₃}
    [Category.{v₃} T] {L : A ⥤ T} {R : B ⥤ T} {A' : Type u₄} [Category.{v₄} A'] {B' : Type u₅}
    [Category.{v₅} B'] {T' : Type u₆} [Category.{v₆} T'] {L' : A' ⥤ T'} {R' : B' ⥤ T'} {F : A ⥤ A'}
    {G : B ⥤ B'} {H : T ⥤ T'} (iL : F ⋙ L' ≅ L ⋙ H) (iR : G ⋙ R' ≅ R ⋙ H) [IsFiltered B]
    [R.Final] [R'.Final] [F.Final] [G.Final] :
    (Comma.map iL.hom iR.inv).Final := ⟨fun ⟨i₂, j₂, u₂⟩ => by
  haveI := final_of_natIso iR
  rw [isConnected_iff_of_equivalence (StructuredArrow.commaMapEquivalence iL.hom iR.inv _)]
  have : StructuredArrow.map₂ u₂ iR.hom ≅ StructuredArrow.post j₂ G R' ⋙
      StructuredArrow.map₂ (G := 𝟭 _) (F := 𝟭 _) (R' := R ⋙ H) u₂ iR.hom ⋙
      StructuredArrow.pre _ R H :=
    eqToIso (by
      congr
      · simp
      · ext; simp) ≪≫
    (StructuredArrow.map₂CompMap₂Iso _ _ _ _).symm ≪≫
    isoWhiskerLeft _ ((StructuredArrow.map₂CompMap₂Iso _ _ _ _).symm ≪≫
      isoWhiskerLeft _ (StructuredArrow.preIsoMap₂ _ _ _).symm) ≪≫
    isoWhiskerRight (StructuredArrow.postIsoMap₂ j₂ G R').symm _
  haveI := final_of_natIso this.symm
  rw [IsIso.Iso.inv_inv]
  infer_instance⟩

section Filtered

variable {A : Type u₁} [Category.{v₁} A]
variable {B : Type u₂} [Category.{v₂} B]
variable {T : Type u₃} [Category.{v₃} T]
variable (L : A ⥤ T) (R : B ⥤ T)

attribute [local instance] map_final in
/-- Let `A` and `B` be filtered categories, `R : B ⥤ T` be final and `L : A ⥤ T`. Then, the
comma category `Comma L R` is filtered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd72ccfaef910cbc9fe02d809f342583096001a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
