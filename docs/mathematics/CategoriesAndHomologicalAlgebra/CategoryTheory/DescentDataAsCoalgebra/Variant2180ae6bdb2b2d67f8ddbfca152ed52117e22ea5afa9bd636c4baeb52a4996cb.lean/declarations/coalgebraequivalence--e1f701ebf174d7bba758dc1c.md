# coalgebraEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:509b009250d80606ee0bef50aa690786218444d7071820f3c36f700443ca5c98",
  "kind": "def",
  "lexical_name": "coalgebraEquivalence",
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
  "slug": "coalgebraequivalence--e1f701ebf174d7bba758dc1c",
  "source": {
    "blob": "2fadeace558c072af0e29b0335ce458ce2fa09fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variant2180ae6bdb2b2d67f8ddbfca152ed52117e22ea5afa9bd636c4baeb52a4996cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1f701ebf174d7bba758dc1cca6a56a7e5f75d39e52549dfe499fd2bd6faba3f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variant2180ae6bdb2b2d67f8ddbfca152ed52117e22ea5afa9bd636c4baeb52a4996cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:509b009250d80606ee0bef50aa690786218444d7071820f3c36f700443ca5c98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coalgebraEquivalence (ι : Type*) [Unique ι] {X S : C} (f : X ⟶ S) :
    F.DescentDataAsCoalgebra (fun (_ : ι) ↦ f) ≌
    (Adjunction.ofCat (F.map f.op.toLoc).adj).toComonad.Coalgebra where
  functor.obj D :=
    { A := D.obj default
      a := D.hom default default }
  functor.map φ := { f := φ.hom default }
  inverse.obj A :=
    { obj _ := A.A
      hom _ _ := A.a
      counit _ := A.counit
      coassoc _ _ _ := A.coassoc.symm }
  inverse.map φ :=
    { hom i := φ.f
      comm _ _ := φ.h }
  unitIso :=
    NatIso.ofComponents
      (fun D ↦ isoMk (fun i ↦ eqToIso (congr_arg D.obj (by subsingleton)))
        (fun i₁ i₂ ↦ by
          obtain rfl := Subsingleton.elim i₁ default
          obtain rfl := Subsingleton.elim i₂ default
          simp)) (fun {D₁ D₂} α ↦ by
      ext i
      obtain rfl := Subsingleton.elim i default
      simp)
  counitIso := Iso.refl _

end DescentDataAsCoalgebra

variable (F) in
/-- The functor `(F.obj (.mk (op S))).obj ⥤ F.DescentDataAsCoalgebra f`
when `f i : X i ⟶ S` is a family of morphisms. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variant2180ae6bdb2b2d67f8ddbfca152ed52117e22ea5afa9bd636c4baeb52a4996cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variant2180ae6bdb2b2d67f8ddbfca152ed52117e22ea5afa9bd636c4baeb52a4996cb.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fadeace558c072af0e29b0335ce458ce2fa09fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
