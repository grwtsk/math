# subst_substInv_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09f401e7-c646-af38-8d5a-6b2cf3d56e0b",
  "kind": "lemma",
  "lexical_name": "subst_substInv_left",
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
  "slug": "subst-substinv-left--ab70f9b063b9b4bb6e2c1a7c",
  "source": {
    "blob": "45f721163f2ad90e817abbd9b70c3b08de0f53bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 551,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab70f9b063b9b4bb6e2c1a7ca14d7fb629ce2534c09159066cb491503c3bb94c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09f401e7-c646-af38-8d5a-6b2cf3d56e0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subst_substInv_left : P.substInv.subst P = X := by
  have : Invertible (P.substInv.coeff 1) := by simpa using invertibleInvOf
  let Q := P.substInv.substInv
  have hQ : HasSubst Q := HasSubst.substInv P.substInv
  have eq_aux : P.substInv.subst Q = X := subst_substInv_right P.substInv P.constantCoeff_substInv
  suffices h : Q = P from by simp_rw [← h, eq_aux]
  calc
    _ = PowerSeries.subst Q (P.subst P.substInv) := by
      rw [subst_substInv_right _ hP, subst_X hQ]
    _ = P := by
      simp [subst_comp_subst_apply (HasSubst.substInv P) hQ, eq_aux]

end Invertible

section IsUnit

variable (P : R⟦X⟧) (hP : P.constantCoeff = 0) (hP' : IsUnit (P.coeff 1))

/-- Given a power series `P = u • X + O(X²)` with `u` is an unit in ring `R`,
this is the power series `Q` such that `P(Q(X)) = X`.
See `PowerSeries.subst_substInvOfIsUnit_right`.

See also `PowerSeries.substInv` for a variant using `Invertible`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45f721163f2ad90e817abbd9b70c3b08de0f53bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
