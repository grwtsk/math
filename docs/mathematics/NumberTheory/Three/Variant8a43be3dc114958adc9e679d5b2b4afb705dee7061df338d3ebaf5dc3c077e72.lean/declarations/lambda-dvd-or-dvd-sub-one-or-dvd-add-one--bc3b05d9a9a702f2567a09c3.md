# lambda_dvd_or_dvd_sub_one_or_dvd_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0420308-c205-1c0c-34bc-3514a553e958",
  "kind": "lemma",
  "lexical_name": "lambda_dvd_or_dvd_sub_one_or_dvd_add_one",
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
  "slug": "lambda-dvd-or-dvd-sub-one-or-dvd-add-one--bc3b05d9a9a702f2567a09c3",
  "source": {
    "blob": "60210ab3a64884e590b421544045b0fad89637b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc3b05d9a9a702f2567a09c39ca08f8e12f7bcf6d6a7ccaa0775ca50a033bc0b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0420308-c205-1c0c-34bc-3514a553e958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lambda_dvd_or_dvd_sub_one_or_dvd_add_one [NumberField K] [IsCyclotomicExtension {3} ℚ K] :
    λ ∣ x ∨ λ ∣ x - 1 ∨ λ ∣ x + 1 := by
  classical
  have := hζ.finite_quotient_toInteger_sub_one (by decide)
  let _ := Fintype.ofFinite (𝓞 K ⧸ Ideal.span {λ})
  let _ : Ring (𝓞 K ⧸ Ideal.span {λ}) := CommRing.toRing -- to speed up instance synthesis
  let _ : AddGroup (𝓞 K ⧸ Ideal.span {λ}) := AddGroupWithOne.toAddGroup -- ditto
  have := Finset.mem_univ (Ideal.Quotient.mk (Ideal.span {λ}) x)
  have h3 : Fintype.card (𝓞 K ⧸ Ideal.span {λ}) = 3 := by
    rw [← Nat.card_eq_fintype_card, hζ.card_quotient_toInteger_sub_one,
      hζ.norm_toInteger_sub_one_of_prime_ne_two' (by decide)]
    simp only [PNat.val_ofNat, Nat.cast_ofNat, Int.reduceAbs]
  rw [Finset.univ_of_card_le_three h3.le] at this
  simp only [Finset.mem_insert, Finset.mem_singleton] at this
  rcases this with h | h | h
  · left
    exact Ideal.mem_span_singleton.1 <| Ideal.Quotient.eq_zero_iff_mem.1 h
  · right; left
    refine Ideal.mem_span_singleton.1 <| Ideal.Quotient.eq_zero_iff_mem.1 ?_
    rw [RingHom.map_sub, h, RingHom.map_one, sub_self]
  · right; right
    refine Ideal.mem_span_singleton.1 <| Ideal.Quotient.eq_zero_iff_mem.1 ?_
    rw [RingHom.map_add, h, RingHom.map_one, neg_add_cancel]

/-- We have that `η ^ 2 + η + 1 = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60210ab3a64884e590b421544045b0fad89637b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
