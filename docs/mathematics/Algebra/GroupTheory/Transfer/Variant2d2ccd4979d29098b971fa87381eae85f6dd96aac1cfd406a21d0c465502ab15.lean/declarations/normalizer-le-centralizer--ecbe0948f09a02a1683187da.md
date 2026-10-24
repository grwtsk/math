# normalizer_le_centralizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d938268f96e7bb9c3981cc60c51fc4f0081960a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e776612-9a44-c5b6-d761-5cf2ba41935d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:550b2c72-daed-d8f0-7b99-5cfbf95aab5c",
  "kind": "theorem",
  "lexical_name": "normalizer_le_centralizer",
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
  "slug": "normalizer-le-centralizer--ecbe0948f09a02a1683187da",
  "source": {
    "blob": "d938268f96e7bb9c3981cc60c51fc4f0081960a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 306,
    "path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecbe0948f09a02a1683187daacf6e55e33e2288124b48240044d3e7bcc523764",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:550b2c72-daed-d8f0-7b99-5cfbf95aab5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizer_le_centralizer (hP : IsCyclic P) : P.normalizer ≤ centralizer (P : Set G) := by
  subst hp
  by_cases hn : Nat.card G = 1
  · have := (Nat.card_eq_one_iff_unique.mp hn).1
    rw [Subsingleton.elim P.normalizer (centralizer P)]
  have := Fact.mk (Nat.minFac_prime hn)
  have key := card_dvd_of_injective _ (QuotientGroup.kerLift_injective P.normalizerMonoidHom)
  rw [normalizerMonoidHom_ker, ← index, ← relindex] at key
  refine relindex_eq_one.mp (Nat.eq_one_of_dvd_coprimes ?_ dvd_rfl key)
  obtain ⟨k, hk⟩ := P.2.exists_card_eq
  rcases eq_zero_or_pos k with h0 | h0
  · rw [hP.card_mulAut, hk, h0, pow_zero, Nat.totient_one]
    apply Nat.coprime_one_right
  rw [hP.card_mulAut, hk, Nat.totient_prime_pow Fact.out h0]
  refine (Nat.Coprime.pow_right _ ?_).mul_right ?_
  · apply Nat.Coprime.coprime_dvd_left (relindex_dvd_of_le_left P.normalizer P.le_centralizer)
    apply Nat.Coprime.coprime_dvd_left (relindex_dvd_index_of_le P.le_normalizer)
    rw [Nat.coprime_comm, Nat.Prime.coprime_iff_not_dvd Fact.out]
    exact P.not_dvd_index
  · apply Nat.Coprime.coprime_dvd_left (relindex_dvd_card (centralizer P) P.normalizer)
    apply Nat.Coprime.coprime_dvd_left (card_subgroup_dvd_card P.normalizer)
    have h1 := Nat.gcd_dvd_left (Nat.card G) ((Nat.card G).minFac - 1)
    have h2 := Nat.gcd_le_right (n := (Nat.card G).minFac - 1) (Nat.card G)
      (tsub_pos_iff_lt.mpr (Nat.minFac_prime hn).one_lt)
    contrapose! h2
    refine Nat.sub_one_lt_of_le (Nat.card G).minFac_pos (Nat.minFac_le_of_dvd ?_ h1)
    exact (Nat.two_le_iff _).mpr ⟨ne_zero_of_dvd_ne_zero Nat.card_pos.ne' h1, h2⟩

include hp in
/-- A cyclic Sylow subgroup for the smallest prime has a normal complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d938268f96e7bb9c3981cc60c51fc4f0081960a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
