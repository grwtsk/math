# transcendental_supported_polynomial_aeval_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ad6ecf8-58c3-8714-ec31-2d78ad2a0c04",
  "kind": "theorem",
  "lexical_name": "transcendental_supported_polynomial_aeval_X",
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
  "slug": "transcendental-supported-polynomial-aeval-x--ab7e30b8924297f3c764061e",
  "source": {
    "blob": "55807e4f80b20b29e3e907e2354d2a3df3c34293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 33,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab7e30b8924297f3c764061ecf7f9d698c7c17edafb71482d8d49365151fc730",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ad6ecf8-58c3-8714-ec31-2d78ad2a0c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transcendental_supported_polynomial_aeval_X {i : σ} {s : Set σ} (h : i ∉ s)
    {f : R[X]} (hf : Transcendental R f) :
    Transcendental (supported R s) (Polynomial.aeval (X i : MvPolynomial σ R) f) := by
  classical
  rw [transcendental_iff_injective] at hf ⊢
  let g := MvPolynomial.mapAlgHom (R := R) (σ := s) (Polynomial.aeval (R := R) f)
  replace hf : Function.Injective g := MvPolynomial.map_injective _ hf
  let u := (Subalgebra.val _).comp
    ((optionEquivRight R s).symm |>.trans
      (renameEquiv R (Set.subtypeInsertEquivOption h).symm) |>.trans
      (supportedEquivMvPolynomial _).symm).toAlgHom |>.comp
    g |>.comp
    ((optionEquivLeft R s).symm.trans (optionEquivRight R s)).toAlgHom
  let v := ((Polynomial.aeval (R := supported R s)
    (Polynomial.aeval (X i : MvPolynomial σ R) f)).restrictScalars R).comp
      (Polynomial.mapAlgEquiv (supportedEquivMvPolynomial s).symm).toAlgHom
  replace hf : Function.Injective u := by
    simp only [AlgEquiv.toAlgHom_eq_coe, AlgHom.coe_comp, Subalgebra.coe_val,
      AlgHom.coe_coe, AlgEquiv.coe_trans, Function.comp_assoc, u]
    apply Subtype.val_injective.comp
    simp only [EquivLike.comp_injective]
    apply hf.comp
    simp only [EquivLike.comp_injective, EquivLike.injective]
  have h1 : Polynomial.aeval (X i : MvPolynomial σ R) = ((Subalgebra.val _).comp
      (supportedEquivMvPolynomial _).symm.toAlgHom |>.comp
      (Polynomial.aeval (X ⟨i, s.mem_insert i⟩ : MvPolynomial ↑(insert i s) R))) := by
    ext1; simp
  have h2 : u = v := by
    simp only [u, v, g]
    ext1
    · ext1
      simp [Set.subtypeInsertEquivOption, Subalgebra.algebraMap_eq, optionEquivLeft_symm_apply]
    · simp [Set.subtypeInsertEquivOption, h1, optionEquivLeft_symm_apply]
  simpa only [h2, v, AlgEquiv.toAlgHom_eq_coe, AlgHom.coe_comp, AlgHom.coe_coe,
    EquivLike.injective_comp, AlgHom.coe_restrictScalars'] using hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55807e4f80b20b29e3e907e2354d2a3df3c34293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
