# mul_polyOfInterest_aux3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cd1b5e4cbcaf3d21227cac1440eeac231bc661c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad631e05-6afd-2d27-02e8-507e599ef575",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27218707-f17a-2c59-1c3d-c52974bd66b3",
  "kind": "theorem",
  "lexical_name": "mul_polyOfInterest_aux3",
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
  "slug": "mul-polyofinterest-aux3--f947e64bb225daba0b9a4da9",
  "source": {
    "blob": "2cd1b5e4cbcaf3d21227cac1440eeac231bc661c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f947e64bb225daba0b9a4da99ede17ceb5673fb8ae50ee58c7d1d796b202dfaa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27218707-f17a-2c59-1c3d-c52974bd66b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_polyOfInterest_aux3 (n : ℕ) : wittPolyProd p (n + 1) =
    -((p : 𝕄) ^ (n + 1) * X (0, n + 1)) * ((p : 𝕄) ^ (n + 1) * X (1, n + 1)) +
    (p : 𝕄) ^ (n + 1) * X (0, n + 1) * rename (Prod.mk (1 : Fin 2)) (wittPolynomial p ℤ (n + 1)) +
    (p : 𝕄) ^ (n + 1) * X (1, n + 1) * rename (Prod.mk (0 : Fin 2)) (wittPolynomial p ℤ (n + 1)) +
    remainder p n := by
  -- a useful auxiliary fact
  have mvpz : (p : 𝕄) ^ (n + 1) = MvPolynomial.C ((p : ℤ) ^ (n + 1)) := by simp only; norm_cast
  -- Porting note: the original proof applies `sum_range_succ` through a non-`conv` rewrite,
  -- but this does not work in Lean 4; the whole proof also times out very badly. The proof has been
  -- nearly totally rewritten here and now finishes quite fast.
  rw [wittPolyProd, wittPolynomial, AlgHom.map_sum, AlgHom.map_sum]
  conv_lhs =>
    arg 1
    rw [sum_range_succ, ← C_mul_X_pow_eq_monomial, tsub_self, pow_zero, pow_one, map_mul,
      rename_C, rename_X, ← mvpz]
  conv_lhs =>
    arg 2
    rw [sum_range_succ, ← C_mul_X_pow_eq_monomial, tsub_self, pow_zero, pow_one, map_mul,
      rename_C, rename_X, ← mvpz]
  conv_rhs =>
    enter [1, 1, 2, 2]
    rw [sum_range_succ, ← C_mul_X_pow_eq_monomial, tsub_self, pow_zero, pow_one, map_mul,
      rename_C, rename_X, ← mvpz]
  conv_rhs =>
    enter [1, 2, 2]
    rw [sum_range_succ, ← C_mul_X_pow_eq_monomial, tsub_self, pow_zero, pow_one, map_mul,
      rename_C, rename_X, ← mvpz]
  simp only [add_mul, mul_add]
  rw [add_comm _ (remainder p n)]
  simp only [add_assoc]
  apply congrArg (Add.add _)
  ring
#align witt_vector.mul_poly_of_interest_aux3 WittVector.mul_polyOfInterest_aux3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cd1b5e4cbcaf3d21227cac1440eeac231bc661c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
