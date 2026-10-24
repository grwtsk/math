# factorization_exponentVectorNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96e2f19d-7f84-1e2a-b9a3-376cd49ca884",
  "kind": "theorem",
  "lexical_name": "factorization_exponentVectorNat",
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
  "slug": "factorization-exponentvectornat--f9685934fc52bbf46f39e095",
  "source": {
    "blob": "036decd3afbc6150f08db6daf202d4acaf416b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9685934fc52bbf46f39e0957db196d37adede332c252529d74c1d1645403d2d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96e2f19d-7f84-1e2a-b9a3-376cd49ca884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_exponentVectorNat
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p)
    (e : ExponentVector S K)
    (q : Nat) :
    Nat.factorization (exponentVectorNat S K e) q =
      if hq : q ∈ S then
        (e ⟨q, hq⟩).val
      else
        0 := by
  classical
  unfold exponentVectorNat
  rw [Nat.factorization_prod]
  · have hsum_apply :
        (∑ x : {p : Nat // p ∈ S}, Nat.factorization (x.val ^ (e x).val)) q =
          ∑ x : {p : Nat // p ∈ S},
            Nat.factorization (x.val ^ (e x).val) q := by
      simp
    rw [hsum_apply]
    by_cases hq : q ∈ S
    · simp only [hq, dite_true]
      calc
        (∑ x : {p : Nat // p ∈ S},
            Nat.factorization (x.val ^ (e x).val) q)
            = ∑ x : {p : Nat // p ∈ S},
                if q = x.val then (e x).val else 0 := by
                refine Finset.sum_congr rfl ?_
                intro x _hx
                exact factorization_prime_power_eval S K hSprime e q x
        _ = (e ⟨q, hq⟩).val := by
                rw [Finset.sum_eq_single_of_mem
                  (a := (⟨q, hq⟩ : {p : Nat // p ∈ S}))]
                · simp
                · simp
                · intro b _hb hbne
                  have hbval_ne : q ≠ b.val := by
                    intro hval
                    apply hbne
                    ext
                    exact hval.symm
                  simp [hbval_ne]
    · simp only [hq, dite_false]
      calc
        (∑ x : {p : Nat // p ∈ S},
            Nat.factorization (x.val ^ (e x).val) q)
            = ∑ x : {p : Nat // p ∈ S},
                if q = x.val then (e x).val else 0 := by
                refine Finset.sum_congr rfl ?_
                intro x _hx
                exact factorization_prime_power_eval S K hSprime e q x
        _ = 0 := by
                refine Finset.sum_eq_zero ?_
                intro b _hb
                have hbval_ne : q ≠ b.val := by
                  intro hval
                  apply hq
                  rw [hval]
                  exact b.property
                simp [hbval_ne]
  · intro p _hp
    exact pow_ne_zero _ (hSprime p.val p.property).ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036decd3afbc6150f08db6daf202d4acaf416b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
