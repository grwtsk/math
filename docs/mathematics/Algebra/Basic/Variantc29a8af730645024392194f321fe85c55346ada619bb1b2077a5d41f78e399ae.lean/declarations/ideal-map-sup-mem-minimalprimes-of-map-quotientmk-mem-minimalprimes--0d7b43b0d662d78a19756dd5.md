# Ideal.map_sup_mem_minimalPrimes_of_map_quotientMk_mem_minimalPrimes

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
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a840465-6d8a-18b1-53ec-69a9e331bc28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4b02e32-fc52-5e1b-e7dd-b133fc20bbeb",
  "kind": "lemma",
  "lexical_name": "Ideal.map_sup_mem_minimalPrimes_of_map_quotientMk_mem_minimalPrimes",
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
  "slug": "ideal-map-sup-mem-minimalprimes-of-map-quotientmk-mem-minimalprimes--0d7b43b0d662d78a19756dd5",
  "source": {
    "blob": "46939e4ed3a83b5b98b3c356e2ded49502caef55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 194,
    "path": "GRWTSK/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d7b43b0d662d78a19756dd52caac675f5ec15125f82fc5c59b3a6a80f675a85",
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

Occurrence: `result:f4b02e32-fc52-5e1b-e7dd-b133fc20bbeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.map_sup_mem_minimalPrimes_of_map_quotientMk_mem_minimalPrimes
    {I p : Ideal R} {P : Ideal S} [P.IsPrime] [P.LiesOver p]
    (hI : p ∈ I.minimalPrimes) {J : Ideal S} (hJP : J ≤ P)
    (hJ : P.map (Ideal.Quotient.mk _) ∈
      (J.map (Ideal.Quotient.mk (p.map (algebraMap R S)))).minimalPrimes) :
    P ∈ (I.map (algebraMap R S) ⊔ J).minimalPrimes := by
  refine ⟨⟨inferInstance, sup_le_iff.mpr ?_⟩, fun q ⟨_, hleq⟩ hqle ↦ ?_⟩
  · refine ⟨?_, hJP⟩
    rw [Ideal.map_le_iff_le_comap, ← Ideal.under_def, ← Ideal.over_def P p]
    exact hI.le
  · simp only [sup_le_iff] at hleq
    have h1 : p.map (algebraMap R S) ≤ q := by
      rw [Ideal.map_le_iff_le_comap]
      refine hI.2 ⟨inferInstance, le_trans Ideal.le_comap_map (Ideal.comap_mono hleq.1)⟩ ?_
      convert! Ideal.comap_mono hqle
      exact Ideal.LiesOver.over
    have h2 : P.map (Ideal.Quotient.mk (p.map (algebraMap R S))) ≤
        q.map (Ideal.Quotient.mk (p.map (algebraMap R S))) :=
      hJ.2 ⟨Ideal.isPrime_map_quotientMk_of_isPrime h1, Ideal.map_mono hleq.2⟩
        (Ideal.map_mono hqle)
    simpa [h1] using Ideal.comap_mono (f := Ideal.Quotient.mk (p.map (algebraMap R S))) h2

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46939e4ed3a83b5b98b3c356e2ded49502caef55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
