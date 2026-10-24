# sylvesterDeriv_of_natDegree_eq_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8b0350e-53e7-a2d8-f1c4-bc56b3cfb5d8",
  "kind": "lemma",
  "lexical_name": "sylvesterDeriv_of_natDegree_eq_three",
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
  "slug": "sylvesterderiv-of-natdegree-eq-three--da1149fb6bd60cf72c0b8a85",
  "source": {
    "blob": "3ed264ee72c569807fee84ec7696bcf5a010dfb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1017,
    "line": 991,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da1149fb6bd60cf72c0b8a85d680055694a53f8db614176214ffbba8d508684c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8b0350e-53e7-a2d8-f1c4-bc56b3cfb5d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 991–1017.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sylvesterDeriv_of_natDegree_eq_three {f : R[X]} (hf : f.natDegree = 3) :
    f.sylvesterDeriv.reindex (finCongr <| by rw [hf]) (finCongr <| by rw [hf]) =
    !![ f.coeff 0,         0, 1 * f.coeff 1,             0,             0;
        f.coeff 1, f.coeff 0, 2 * f.coeff 2, 1 * f.coeff 1,             0;
        f.coeff 2, f.coeff 1, 3 * f.coeff 3, 2 * f.coeff 2, 1 * f.coeff 1;
        f.coeff 3, f.coeff 2,             0, 3 * f.coeff 3, 2 * f.coeff 2;
                0,         1,             0,             0,             3] := by
  ext ⟨i, hi⟩ ⟨j, hj⟩
  -- In this proof we do as much as possible of the `simp` work before drilling down into the
  -- `fin_cases` constructs. This means the simps are not terminal, so they are not squeezed;
  -- but the proof runs much faster this way.
  simp only [sylvesterDeriv, hf, OfNat.ofNat_ne_zero, ↓reduceDIte, sylvester, Fin.addCases,
    Nat.add_one_sub_one, Fin.val_castLT, mem_Icc, Fin.val_fin_le, Fin.val_subNat, Fin.val_cast,
    tsub_le_iff_right, coeff_derivative, eq_rec_constant, dite_eq_ite, Nat.reduceMul, Nat.reduceSub,
    Nat.cast_ofNat, Matrix.reindex_apply, finCongr_symm, Matrix.submatrix_apply, finCongr_apply,
    Fin.cast_mk, Matrix.updateRow_apply, Fin.mk.injEq, Matrix.of_apply, Fin.mk_le_mk, one_mul,
    Matrix.cons_val', Matrix.cons_val_fin_one]
  have hi' : i ∈ Finset.range 5 := Finset.mem_range.mpr hi
  have hj' : j ∈ Finset.range 5 := Finset.mem_range.mpr hj
  fin_cases hi' <;>
  · simp only [and_true, Fin.isValue, Fin.mk_one, Fin.reduceFinMk, Fin.zero_eta,
      le_add_iff_nonneg_left, Matrix.cons_val_one, Matrix.cons_val_zero, Matrix.cons_val,
      Nat.reduceAdd, Nat.reduceEqDiff, Nat.reduceLeDiff, nonpos_iff_eq_zero,
      OfNat.one_ne_ofNat, ↓reduceIte, zero_add, zero_le]
    fin_cases hj' <;> simp [mul_comm, one_add_one_eq_two, (by norm_num : (2 : R) + 1 = 3)]

/-- Standard formula for the discriminant of a cubic polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean#L991).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed264ee72c569807fee84ec7696bcf5a010dfb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
