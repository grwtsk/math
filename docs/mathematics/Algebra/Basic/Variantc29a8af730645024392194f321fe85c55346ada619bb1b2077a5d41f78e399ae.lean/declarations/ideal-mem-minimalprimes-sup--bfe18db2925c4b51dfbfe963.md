# Ideal.mem_minimalPrimes_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46939e4ed3a83b5b98b3c356e2ded49502caef55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cbdef7a-6dde-2367-6b51-240d68508a65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f64b344-4bb9-6a57-2161-755149118718",
  "kind": "lemma",
  "lexical_name": "Ideal.mem_minimalPrimes_sup",
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
  "slug": "ideal-mem-minimalprimes-sup--bfe18db2925c4b51dfbfe963",
  "source": {
    "blob": "46939e4ed3a83b5b98b3c356e2ded49502caef55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 178,
    "path": "GRWTSK/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfe18db2925c4b51dfbfe963e747c618057fdd676bef376b1111d0d2480292b7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f64b344-4bb9-6a57-2161-755149118718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.mem_minimalPrimes_sup {R : Type*} [CommRing R] {p I J : Ideal R} [p.IsPrime]
    (hle : I ≤ p) (h : p.map (Ideal.Quotient.mk I) ∈ (J.map (Ideal.Quotient.mk I)).minimalPrimes) :
    p ∈ (I ⊔ J).minimalPrimes := by
  refine ⟨⟨‹_›, ?_⟩, fun q ⟨_, hq⟩ hqp ↦ ?_⟩
  · rw [sup_le_iff]
    refine ⟨hle, by simpa [hle] using Ideal.comap_mono (f := Ideal.Quotient.mk I) h.le⟩
  · rw [sup_le_iff] at hq
    have h2 : p.map (Quotient.mk I) ≤ q.map (Quotient.mk I) :=
      h.2 ⟨isPrime_map_quotientMk_of_isPrime hq.1, map_mono hq.2⟩ (map_mono hqp)
    simpa [comap_map_quotientMk, hq.1, sup_le_iff] using comap_mono (f := Ideal.Quotient.mk I) h2

variable {S : Type*} [CommRing S] [Algebra R S]

/-- If `P` lies over `p`, `p` is a minimal prime over `I` and the image of `P` is
a minimal prime over the image of `J` in `S ⧸ p S`, then `P` is a minimal prime
over `I S ⊔ J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46939e4ed3a83b5b98b3c356e2ded49502caef55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
