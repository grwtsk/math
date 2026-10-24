# Ideal.exists_comap_eq_of_mem_minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86456377-b96b-4cb7-bce1-75c866c188e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17d78fa8-779b-4cb8-7b37-e9ab3e7052e3",
  "kind": "theorem",
  "lexical_name": "Ideal.exists_comap_eq_of_mem_minimalPrimes",
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
  "slug": "ideal-exists-comap-eq-of-mem-minimalprimes--a8546fec93a40bc90296c9ba",
  "source": {
    "blob": "abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 123,
    "path": "GRWTSK/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8546fec93a40bc90296c9ba461c361e19dc9c1848d26712547d88265d280ff5",
  "verification": {
    "reference": "docs/verification/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17d78fa8-779b-4cb8-7b37-e9ab3e7052e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.exists_comap_eq_of_mem_minimalPrimes {I : Ideal S} (f : R →+* S) (p)
    (H : p ∈ (I.comap f).minimalPrimes) : ∃ p' : Ideal S, p'.IsPrime ∧ I ≤ p' ∧ p'.comap f = p := by
  have := H.1.1
  let f' := (Ideal.Quotient.mk I).comp f
  have e : RingHom.ker f' = I.comap f := by
    ext1
    exact Submodule.Quotient.mk_eq_zero _
  have : RingHom.ker (Ideal.Quotient.mk <| RingHom.ker f') ≤ p := by
    rw [Ideal.mk_ker, e]
    exact H.1.2
  suffices _ by
    have ⟨p', hp₁, hp₂⟩ := Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective
      (RingHom.kerLift_injective f') (p.map <| Ideal.Quotient.mk <| RingHom.ker f') this
    refine' ⟨p'.comap <| Ideal.Quotient.mk I, Ideal.IsPrime.comap _, _, _⟩
    · exact Ideal.mk_ker.symm.trans_le (Ideal.comap_mono bot_le)
    · convert congr_arg (Ideal.comap <| Ideal.Quotient.mk <| RingHom.ker f') hp₂
      rwa [Ideal.comap_map_of_surjective (Ideal.Quotient.mk <| RingHom.ker f')
        Ideal.Quotient.mk_surjective, eq_comm, sup_eq_left]
  refine' ⟨⟨_, bot_le⟩, _⟩
  · apply Ideal.map_isPrime_of_surjective _ this
    exact Ideal.Quotient.mk_surjective
  · rintro q ⟨hq, -⟩ hq'
    rw [← Ideal.map_comap_of_surjective
        (Ideal.Quotient.mk (RingHom.ker ((Ideal.Quotient.mk I).comp f)))
        Ideal.Quotient.mk_surjective q]
    apply Ideal.map_mono
    apply H.2
    · refine' ⟨inferInstance, (Ideal.mk_ker.trans e).symm.trans_le (Ideal.comap_mono bot_le)⟩
    · refine' (Ideal.comap_mono hq').trans _
      rw [Ideal.comap_map_of_surjective]
      exacts [sup_le rfl.le this, Ideal.Quotient.mk_surjective]
#align ideal.exists_comap_eq_of_mem_minimal_primes Ideal.exists_comap_eq_of_mem_minimalPrimes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
