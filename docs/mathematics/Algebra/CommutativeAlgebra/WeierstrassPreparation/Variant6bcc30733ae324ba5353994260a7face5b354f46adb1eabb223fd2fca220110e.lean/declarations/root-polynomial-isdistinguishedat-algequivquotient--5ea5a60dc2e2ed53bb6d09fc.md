# _root_.Polynomial.IsDistinguishedAt.algEquivQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cc4cdfe91f8009786513e13a43c5ae7bb7684636579427aa52f2a82c845ed84",
  "kind": "def",
  "lexical_name": "_root_.Polynomial.IsDistinguishedAt.algEquivQuotient",
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
  "slug": "root-polynomial-isdistinguishedat-algequivquotient--5ea5a60dc2e2ed53bb6d09fc",
  "source": {
    "blob": "39591fa44823a1172a5deb70fa1e568723e725e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 458,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant6bcc30733ae324ba5353994260a7face5b354f46adb1eabb223fd2fca220110e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ea5a60dc2e2ed53bb6d09fcc45fb2738db1a14cd8bcc2080f6bb731350d3eab",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant6bcc30733ae324ba5353994260a7face5b354f46adb1eabb223fd2fca220110e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cc4cdfe91f8009786513e13a43c5ae7bb7684636579427aa52f2a82c845ed84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.Polynomial.IsDistinguishedAt.algEquivQuotient :
    (A[X] ⧸ Ideal.span {g}) ≃ₐ[A] A⟦X⟧ ⧸ Ideal.span {(g : A⟦X⟧)} where
  __ := Ideal.quotientMapₐ _ (Polynomial.coeToPowerSeries.algHom A) fun a ha ↦ by
    obtain ⟨b, hb⟩ := Ideal.mem_span_singleton'.1 ha
    simp only [Ideal.mem_comap, Polynomial.coeToPowerSeries.algHom_apply, Algebra.algebraMap_self,
      map_id, id_eq, Ideal.mem_span_singleton']
    exact ⟨b, by simp [← hb]⟩
  invFun := Ideal.Quotient.mk _ ∘ H.isWeierstrassDivisorAt'.mod'
  left_inv f := by
    rcases subsingleton_or_nontrivial A with _ | _
    · have : Subsingleton A[X] := inferInstance
      have : Subsingleton (A[X] ⧸ Ideal.span {g}) := Quot.Subsingleton
      exact Subsingleton.elim _ _
    have hI : I ≠ ⊤ := by
      rintro rfl
      exact not_subsingleton _ ‹IsAdicComplete ⊤ A›.toIsHausdorff.subsingleton
    have := Ideal.Quotient.nontrivial_iff.mpr hI
    obtain ⟨f, hfdeg, rfl⟩ : ∃ r : A[X], r.degree < g.degree ∧ Ideal.Quotient.mk _ r = f := by
      obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective f
      refine ⟨f %ₘ g, Polynomial.degree_modByMonic_lt f H.monic, ?_⟩
      rw [Eq.comm, Ideal.Quotient.mk_eq_mk_iff_sub_mem, Ideal.mem_span_singleton']
      exact ⟨f /ₘ g, by rw [Polynomial.modByMonic_eq_sub_mul_div]; ring⟩
    have h1 : g.degree = ((g : A⟦X⟧).map (Ideal.Quotient.mk I)).order.toNat := by
      convert!
        H.degree_eq_coe_lift_order_map g 1 (by rwa [constantCoeff_one, ← Ideal.ne_top_iff_one])
          (by simp)
      exact (ENat.lift_eq_toNat_of_lt_top _).symm
    dsimp
    rw [Ideal.Quotient.mk_eq_mk_iff_sub_mem, Ideal.mem_span_singleton']
    exact ⟨0, by simp [H.isWeierstrassDivisorAt'.mod_coe_eq_self (hfdeg.trans_eq h1)]⟩
  right_inv f := by exact H.isWeierstrassDivisorAt'.mk_mod'_eq_self

end Equiv

end IsWeierstrassDivisorAt

section IsLocalRing

variable [IsLocalRing A] (a : A) (f f' g : A⟦X⟧)

variable {g} in
/-- **Weierstrass division** ([washington_cyclotomic], Proposition 7.2): let `f`, `g` be
power series over a complete local ring, such that
the image of `g` in the residue field is not zero. Let `n` be the order of the image of `g` in the
residue field. Then there exists a power series `q` and a polynomial `r` of degree `< n`, such that
`f = g * q + r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant6bcc30733ae324ba5353994260a7face5b354f46adb1eabb223fd2fca220110e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant6bcc30733ae324ba5353994260a7face5b354f46adb1eabb223fd2fca220110e.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39591fa44823a1172a5deb70fa1e568723e725e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
