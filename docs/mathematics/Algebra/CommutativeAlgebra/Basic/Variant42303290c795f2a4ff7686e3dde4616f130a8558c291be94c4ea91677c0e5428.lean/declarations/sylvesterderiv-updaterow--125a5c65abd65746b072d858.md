# sylvesterDeriv_updateRow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2188c1f6-0b84-5012-296b-7a0a61f96dfa",
  "kind": "lemma",
  "lexical_name": "sylvesterDeriv_updateRow",
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
  "slug": "sylvesterderiv-updaterow--125a5c65abd65746b072d858",
  "source": {
    "blob": "3ed264ee72c569807fee84ec7696bcf5a010dfb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 99,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:125a5c65abd65746b072d85868b0652819405144b434865c9effd6749dba37b7",
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

Occurrence: `result:2188c1f6-0b84-5012-296b-7a0a61f96dfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sylvesterDeriv_updateRow (f : R[X]) (hf : 0 < f.natDegree) :
    (sylvesterDeriv f).updateRow ⟨2 * f.natDegree - 2, by lia⟩
      (f.leadingCoeff • (sylvesterDeriv f ⟨2 * f.natDegree - 2, by lia⟩)) =
    (f.derivative.sylvester f (f.natDegree - 1) f.natDegree) := by
  by_cases hn : f.natDegree = 0
  · ext ⟨i, hi⟩; lia
  ext ⟨i, hi⟩ ⟨j, hj⟩
  rw [sylvesterDeriv, dite_eq_right hn]
  rcases ne_or_eq i (2 * f.natDegree - 2) with hi' | rfl
  · -- Top part of matrix
    rw [Matrix.updateRow_ne (Fin.ne_of_val_ne hi'),
      Matrix.updateRow_ne (Fin.ne_of_val_ne hi')]
  · -- Bottom row
    simp only [sylvester, Fin.addCases, mem_Icc, coeff_derivative, eq_rec_constant, leadingCoeff,
      Matrix.updateRow_self, Matrix.updateRow_apply, ↓reduceIte, Pi.smul_apply, smul_eq_mul,
      mul_ite, mul_one, mul_zero, Matrix.of_apply, Fin.castLT_mk, tsub_le_iff_right, Fin.cast_mk,
      Fin.subNat_mk, dite_eq_ite]
    split_ifs
    on_goal 2 => rw [show f.natDegree = 1 by lia]
    on_goal 3 =>
      rw [← Nat.cast_one (R := R), ← Nat.cast_add, show f.natDegree = 1 by lia]
      norm_num
    on_goal 6 =>
      rw [← Nat.cast_one (R := R), ← Nat.cast_add]
      #adaptation_note
      /--
      Prior to nightly-2025-09-09,
      these two steps were not needed (i.e. `grind` just finished from here)
      -/
      have : 2 * f.natDegree - 2 - (j - (f.natDegree - 1)) + 1 = f.natDegree := by grind
      simp [this]
    all_goals grind

end sylvester

section resultant

variable {R S : Type*} [CommRing R] [CommRing S]

/-- The resultant of two polynomials `f` and `g` is the determinant of the Sylvester matrix of `f`
and `g`. The size arguments `m` and `n` are implemented as `optParam`, meaning that the default
values are `f.natDegree` and `g.natDegree` respectively, but they can also be specified to be
other values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed264ee72c569807fee84ec7696bcf5a010dfb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
