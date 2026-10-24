# finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6c9ce46b6fcf3f72c117e0cc1b30c3ffa3557a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94ca771e-c4d0-cd5a-0d3c-67947aa2913c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f841086d-4044-b747-a556-465e9ece018a",
  "kind": "theorem",
  "lexical_name": "finrank",
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
  "slug": "finrank--4d86d785ccb47db0e5bc8747",
  "source": {
    "blob": "d6c9ce46b6fcf3f72c117e0cc1b30c3ffa3557a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 96,
    "path": "GRWTSK/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d86d785ccb47db0e5bc87474c481371623686e7751f55f41555a58c1565c40b",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f841086d-4044-b747-a556-465e9ece018a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank {n} (h : n ≠ 0) : FiniteDimensional.finrank (ZMod p) (GaloisField p n) = n := by
  set g_poly := (X ^ p ^ n - X : (ZMod p)[X])
  have hp : 1 < p := h_prime.out.one_lt
  have aux : g_poly ≠ 0 := FiniteField.X_pow_card_pow_sub_X_ne_zero _ h hp
  -- Porting note : in the statment of `key`, replaced `g_poly` by its value otherwise the
  -- proof fails
  have key : Fintype.card (g_poly.rootSet (GaloisField p n)) = g_poly.natDegree :=
    card_rootSet_eq_natDegree (galois_poly_separable p _ (dvd_pow (dvd_refl p) h))
      (SplittingField.splits (X ^ p ^ n - X : (ZMod p)[X]))
  have nat_degree_eq : g_poly.natDegree = p ^ n :=
    FiniteField.X_pow_card_pow_sub_X_natDegree_eq _ h hp
  rw [nat_degree_eq] at key
  suffices g_poly.rootSet (GaloisField p n) = Set.univ by
    simp_rw [this, ← Fintype.ofEquiv_card (Equiv.Set.univ _)] at key
    -- Porting note: prevents `card_eq_pow_finrank` from using a wrong instance for `Fintype`
    rw [@card_eq_pow_finrank (ZMod p) _ _ _ _ _ (_), ZMod.card] at key
    exact Nat.pow_right_injective (Nat.Prime.one_lt' p).out key
  rw [Set.eq_univ_iff_forall]
  suffices ∀ (x) (hx : x ∈ (⊤ : Subalgebra (ZMod p) (GaloisField p n))),
      x ∈ (X ^ p ^ n - X : (ZMod p)[X]).rootSet (GaloisField p n)
    by simpa
  rw [← SplittingField.adjoin_rootSet]
  simp_rw [Algebra.mem_adjoin_iff]
  intro x hx
  -- We discharge the `p = 0` separately, to avoid typeclass issues on `ZMod p`.
  cases p; cases hp
  refine Subring.closure_induction hx ?_ ?_ ?_ ?_ ?_ ?_ <;> simp_rw [mem_rootSet_of_ne aux]
  · rintro x (⟨r, rfl⟩ | hx)
    · simp only [map_sub, map_pow, aeval_X]
      rw [← map_pow, ZMod.pow_card_pow, sub_self]
    · dsimp only [GaloisField] at hx
      rwa [mem_rootSet_of_ne aux] at hx
  · rw [← coeff_zero_eq_aeval_zero']
    simp only [coeff_X_pow, coeff_X_zero, sub_zero, _root_.map_eq_zero, ite_eq_right_iff,
      one_ne_zero, coeff_sub]
    intro hn
    exact Nat.not_lt_zero 1 (pow_eq_zero hn.symm ▸ hp)
  · simp
  · simp only [aeval_X_pow, aeval_X, AlgHom.map_sub, add_pow_char_pow, sub_eq_zero]
    intro x y hx hy
    rw [hx, hy]
  · intro x hx
    simp only [sub_eq_zero, aeval_X_pow, aeval_X, AlgHom.map_sub, sub_neg_eq_add] at *
    rw [neg_pow, hx, CharP.neg_one_pow_char_pow]
    simp
  · simp only [aeval_X_pow, aeval_X, AlgHom.map_sub, mul_pow, sub_eq_zero]
    intro x y hx hy
    rw [hx, hy]
#align galois_field.finrank GaloisField.finrank

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c9ce46b6fcf3f72c117e0cc1b30c3ffa3557a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
