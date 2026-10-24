# IsIntegral.coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09471a98-a020-b979-f02b-ea4aaa4a26fb",
  "kind": "lemma",
  "lexical_name": "IsIntegral.coeff",
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
  "slug": "isintegral-coeff--a6b1f086ca4fc4678fad513c",
  "source": {
    "blob": "e833e58cf732999d245764fc68f7fff367ddfc3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 130,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6b1f086ca4fc4678fad513cf9bec4b2251c2f5bafe25721bc030047fa1c0ebf",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09471a98-a020-b979-f02b-ea4aaa4a26fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsIntegral.coeff
    {p : S[X]} (hp : IsIntegral R[X] p) (i : ℕ) : IsIntegral R (p.coeff i) := by
  nontriviality R
  nontriviality S
  obtain rfl | hp0 := eq_or_ne p 0; · simp [isIntegral_zero]
  let q := minpoly R[X] p
  let m := (q.support.sup fun i ↦ (q.coeff i).natDegree) + p.natDegree + 1
  have hm₁ (i) : (q.coeff i).natDegree < m := by
    by_cases hi : i ∈ q.support
    · exact (Finset.le_sup (f := fun i ↦ (q.coeff i).natDegree) hi).trans_lt (by lia)
    · simp_all [m]
  have hm₁' : (q.eval (X ^ m)).Monic := by
    rw [eval_eq_sum_range, Finset.sum_range_succ]
    refine .add_of_right (by simp [q, minpoly.monic hp, ← pow_mul]) (degree_lt_degree ?_)
    refine lt_of_lt_of_eq (b := m * q.natDegree) ?_ (by simp [q, minpoly.monic hp, ← pow_mul])
    refine (natDegree_sum_le ..).trans_lt ((Finset.fold_max_lt _).mpr
      ⟨by simpa using ⟨by lia, minpoly.natDegree_pos hp⟩, fun i hi ↦ ?_⟩)
    dsimp
    simp only [Finset.mem_range] at hi
    grw [← pow_mul, natDegree_mul_le, natDegree_X_pow, ← Nat.add_one_le_iff.mpr hi]
    have := hm₁ i
    lia
  have hm₂ : p.natDegree < m := by grind
  have h₀ : algebraMap R[X] S[X] X = X := by simp
  have : (((taylor (X ^ m)) q).map (algebraMap R[X] S[X])).IsRoot (p - X ^ m) := by
    simpa [-algebraMap_def, q, h₀] using
      ((q.map (algebraMap _ _)).taylor_eval (X ^ m) (p - X ^ m) :)
  have : X ^ m - p ∣ (eval (X ^ m) q).map (algebraMap _ _) := by
    change X ^ m - p ∣ Algebra.ofId R[X] S[X] _
    rw [← coe_aeval_eq_eval, ← aeval_algHom_apply, ← neg_dvd, neg_sub]
    simpa [Polynomial.taylor_coeff_zero, -algebraMap_def, h₀] using this.dvd_coeff_zero
  have := (isIntegral_coeff_of_dvd _ _ hm₁'
    ((monic_X_pow _).sub_of_left (by simpa [← natDegree_lt_iff_degree_lt, hp0])) this i).neg
  obtain hi | hi := le_or_gt i p.natDegree
  · simpa [show i ≠ m by lia] using this
  · simp [coeff_eq_zero_of_natDegree_lt hi, isIntegral_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e833e58cf732999d245764fc68f7fff367ddfc3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
