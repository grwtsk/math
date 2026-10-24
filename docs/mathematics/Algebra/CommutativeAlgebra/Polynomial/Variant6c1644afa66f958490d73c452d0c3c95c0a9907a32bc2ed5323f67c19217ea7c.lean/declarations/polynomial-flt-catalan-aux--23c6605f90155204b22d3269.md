# Polynomial.flt_catalan_aux

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
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a0b3a19-8fc0-f383-8c5b-d177d7a19ef3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:036f9497-03de-0ac9-236e-e97ef9daff44",
  "kind": "theorem",
  "lexical_name": "Polynomial.flt_catalan_aux",
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
  "slug": "polynomial-flt-catalan-aux--23c6605f90155204b22d3269",
  "source": {
    "blob": "b0edeb1fa4176a31a026d229659e237d2fe7da14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 142,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23c6605f90155204b22d3269a5a7ff4b82b570260ed91310837402e0c0ff88d9",
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

Occurrence: `result:036f9497-03de-0ac9-236e-e97ef9daff44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Polynomial.flt_catalan_aux
    {p q r : ℕ} {a b c : k[X]} {u v w : k}
    (heq : C u * a ^ p + C v * b ^ q + C w * c ^ r = 0)
    (hp : 0 < p) (hq : 0 < q) (hr : 0 < r)
    (hineq : q * r + r * p + p * q ≤ p * q * r)
    (chp : (p : k) ≠ 0) (chq : (q : k) ≠ 0) (chr : (r : k) ≠ 0)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hab : IsCoprime a b)
    (hu : u ≠ 0) (hv : v ≠ 0) (hw : w ≠ 0) :
    a.natDegree = 0 := by
  rcases eq_or_ne (ringChar k) 0 with ch0 | chn0
  -- characteristic zero
  · obtain ⟨da, -, -⟩ := flt_catalan_deriv
      hp hq hr hineq chp chq chr ha hb hc hab hu hv hw heq
    have czk : CharZero k := by
      apply charZero_of_inj_zero
      intro n
      rw [ringChar.spec, ch0]
      exact zero_dvd_iff.mp
    rw [eq_C_of_derivative_eq_zero da]
    exact natDegree_C _
  -- characteristic p > 0
  · generalize eq_d : a.natDegree = d
    -- set up infinite descent
    -- strong induct on `d := a.natDegree`
    induction d
      using Nat.case_strong_induction_on
      generalizing a b c ha hb hc hab heq with
    | hz => rfl
    | hi d ih_d => -- have derivatives of `a, b, c` zero
      obtain ⟨ad, bd, cd⟩ := flt_catalan_deriv
        hp hq hr hineq chp chq chr ha hb hc hab hu hv hw heq
      -- find contracts `ca, cb, cc` so that `a(k) = ca(k^ch)`
      obtain ⟨ca, ca_nz, eq_a, eq_deg_a⟩ := find_contract ha ad chn0
      obtain ⟨cb, cb_nz, eq_b, eq_deg_b⟩ := find_contract hb bd chn0
      obtain ⟨cc, cc_nz, eq_c, eq_deg_c⟩ := find_contract hc cd chn0
      set ch := ringChar k
      suffices hca : ca.natDegree = 0 by
        rw [← eq_d, eq_deg_a, hca, zero_mul]
      by_contra hnca; apply hnca
      apply ih_d _ _ _ ca_nz cb_nz cc_nz <;> clear ih_d <;> try rfl
      · apply (isCoprime_expand chn0).mp
        rwa [← eq_a, ← eq_b]
      · have _ : ch ≠ 1 := CharP.ringChar_ne_one
        have hch2 : 2 ≤ ch := by omega
        rw [← add_le_add_iff_right 1, ← eq_d, eq_deg_a]
        refine le_trans ?_ (Nat.mul_le_mul_left _ hch2)
        omega
      · rw [eq_a, eq_b, eq_c, ← expand_C ch u, ← expand_C ch v, ← expand_C ch w] at heq
        simp_rw [← map_pow, ← map_mul, ← map_add] at heq
        rwa [Polynomial.expand_eq_zero (zero_lt_iff.mpr chn0)] at heq

/-- Nonsolvability of the Fermat-Catalan equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0edeb1fa4176a31a026d229659e237d2fe7da14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
