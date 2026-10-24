# Ideal.mem_minimalPrimes_span_of_mem_minimalPrimes_span_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7224db578768f05f3dcd1859c50a2b7dabb63cf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2597e88-149f-b627-04c2-6ffc19b147c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd730423-41fd-86be-7b43-2666b7e90f6a",
  "kind": "theorem",
  "lexical_name": "Ideal.mem_minimalPrimes_span_of_mem_minimalPrimes_span_insert",
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
  "slug": "ideal-mem-minimalprimes-span-of-mem-minimalprimes-span-insert--cc38a47e502ff1710f4a43e8",
  "source": {
    "blob": "7224db578768f05f3dcd1859c50a2b7dabb63cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 114,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc38a47e502ff1710f4a43e8b7b501fbc071d7fb2f6625d99405d13c776284b5",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd730423-41fd-86be-7b43-2666b7e90f6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.mem_minimalPrimes_span_of_mem_minimalPrimes_span_insert {q p : Ideal R} [q.IsPrime]
    (hqp : q < p) (x : R) (s : Set R) (hp : p ∈ (span (insert x s)).minimalPrimes)
    (t : Set R) (htq : t ⊆ q) (hsp : s ⊆ (span (insert x t)).radical) :
    q ∈ (span t).minimalPrimes := by
  let f := Quotient.mk (span t)
  have hf : Function.Surjective f := Quotient.mk_surjective
  have hI'q : span t ≤ q := span_le.mpr htq
  have hI'p : span t ≤ p := hI'q.trans hqp.le
  have := minimalPrimes_isPrime hp
  have : (p.map f).IsPrime := map_isPrime_of_surjective hf (by rwa [mk_ker])
  suffices h : (p.map f).height ≤ 1 by
    have h_lt : q.map f < p.map f := (map_mono hqp.le).lt_of_not_le fun e ↦ hqp.not_le <| by
      simpa only [comap_map_of_surjective f hf, ← RingHom.ker_eq_comap_bot, f, mk_ker,
        sup_eq_left.mpr hI'q, sup_eq_left.mpr hI'p] using comap_mono (f := f) e
    have : (q.map f).IsPrime := map_isPrime_of_surjective hf (by rwa [mk_ker])
    have : (p.map f).FiniteHeight := ⟨Or.inr (h.trans_lt (WithTop.coe_lt_top 1)).ne⟩
    rw [height_eq_primeHeight] at h
    have := (primeHeight_strict_mono h_lt).trans_le h
    rw [ENat.lt_one_iff_eq_zero, primeHeight_eq_zero_iff] at this
    have := minimal_primes_comap_of_surjective hf this
    rwa [comap_map_of_surjective f hf, ← RingHom.ker_eq_comap_bot,
      mk_ker, sup_eq_left.mpr hI'q] at this
  refine height_le_one_of_isPrincipal_of_mem_minimalPrimes ((span {x}).map f) (p.map f) ⟨⟨this,
    map_mono <| span_le.mpr <| Set.singleton_subset_iff.mpr <| hp.1.2 <| subset_span <| .inl rfl⟩,
    fun r ⟨hr, hxr⟩ hrp ↦ map_le_iff_le_comap.mpr (hp.2 ⟨hr.comap f, ?_⟩ ?_)⟩
  · rw [span_le, Set.insert_subset_iff]
    have := map_le_iff_le_comap.mp hxr (subset_span rfl)
    refine ⟨this, hsp.trans ((hr.comap f).isRadical.radical_le_iff.mpr ?_)⟩
    rw [span_le, Set.insert_subset_iff]
    exact ⟨this, span_le.mp (mk_ker.symm.trans_le (ker_le_comap _))⟩
  · conv_rhs => rw [← sup_eq_left.mpr hI'p, ← (span t).mk_ker, RingHom.ker_eq_comap_bot,
      ← comap_map_of_surjective f hf p]
    exact comap_mono hrp

open IsLocalRing in
/-- **Krull's height theorem** (also known as **Krullscher Höhensatz**) :
  In a commutative Noetherian ring `R`, any prime ideal that is minimal over an ideal generated
  by `n` elements has height at most `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7224db578768f05f3dcd1859c50a2b7dabb63cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
