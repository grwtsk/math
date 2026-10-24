# irreducible_of_eisenstein_criterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c12c163c-5dc0-2a81-e5d0-df21419bee70",
  "kind": "theorem",
  "lexical_name": "irreducible_of_eisenstein_criterion",
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
  "slug": "irreducible-of-eisenstein-criterion--e81f1f5672aca19a474548e1",
  "source": {
    "blob": "9f58bef37e2330b99ae5985e14d7fd442d91cfb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 184,
    "path": "GRWTSK/Algebra/Criterion/Variant706072943c2653ecd92cf594ebfc427b210f088b30b53dcf39473ffb7c01dae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e81f1f5672aca19a474548e1614afeec2ea0a4679a068eb1877bf04aa4066643",
  "verification": {
    "reference": "docs/verification/Algebra/Criterion/Variant706072943c2653ecd92cf594ebfc427b210f088b30b53dcf39473ffb7c01dae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c12c163c-5dc0-2a81-e5d0-df21419bee70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_of_eisenstein_criterion {f : R[X]} {P : Ideal R} (hP : P.IsPrime)
    (hfl : f.leadingCoeff ∉ P)
    (hfP : ∀ n : ℕ, ↑n < degree f → f.coeff n ∈ P) (hfd0 : 0 < degree f)
    (h0 : f.coeff 0 ∉ P ^ 2) (hu : f.IsPrimitive) : Irreducible f := by
  apply generalizedEisenstein (K := FractionRing (R ⧸ P)) (q := X) (p := f.natDegree)
    (by simp [map_X, irreducible_X]) monic_X hu
    (natDegree_pos_iff_degree_pos.mpr hfd0)
  · simp only [IsScalarTower.algebraMap_eq R (R ⧸ P) (FractionRing (R ⧸ P)),
      Quotient.algebraMap_eq, coe_comp, Function.comp_apply, ne_eq,
      FaithfulSMul.algebraMap_eq_zero_iff]
    rw [Ideal.Quotient.eq_zero_iff_mem]
    exact hfl
  · rw [← map_C, ← Polynomial.map_pow, ← Polynomial.map_mul]
    simp only [IsScalarTower.algebraMap_eq R (R ⧸ P) (FractionRing (R ⧸ P)),
      Quotient.algebraMap_eq, ← map_map]
    congr 1
    ext n
    simp only [coeff_map, Ideal.Quotient.mk_eq_mk_iff_sub_mem]
    simp only [coeff_C_mul, coeff_X_pow, mul_ite, mul_one, mul_zero, sub_ite, sub_zero]
    split_ifs with hn
    · rw [hn, leadingCoeff, sub_self]
      exact zero_mem _
    · by_cases hn' : n < f.natDegree
      · exact hfP _ (coe_lt_degree.mpr hn')
      · rw [f.coeff_eq_zero_of_natDegree_lt]
        · exact P.zero_mem
        · simp [Nat.lt_iff_le_and_ne, ← Nat.not_lt, hn', Ne.symm hn]
  · rw [modByMonic_X, map_C, ne_eq, C_eq_zero, Ideal.Quotient.eq_zero_iff_mem,
      ← coeff_zero_eq_eval_zero]
    convert! h0
    · rw [IsScalarTower.algebraMap_eq R (R ⧸ P) (FractionRing (R ⧸ P))]
      rw [ker_comp_of_injective]
      · ext a; simp
      · exact FaithfulSMul.algebraMap_injective (R ⧸ P) (FractionRing (R ⧸ P))

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Criterion/Variant706072943c2653ecd92cf594ebfc427b210f088b30b53dcf39473ffb7c01dae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Criterion/Variant706072943c2653ecd92cf594ebfc427b210f088b30b53dcf39473ffb7c01dae4.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f58bef37e2330b99ae5985e14d7fd442d91cfb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
