# liftRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c7be395ab6d92983e55b79ecfff2cc09a6697e2032176cfd18867d99ce23111",
  "kind": "def",
  "lexical_name": "liftRingHom",
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
  "slug": "liftringhom--c71700c717eae0ba94426f01",
  "source": {
    "blob": "596c7e80795a972468850fe67211c18a087215e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 641,
    "path": "GRWTSK/Algebra/Ring/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c71700c717eae0ba94426f01e2cc89712da6fa23577ca9a7af255bf6edf12007",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c7be395ab6d92983e55b79ecfff2cc09a6697e2032176cfd18867d99ce23111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftRingHom :
    { f : ∀ {i}, A i →+ R //
        f GradedMonoid.GOne.one = 1 ∧
          ∀ {i j} (ai : A i) (aj : A j), f (GradedMonoid.GMul.mul ai aj) = f ai * f aj } ≃
      ((⨁ i, A i) →+* R) where
  toFun f := toSemiring (fun _ => f.1) f.2.1 f.2.2
  invFun F :=
    ⟨by intro i; exact (F : (⨁ i, A i) →+ R).comp (of _ i),
      by
      simp only [AddMonoidHom.comp_apply]
      rw [← F.map_one]
      rfl,
      by
      intros i j ai aj
      simp [AddMonoidHom.comp_apply]
      rw [← F.map_mul (of A i ai), of_mul_of ai]⟩
  left_inv f := by
    ext xi xv
    exact toAddMonoid_of (fun _ => f.1) xi xv
  right_inv F := by
    apply RingHom.coe_addMonoidHom_injective
    refine DirectSum.addHom_ext' (fun xi ↦ AddMonoidHom.ext (fun xv ↦ ?_))
    simp only [RingHom.coe_addMonoidHom_mk, DirectSum.toAddMonoid_of, AddMonoidHom.mk_coe,
      AddMonoidHom.comp_apply, toSemiring_coe_addMonoidHom]
#align direct_sum.lift_ring_hom DirectSum.liftRingHom

end ToSemiring

end DirectSum

/-! ### Concrete instances -/


section Uniform

variable (ι)

/-- A direct sum of copies of a `Semiring` inherits the multiplication structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596c7e80795a972468850fe67211c18a087215e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
