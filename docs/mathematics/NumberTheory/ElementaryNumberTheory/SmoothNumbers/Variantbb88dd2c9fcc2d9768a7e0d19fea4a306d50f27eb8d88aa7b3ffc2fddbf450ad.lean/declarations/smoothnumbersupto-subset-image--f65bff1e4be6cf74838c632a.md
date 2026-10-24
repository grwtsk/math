# smoothNumbersUpTo_subset_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b2a2a96-1042-ab77-47b3-9f78b9a87b43",
  "kind": "lemma",
  "lexical_name": "smoothNumbersUpTo_subset_image",
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
  "slug": "smoothnumbersupto-subset-image--f65bff1e4be6cf74838c632a",
  "source": {
    "blob": "751fa97f4ef7f27f3c4b9addb4c168314569c3fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 441,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f65bff1e4be6cf74838c632ae36b657215b2636903f9e7827db2a23e09dcbf2b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b2a2a96-1042-ab77-47b3-9f78b9a87b43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smoothNumbersUpTo_subset_image (N k : ℕ) :
    smoothNumbersUpTo N k ⊆ Finset.image (fun (s, m) ↦ m ^ 2 * (s.prod id))
      (k.primesBelow.powerset ×ˢ (Finset.range (N.sqrt + 1)).erase 0) := by
  intro n hn
  obtain ⟨hn₁, hn₂⟩ := mem_smoothNumbersUpTo.mp hn
  obtain ⟨s, hs, m, hm⟩ := eq_prod_primes_mul_sq_of_mem_smoothNumbers hn₂
  simp only [id_eq, Finset.mem_range, Finset.mem_image,
    Finset.mem_product, Finset.mem_powerset, Finset.mem_erase, Prod.exists]
  refine ⟨s, m, ⟨Finset.mem_powerset.mp hs, ?_, ?_⟩, hm.symm⟩
  · have := hm ▸ ne_zero_of_mem_smoothNumbers hn₂
    simp only [ne_eq, _root_.mul_eq_zero, sq_eq_zero_iff, not_or] at this
    exact this.1
  · rw [Nat.lt_succ_iff, le_sqrt']
    refine LE.le.trans ?_ (hm ▸ hn₁)
    nth_rw 1 [← mul_one (m ^ 2)]
    gcongr
    exact Finset.one_le_prod fun p hp ↦
      (prime_of_mem_primesBelow <| Finset.mem_powerset.mp hs hp).one_le

/-- The cardinality of the set of `k`-smooth numbers `≤ N` is bounded by `2^π(k-1) * √N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `751fa97f4ef7f27f3c4b9addb4c168314569c3fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
