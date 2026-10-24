# eulerProduct_hasProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "957605101c128a359c8d8b3ea64cb8de69bf1fbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f79cb5d2-1ff9-5cbf-d9f3-bd4c5eced606",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b39fe78e-ea3f-1b92-5080-4d1b2a71a25b",
  "kind": "theorem",
  "lexical_name": "eulerProduct_hasProd",
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
  "slug": "eulerproduct-hasprod--01830c0b08d71405a0b2debf",
  "source": {
    "blob": "957605101c128a359c8d8b3ea64cb8de69bf1fbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 170,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01830c0b08d71405a0b2debf312b83acd4b8929edc1a2bb54662d739997b29a1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b39fe78e-ea3f-1b92-5080-4d1b2a71a25b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eulerProduct_hasProd (hsum : Summable (‖f ·‖)) (hf₀ : f 0 = 0) :
    HasProd (fun p : Primes ↦ ∑' e, f (p ^ e)) (∑' n, f n) := by
  let F : ℕ → R := fun n ↦ ∑' e, f (n ^ e)
  change HasProd (F ∘ Subtype.val) _
  rw [hasProd_subtype_iff_mulIndicator,
    show Set.mulIndicator (fun p : ℕ ↦ Irreducible p) =  {p | Nat.Prime p}.mulIndicator from rfl,
    HasProd, Metric.tendsto_atTop]
  intro ε hε
  obtain ⟨N₀, hN₀⟩ := norm_tsum_factoredNumbers_sub_tsum_lt hsum.of_norm hf₀ hε
  refine ⟨range N₀, fun s hs ↦ ?_⟩
  have : ∏ p ∈ s, {p | Nat.Prime p}.mulIndicator F p = ∏ p ∈ s with p.Prime, F p :=
    prod_mulIndicator_eq_prod_filter s (fun _ ↦ F) _ id
  rw [this, dist_eq_norm, prod_filter_prime_tsum_eq_tsum_factoredNumbers hf₁ hmul hsum,
    norm_sub_rev]
  exact hN₀ s fun p hp ↦ hs <| mem_range.mpr <| lt_of_mem_primesBelow hp

include hf₁ hmul in
/-- The *Euler Product* for multiplicative (on coprime arguments) functions.

If `f : ℕ → R`, where `R` is a complete normed commutative ring, `f 0 = 0`, `f 1 = 1`, `f` i
multiplicative on coprime arguments, and `‖f ·‖` is summable, then
`∏' p : ℕ, if p.Prime then ∑' e, f (p ^ e) else 1 = ∑' n, f n`.
This version is stated using `HasProd` and `Set.mulIndicator`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957605101c128a359c8d8b3ea64cb8de69bf1fbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
