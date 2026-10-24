# Ideal.exists_minimalPrimes_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eef315479f205954d60ea96df5814a88600e378a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df5589c1-cf19-31cd-61f0-c20b70556a1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7c1f091-9bfa-a8a7-6d93-ebc0042ed4bf",
  "kind": "theorem",
  "lexical_name": "Ideal.exists_minimalPrimes_le",
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
  "slug": "ideal-exists-minimalprimes-le--fcfa45dd2fc683483d1c4874",
  "source": {
    "blob": "eef315479f205954d60ea96df5814a88600e378a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 52,
    "path": "GRWTSK/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcfa45dd2fc683483d1c4874d68df929b13e1fb675829038022490fb7fa884f9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7c1f091-9bfa-a8a7-6d93-ebc0042ed4bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.exists_minimalPrimes_le [J.IsPrime] (e : I ≤ J) : ∃ p ∈ I.minimalPrimes, p ≤ J := by
  set S := { p : (Ideal R)ᵒᵈ | Ideal.IsPrime p ∧ I ≤ OrderDual.ofDual p }
  suffices h : ∃ m, OrderDual.toDual J ≤ m ∧ Maximal (· ∈ S) m by
    obtain ⟨p, hJp, hp⟩ := h
    exact ⟨p, ⟨hp.prop, fun q hq hle ↦ hp.le_of_ge hq hle⟩, hJp⟩
  apply zorn_le_nonempty₀
  swap
  · refine ⟨show J.IsPrime by infer_instance, e⟩
  rintro (c : Set (Ideal R)) hc hc' J' hJ'
  refine
    ⟨OrderDual.toDual (sInf c),
      ⟨Ideal.sInf_isPrime_of_isChain ⟨J', hJ'⟩ hc'.symm fun x hx => (hc hx).1, ?_⟩, ?_⟩
  · rw [OrderDual.ofDual_toDual, le_sInf_iff]
    exact fun _ hx => (hc hx).2
  · rintro z hz
    rw [OrderDual.le_toDual]
    exact sInf_le hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eef315479f205954d60ea96df5814a88600e378a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
