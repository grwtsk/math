# Ideal.mem_minimalPrimes_span_of_mem_minimalPrimes_span_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce55a9c9-6c0b-c72e-c2a2-f85bd46200dc",
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
  "slug": "ideal-mem-minimalprimes-span-of-mem-minimalprimes-span-insert--68ca885f67070a79db471ac4",
  "source": {
    "blob": "94eba5d2ebfd024e76812a0c01883d73bfef1add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 156,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68ca885f67070a79db471ac48f28ade1176af02024b06a39749317e58a2baf8e",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce55a9c9-6c0b-c72e-c2a2-f85bd46200dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–192.

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
  have := hp.isPrime
  have : (p.map f).IsPrime := map_isPrime_of_surjective hf (by rwa [mk_ker])
  suffices h : (p.map f).height ≤ 1 by
    have h_lt : q.map f < p.map f := (map_mono hqp.le).lt_of_not_ge fun e ↦ hqp.not_ge <| by
      simpa only [comap_map_of_surjective f hf, ← RingHom.ker_eq_comap_bot, f, mk_ker,
        sup_eq_left.mpr hI'q, sup_eq_left.mpr hI'p] using comap_mono (f := f) e
    have : (q.map f).IsPrime := map_isPrime_of_surjective hf (by rwa [mk_ker])
    have : (p.map f).FiniteHeight := ⟨Or.inr (h.trans_lt (WithTop.coe_lt_top 1)).ne⟩
    have := (height_strict_mono_of_isPrime_of_isPrime h_lt).trans_le h
    rw [Order.lt_one_iff, height_eq_zero_iff] at this
    have := minimalPrimes_comap_of_surjective hf this
    rwa [comap_map_of_surjective f hf, ← RingHom.ker_eq_comap_bot,
      mk_ker, sup_eq_left.mpr hI'q] at this
  refine height_le_one_of_isPrincipal_of_mem_minimalPrimes ((span {x}).map f) (p.map f) ⟨⟨this,
    map_mono <| span_le.mpr <| Set.singleton_subset_iff.mpr <| hp.le <| subset_span <| .inl rfl⟩,
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

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94eba5d2ebfd024e76812a0c01883d73bfef1add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
