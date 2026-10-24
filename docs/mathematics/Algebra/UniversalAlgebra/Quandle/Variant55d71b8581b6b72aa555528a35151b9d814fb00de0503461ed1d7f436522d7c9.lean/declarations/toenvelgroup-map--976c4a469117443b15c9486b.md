# toEnvelGroup.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81b5755e84cbab6d5dbd016fef9d45de0bcc88943b3f0d61974bf0068f394c06",
  "kind": "def",
  "lexical_name": "toEnvelGroup.map",
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
  "slug": "toenvelgroup-map--976c4a469117443b15c9486b",
  "source": {
    "blob": "dbb43d4c67b9a5b616eea52e6eadde341d65e357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 776,
    "line": 742,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant55d71b8581b6b72aa555528a35151b9d814fb00de0503461ed1d7f436522d7c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:976c4a469117443b15c9486bb8dc72007dba0530a376dd4f8e66b7648e6ac391",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Quandle/Variant55d71b8581b6b72aa555528a35151b9d814fb00de0503461ed1d7f436522d7c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81b5755e84cbab6d5dbd016fef9d45de0bcc88943b3f0d61974bf0068f394c06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–776.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toEnvelGroup.map {R : Type*} [Rack R] {G : Type*} [Group G] :
    (R →◃ Quandle.Conj G) ≃ (EnvelGroup R →* G)
    where
  toFun f :=
    { toFun := fun x =>
        Quotient.liftOn x (toEnvelGroup.mapAux f) fun a b ⟨hab⟩ =>
          toEnvelGroup.mapAux.well_def f hab
      map_one' := by
        change Quotient.liftOn ⟦Rack.PreEnvelGroup.unit⟧ (toEnvelGroup.mapAux f) _ = 1
        simp only [Quotient.lift_mk, mapAux]
      map_mul' := fun x y =>
        Quotient.inductionOn₂ x y fun x y => by
          simp only [toEnvelGroup.mapAux]
          change Quotient.liftOn ⟦mul x y⟧ (toEnvelGroup.mapAux f) _ = _
          simp [toEnvelGroup.mapAux] }
  invFun F := (Quandle.Conj.map F).comp (toEnvelGroup R)
  left_inv f := by ext; rfl
  right_inv F :=
    MonoidHom.ext fun x =>
      Quotient.inductionOn x fun x => by
        induction' x with _ x y ih_x ih_y x ih_x
        · exact F.map_one.symm
        · rfl
        · have hm : ⟦x.mul y⟧ = @Mul.mul (EnvelGroup R) _ ⟦x⟧ ⟦y⟧ := rfl
          simp only [MonoidHom.coe_mk, OneHom.coe_mk, Quotient.lift_mk]
          suffices ∀ x y, F (Mul.mul x y) = F (x) * F (y) by
            simp_all only [MonoidHom.coe_mk, OneHom.coe_mk, Quotient.lift_mk, hm]
            rw [← ih_x, ← ih_y, mapAux]
          exact F.map_mul
        · have hm : ⟦x.inv⟧ = @Inv.inv (EnvelGroup R) _ ⟦x⟧ := rfl
          rw [hm, F.map_inv, MonoidHom.map_inv, ih_x]
#align rack.to_envel_group.map Rack.toEnvelGroup.map

/-- Given a homomorphism from a rack to a group, it factors through the enveloping group.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Quandle/Variant55d71b8581b6b72aa555528a35151b9d814fb00de0503461ed1d7f436522d7c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant55d71b8581b6b72aa555528a35151b9d814fb00de0503461ed1d7f436522d7c9.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbb43d4c67b9a5b616eea52e6eadde341d65e357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
