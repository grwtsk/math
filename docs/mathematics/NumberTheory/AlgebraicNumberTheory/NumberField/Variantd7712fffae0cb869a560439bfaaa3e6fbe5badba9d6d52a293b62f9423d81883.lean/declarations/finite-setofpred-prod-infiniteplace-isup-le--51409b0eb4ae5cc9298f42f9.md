# finite_setOfPred_prod_infinitePlace_iSup_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec97b7bc-e8d6-abf4-e77f-407b300e8bc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b35ae3c-e060-989c-ade0-6df2b1d96728",
  "kind": "lemma",
  "lexical_name": "finite_setOfPred_prod_infinitePlace_iSup_le",
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
  "slug": "finite-setofpred-prod-infiniteplace-isup-le--51409b0eb4ae5cc9298f42f9",
  "source": {
    "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 356,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51409b0eb4ae5cc9298f42f9164942a32fde37839e29817645886be314d83d20",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b35ae3c-e060-989c-ade0-6df2b1d96728`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_setOfPred_prod_infinitePlace_iSup_le {n : ℕ} (hn : n ≠ 0) (B : ℝ) :
    {x : 𝓞 K | ∏ v : InfinitePlace K, (⨆ i, v (![(x : K), n] i)) ^ v.mult ≤ B}.Finite := by
  set B' := B / n ^ (totalWeight K - 1)
  suffices Set.BijOn ((↑) : 𝓞 K → K) {x | ∀ (v : InfinitePlace K), v x ≤ B'}
      {x | IsIntegral ℤ x ∧ ∀ (φ : K →+* ℂ), ‖φ x‖ ≤ B'} from
    this.finite_iff_finite.mpr (Embeddings.finite_of_norm_le K ℂ B') |>.subset
      fun _ _ ↦ by grind [infinitePlace_apply_le_of_prod_le hn B]
  refine .mk (fun x hx ↦ ?_) (fun _ _ _ _ ↦ RingOfIntegers.ext) fun a ha ↦ ?_ <;>
    simp only [Set.mem_image, Set.mem_ofPred_eq] at *
  · exact ⟨x.isIntegral_coe, fun φ ↦ hx <| .mk φ⟩
  · rw [← mem_integralClosure_iff ℤ K] at ha
    exact ⟨⟨a, ha.1⟩, fun v ↦ v.norm_embedding_eq a ▸ ha.2 v.embedding, rfl⟩

@[deprecated (since := "2026-07-09")]
alias finite_setOf_prod_infinitePlace_iSup_le := finite_setOfPred_prod_infinitePlace_iSup_le

/-- The set of `a : 𝓞 K` such that `mulHeight₁ (a / n) = mulHeight ![a, n]` is bounded
(for some given nonzero `n : ℕ`) is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b9f8680e1e7806ca62343835bbb665248bc127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
