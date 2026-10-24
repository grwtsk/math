# sub_one_norm_eq_eval_cyclotomic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f513f38acffe05d4a4cc5e0cd36ea6aac6e290c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3506642-44a7-72a1-502b-86e49151ac3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed04b2a8-dd6f-4b2a-4cfd-e750c4e6cc96",
  "kind": "theorem",
  "lexical_name": "sub_one_norm_eq_eval_cyclotomic",
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
  "slug": "sub-one-norm-eq-eval-cyclotomic--f1eab659b1daaaac35cb2965",
  "source": {
    "blob": "f513f38acffe05d4a4cc5e0cd36ea6aac6e290c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 331,
    "path": "GRWTSK/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1eab659b1daaaac35cb29658d5b15b06f4d9000aad34b681faf7c1d22c2970c",
  "verification": {
    "reference": "docs/verification/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed04b2a8-dd6f-4b2a-4cfd-e750c4e6cc96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_one_norm_eq_eval_cyclotomic [IsCyclotomicExtension {n} K L] (h : 2 < (n : ℕ))
    (hirr : Irreducible (cyclotomic n K)) : norm K (ζ - 1) = ↑(eval 1 (cyclotomic n ℤ)) := by
  haveI := IsCyclotomicExtension.neZero' n K L
  let E := AlgebraicClosure L
  obtain ⟨z, hz⟩ := IsAlgClosed.exists_root _ (degree_cyclotomic_pos n E n.pos).ne.symm
  apply (algebraMap K E).injective
  letI := IsCyclotomicExtension.finiteDimensional {n} K L
  letI := IsCyclotomicExtension.isGalois n K L
  rw [norm_eq_prod_embeddings]
  conv_lhs =>
    congr
    rfl
    ext
    rw [← neg_sub, map_neg, map_sub, map_one, neg_eq_neg_one_mul]
  rw [prod_mul_distrib, prod_const, Finset.card_univ, AlgHom.card,
    IsCyclotomicExtension.finrank L hirr, (totient_even h).neg_one_pow, one_mul]
  have Hprod : (Finset.univ.prod fun σ : L →ₐ[K] E => 1 - σ ζ) = eval 1 (cyclotomic' n E) := by
    rw [cyclotomic', eval_prod, ← @Finset.prod_attach E E, ← univ_eq_attach]
    refine Fintype.prod_equiv (hζ.embeddingsEquivPrimitiveRoots E hirr) _ _ fun σ => ?_
    simp
  haveI : NeZero ((n : ℕ) : E) := NeZero.of_faithfulSMul K _ (n : ℕ)
  rw [Hprod, cyclotomic', ← cyclotomic_eq_prod_X_sub_primitiveRoots (isRoot_cyclotomic_iff.1 hz),
    ← map_cyclotomic_int, _root_.map_intCast, ← Int.cast_one, eval_intCast_map, eq_intCast,
    Int.cast_id]

/-- If `IsPrimePow (n : ℕ)`, `n ≠ 2` and `Irreducible (cyclotomic n K)` (in particular for
`K = ℚ`), then the norm of `ζ - 1` is `(n : ℕ).minFac`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f513f38acffe05d4a4cc5e0cd36ea6aac6e290c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
