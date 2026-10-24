# derivative_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbd16a2c-ad7a-d291-8d59-27297396492f",
  "kind": "theorem",
  "lexical_name": "derivative_subst",
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
  "slug": "derivative-subst--c9ccbea665131734fd1f4a2c",
  "source": {
    "blob": "95f57610f230af05853cbb5628b0234444ddcab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 147,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9ccbea665131734fd1f4a2c50d4d96a0876100e245bce2603681075fce39fad",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd16a2c-ad7a-d291-8d59-27297396492f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_subst [CommRing R] {f g : R⟦X⟧} (hg : HasSubst g) :
    d⁄dX (f.subst g) = (d⁄dX f).subst g * d⁄dX g := by
  ext n
  obtain ⟨m, hm⟩ := (hg.eventually_coeff_pow_eq_zero (n + 1)).exists_forall_of_atTop
  have : coeff (n + 1) (f.subst g) = coeff (n + 1) ((↑(trunc (m + 1) f) : R⟦X⟧).subst g) := by
    rw [coeff_subst' hg, coeff_subst' hg]
    refine finsum_congr fun d ↦ ?_
    obtain hd | hd := lt_or_ge d m
    · rw [coeff_coe_trunc_of_lt (by lia)]
    · simp [coeff_trunc, hd, hm]
  rw [coeff_derivative, this, ← coeff_derivative, derivative_subst_coe _ hg, coeff_mul, coeff_mul]
  refine Finset.sum_congr rfl fun ⟨i, j⟩ hij ↦ ?_
  congr 1
  simp only [coeff_subst' hg, coeff_derivative, coeff_coe, coeff_trunc]
  exact finsum_congr fun d ↦ by split_ifs <;> simp (disch := grind [Finset.mem_antidiagonal]) [hm]

section deprecated

variable [CommSemiring R]

/--
The formal derivative of a power series in one variable.
This is defined here as a function, but will be packaged as a
derivation `derivative` on `R⟦X⟧`.
-/
@[deprecated derivative (since := "2026-06-26")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant9a72fd5e98fa59f9345e899f929969b820a9450ae73b438c94d0b1ab61e2ee3b.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95f57610f230af05853cbb5628b0234444ddcab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
