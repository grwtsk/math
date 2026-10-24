# irreducible_of_eisenstein_criterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c9f4c65-4626-d5df-509c-5d1e1e01c117",
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
  "slug": "irreducible-of-eisenstein-criterion--c09e7440f1cd51eca9b7be92",
  "source": {
    "blob": "4595df688e0e87c9819338723b41d2770aa9c1e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 101,
    "path": "GRWTSK/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c09e7440f1cd51eca9b7be925ab4825b872ec68120a6508fc60de93723855600",
  "verification": {
    "reference": "docs/verification/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c9f4c65-4626-d5df-509c-5d1e1e01c117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_of_eisenstein_criterion {f : R[X]} {P : Ideal R} (hP : P.IsPrime)
    (hfl : f.leadingCoeff ∉ P) (hfP : ∀ n : ℕ, ↑n < degree f → f.coeff n ∈ P) (hfd0 : 0 < degree f)
    (h0 : f.coeff 0 ∉ P ^ 2) (hu : f.IsPrimitive) : Irreducible f :=
  have hf0 : f ≠ 0 := fun _ => by simp_all only [not_true, Submodule.zero_mem, coeff_zero]
  have hf : f.map (mk P) = C (mk P (leadingCoeff f)) * X ^ natDegree f :=
    map_eq_C_mul_X_pow_of_forall_coeff_mem hfP
  have hfd0 : 0 < f.natDegree := WithBot.coe_lt_coe.1 (lt_of_lt_of_le hfd0 degree_le_natDegree)
  ⟨mt degree_eq_zero_of_isUnit fun h => by simp_all only [lt_irrefl], by
    rintro p q rfl
    rw [Polynomial.map_mul] at hf
    rcases mul_eq_mul_prime_pow
        (show Prime (X : Polynomial (R ⧸ P)) from monic_X.prime_of_degree_eq_one degree_X) hf with
      ⟨m, n, b, c, hmnd, hbc, hp, hq⟩
    have hmn : 0 < m → 0 < n → False := by
      intro hm0 hn0
      refine' h0 _
      rw [coeff_zero_eq_eval_zero, eval_mul, sq]
      exact
        Ideal.mul_mem_mul (eval_zero_mem_ideal_of_eq_mul_X_pow hp hm0)
          (eval_zero_mem_ideal_of_eq_mul_X_pow hq hn0)
    have hpql0 : (mk P) (p * q).leadingCoeff ≠ 0 := by rwa [Ne.def, eq_zero_iff_mem]
    have hp0 : p ≠ 0 := fun h => by
      simp_all only [zero_mul, eq_self_iff_true, not_true, Ne.def]
    have hq0 : q ≠ 0 := fun h => by
      simp_all only [eq_self_iff_true, not_true, Ne.def, mul_zero]
    have hbc0 : degree b = 0 ∧ degree c = 0 := by
      apply_fun degree at hbc
      rwa [degree_C hpql0, degree_mul, eq_comm, Nat.WithBot.add_eq_zero_iff] at hbc
    have hmp : m ≤ natDegree p := le_natDegree_of_map_eq_mul_X_pow hP hp hbc0.1
    have hnq : n ≤ natDegree q := le_natDegree_of_map_eq_mul_X_pow hP hq hbc0.2
    have hpmqn : p.natDegree = m ∧ q.natDegree = n := by
      rw [natDegree_mul hp0 hq0] at hmnd
      contrapose hmnd
      apply ne_of_lt
      rw [not_and_or] at hmnd
      cases' hmnd with hmnd hmnd
      · exact add_lt_add_of_lt_of_le (lt_of_le_of_ne hmp (Ne.symm hmnd)) hnq
      · exact add_lt_add_of_le_of_lt hmp (lt_of_le_of_ne hnq (Ne.symm hmnd))
    obtain rfl | rfl : m = 0 ∨ n = 0 := by
      rwa [pos_iff_ne_zero, pos_iff_ne_zero, imp_false, Classical.not_not, ← or_iff_not_imp_left]
        at hmn
    · exact Or.inl (isUnit_of_natDegree_eq_zero_of_isPrimitive hu hpmqn.1)
    · exact Or.inr
          (isUnit_of_natDegree_eq_zero_of_isPrimitive
            (show IsPrimitive (q * p) by simpa [mul_comm] using hu)
            hpmqn.2)⟩
#align polynomial.irreducible_of_eisenstein_criterion Polynomial.irreducible_of_eisenstein_criterion

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4595df688e0e87c9819338723b41d2770aa9c1e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
