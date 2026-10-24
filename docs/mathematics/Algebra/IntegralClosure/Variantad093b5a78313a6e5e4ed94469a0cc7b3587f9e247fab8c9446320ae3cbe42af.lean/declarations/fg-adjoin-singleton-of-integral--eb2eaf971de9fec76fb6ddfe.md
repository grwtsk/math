# FG_adjoin_singleton_of_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29df876472ed81a1a197bc618f845bfeffda252c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c5cdb8f-e6b7-8524-fdb6-86e9260920ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bfda084-43bc-55d8-0685-fc4ec01d0661",
  "kind": "theorem",
  "lexical_name": "FG_adjoin_singleton_of_integral",
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
  "slug": "fg-adjoin-singleton-of-integral--eb2eaf971de9fec76fb6ddfe",
  "source": {
    "blob": "29df876472ed81a1a197bc618f845bfeffda252c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 217,
    "path": "GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb2eaf971de9fec76fb6ddfe4cf733e8d8967f39cf9e7d5bd50d56f5443f5363",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bfda084-43bc-55d8-0685-fc4ec01d0661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FG_adjoin_singleton_of_integral (x : A) (hx : IsIntegral R x) :
    (Algebra.adjoin R ({x} : Set A)).toSubmodule.FG := by
  rcases hx with ⟨f, hfm, hfx⟩
  exists Finset.image ((· ^ ·) x) (Finset.range (natDegree f + 1))
  apply le_antisymm
  · rw [span_le]
    intro s hs
    rw [Finset.mem_coe] at hs
    rcases Finset.mem_image.1 hs with ⟨k, hk, rfl⟩
    clear hk
    exact (Algebra.adjoin R {x}).pow_mem (Algebra.subset_adjoin (Set.mem_singleton _)) k
  intro r hr; change r ∈ Algebra.adjoin R ({x} : Set A) at hr
  rw [Algebra.adjoin_singleton_eq_range_aeval] at hr
  rcases(aeval x).mem_range.mp hr with ⟨p, rfl⟩
  rw [← modByMonic_add_div p hfm]
  rw [← aeval_def] at hfx
  rw [AlgHom.map_add, AlgHom.map_mul, hfx, zero_mul, add_zero]
  have : degree (p %ₘ f) ≤ degree f := degree_modByMonic_le p hfm
  generalize p %ₘ f = q at this ⊢
  rw [← sum_C_mul_X_pow_eq q, aeval_def, eval₂_sum, sum_def]
  refine' sum_mem fun k hkq => _
  rw [eval₂_mul, eval₂_C, eval₂_pow, eval₂_X, ← Algebra.smul_def]
  refine' smul_mem _ _ (subset_span _)
  rw [Finset.mem_coe]; refine' Finset.mem_image.2 ⟨_, _, rfl⟩
  rw [Finset.mem_range, Nat.lt_succ_iff]; refine' le_of_not_lt fun hk => _
  rw [degree_le_iff_coeff_zero] at this
  rw [mem_support_iff] at hkq; apply hkq; apply this
  exact lt_of_le_of_lt degree_le_natDegree (WithBot.coe_lt_coe.2 hk)
#align fg_adjoin_singleton_of_integral FG_adjoin_singleton_of_integral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29df876472ed81a1a197bc618f845bfeffda252c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
