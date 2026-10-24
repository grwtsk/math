# Polynomial.flt_catalan_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0edeb1fa4176a31a026d229659e237d2fe7da14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1b08f77-6a20-2637-56df-bfe8369b7066",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2820b692-a29f-b24a-ea20-eece6290fbc2",
  "kind": "theorem",
  "lexical_name": "Polynomial.flt_catalan_deriv",
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
  "slug": "polynomial-flt-catalan-deriv--b4d2f177c3aad4b12d463e03",
  "source": {
    "blob": "b0edeb1fa4176a31a026d229659e237d2fe7da14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 69,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d2f177c3aad4b12d463e0324295a47063f5be9a662b0efd35d174eff086eff",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2820b692-a29f-b24a-ea20-eece6290fbc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Polynomial.flt_catalan_deriv
    {p q r : ℕ} (hp : 0 < p) (hq : 0 < q) (hr : 0 < r)
    (hineq : q * r + r * p + p * q ≤ p * q * r)
    (chp : (p : k) ≠ 0) (chq : (q : k) ≠ 0) (chr : (r : k) ≠ 0)
    {a b c : k[X]} (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0)
    (hab : IsCoprime a b) {u v w : k} (hu : u ≠ 0) (hv : v ≠ 0) (hw : w ≠ 0)
    (heq : C u * a ^ p + C v * b ^ q + C w * c ^ r = 0) :
    derivative a = 0 ∧ derivative b = 0 ∧ derivative c = 0 := by
  have hbc : IsCoprime b c := by apply rot_coprime heq <;> assumption
  have hca : IsCoprime c a := by
    rw [add_rotate] at heq; apply rot_coprime heq <;> assumption
  have hCu := C_ne_zero.mpr hu
  have hCv := C_ne_zero.mpr hv
  have hCw := C_ne_zero.mpr hw
  have hap := pow_ne_zero p ha
  have hbq := pow_ne_zero q hb
  have hcr := pow_ne_zero r hc
  have habp : IsCoprime (C u * a ^ p) (C v * b ^ q) := by
    rw [isCoprime_mul_units_left hu.isUnit_C hv.isUnit_C]; exact hab.pow
  have hbcp : IsCoprime (C v * b ^ q) (C w * c ^ r) := by
    rw [isCoprime_mul_units_left hv.isUnit_C hw.isUnit_C]; exact hbc.pow
  have hcap : IsCoprime (C w * c ^ r) (C u * a ^ p) := by
    rw [isCoprime_mul_units_left hw.isUnit_C hu.isUnit_C]; exact hca.pow
  have habcp := hcap.symm.mul_left hbcp

  -- Use Mason-Stothers theorem
  classical
  rcases Polynomial.abc
      (mul_ne_zero hCu hap) (mul_ne_zero hCv hbq) (mul_ne_zero hCw hcr)
      habp heq with nd_lt | dr0
  · simp_rw [radical_mul habcp, radical_mul habp,
      radical_mul_of_isUnit_left hu.isUnit_C,
      radical_mul_of_isUnit_left hv.isUnit_C,
      radical_mul_of_isUnit_left hw.isUnit_C,
      radical_pow a hp, radical_pow b hq, radical_pow c hr,
      natDegree_mul hCu hap,
      natDegree_mul hCv hbq,
      natDegree_mul hCw hcr,
      natDegree_C, natDegree_pow, zero_add,
      ← radical_mul hab,
      ← radical_mul (hca.symm.mul_left hbc)] at nd_lt

    obtain ⟨hpa', hqb', hrc'⟩ := nd_lt
    have hpa := hpa'.trans natDegree_radical_le
    have hqb := hqb'.trans natDegree_radical_le
    have hrc := hrc'.trans natDegree_radical_le
    rw [natDegree_mul (mul_ne_zero ha hb) hc,
      natDegree_mul ha hb, Nat.add_one_le_iff] at hpa hqb hrc
    exfalso
    exact (ineq_pqr_contradiction hp hq hr hineq hpa hqb hrc)
  · rw [derivative_C_mul, derivative_C_mul, derivative_C_mul,
      mul_eq_zero_iff_left (C_ne_zero.mpr hu),
      mul_eq_zero_iff_left (C_ne_zero.mpr hv),
      mul_eq_zero_iff_left (C_ne_zero.mpr hw),
      derivative_pow_eq_zero chp,
      derivative_pow_eq_zero chq,
      derivative_pow_eq_zero chr] at dr0
    exact dr0

-- helper lemma that gives a baggage of small facts on `contract (ringChar k) a`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0edeb1fa4176a31a026d229659e237d2fe7da14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
