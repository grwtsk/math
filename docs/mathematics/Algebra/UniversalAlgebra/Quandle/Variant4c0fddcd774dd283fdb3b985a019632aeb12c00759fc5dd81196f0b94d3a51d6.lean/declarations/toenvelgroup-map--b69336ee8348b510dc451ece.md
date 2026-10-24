# toEnvelGroup.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f21c5b52f1ade44e79272ffcf02df52695f0081baef78adee2ddba1210e07ff7",
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
  "slug": "toenvelgroup-map--b69336ee8348b510dc451ece",
  "source": {
    "blob": "7d2040e1e28fe8cd08490a2082d897089148780f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 750,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b69336ee8348b510dc451ecef12228806932e2f8526b7972bd90455ab64e9bd7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f21c5b52f1ade44e79272ffcf02df52695f0081baef78adee2ddba1210e07ff7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–784.

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

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d2040e1e28fe8cd08490a2082d897089148780f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
