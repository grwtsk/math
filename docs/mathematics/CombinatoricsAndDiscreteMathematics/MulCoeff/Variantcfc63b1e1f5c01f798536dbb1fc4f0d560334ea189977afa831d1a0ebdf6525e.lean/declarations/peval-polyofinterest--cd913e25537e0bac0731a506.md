# peval_polyOfInterest

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
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dc74e99-20de-b169-acfe-fca62b075b85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48ee5177-42fd-8aab-81c3-2b111b021f11",
  "kind": "theorem",
  "lexical_name": "peval_polyOfInterest",
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
  "slug": "peval-polyofinterest--cd913e25537e0bac0731a506",
  "source": {
    "blob": "2cd1b5e4cbcaf3d21227cac1440eeac231bc661c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 224,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd913e25537e0bac0731a5069f24d142f9fc661f7b0e3342c89fa6d12ab6a0b8",
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

Occurrence: `result:48ee5177-42fd-8aab-81c3-2b111b021f11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem peval_polyOfInterest (n : ℕ) (x y : 𝕎 k) :
    peval (polyOfInterest p n) ![fun i => x.coeff i, fun i => y.coeff i] =
    (x * y).coeff (n + 1) + p ^ (n + 1) * x.coeff (n + 1) * y.coeff (n + 1) -
      y.coeff (n + 1) * ∑ i in range (n + 1 + 1), p ^ i * x.coeff i ^ p ^ (n + 1 - i) -
      x.coeff (n + 1) * ∑ i in range (n + 1 + 1), p ^ i * y.coeff i ^ p ^ (n + 1 - i) := by
  simp only [polyOfInterest, peval, map_natCast, Matrix.head_cons, map_pow,
    Function.uncurry_apply_pair, aeval_X, Matrix.cons_val_one, map_mul, Matrix.cons_val_zero,
    map_sub]
  rw [sub_sub, add_comm (_ * _), ← sub_sub]
  have mvpz : (p : MvPolynomial ℕ ℤ) = MvPolynomial.C ↑p := by rw [eq_intCast, Int.cast_ofNat]
  have : ∀ (f : ℤ →+* k) (g : ℕ → k), eval₂ f g p = f p := by
    intros; rw [mvpz, MvPolynomial.eval₂_C]
  simp [wittPolynomial_eq_sum_C_mul_X_pow, aeval, eval₂_rename, this, mul_coeff, peval, map_natCast,
    map_add, map_pow, map_mul]
#align witt_vector.peval_poly_of_interest WittVector.peval_polyOfInterest

variable [CharP k p]

/-- The characteristic `p` version of `peval_polyOfInterest` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cd1b5e4cbcaf3d21227cac1440eeac231bc661c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
