# minimalPrimes_annihilator_subset_associatedPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c528dcb35486378f280d54c315ed9455c59f677",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79c996b9d74688ec83cdbc03be980bad3c0de8f478101f4c998ad1ad5ae67b39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebfb81f3-162f-9bfb-4ce7-36bb66145e2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b78dbcfd-020e-dfb7-51ed-b7e1ca26eb2c",
  "kind": "lemma",
  "lexical_name": "minimalPrimes_annihilator_subset_associatedPrimes",
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
  "slug": "minimalprimes-annihilator-subset-associatedprimes--2f86f4e39553b2ecdae1da4d",
  "source": {
    "blob": "1c528dcb35486378f280d54c315ed9455c59f677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant79c996b9d74688ec83cdbc03be980bad3c0de8f478101f4c998ad1ad5ae67b39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f86f4e39553b2ecdae1da4d7a9345d6df1bde27031af5319c82b7bbf3eedc8f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Localization/Variant79c996b9d74688ec83cdbc03be980bad3c0de8f478101f4c998ad1ad5ae67b39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b78dbcfd-020e-dfb7-51ed-b7e1ca26eb2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma minimalPrimes_annihilator_subset_associatedPrimes [IsNoetherianRing R] [Module.Finite R M] :
    (Module.annihilator R M).minimalPrimes ⊆ associatedPrimes R M := by
  intro p hp
  have prime := hp.isPrime
  let Rₚ := Localization.AtPrime p
  have : Nontrivial (LocalizedModule p.primeCompl M) := by
    simpa [← Module.mem_support_iff (p := ⟨p, prime⟩), Module.support_eq_zeroLocus] using! hp.1.2
  rcases associatedPrimes.nonempty Rₚ (LocalizedModule p.primeCompl M) with ⟨q, hq⟩
  have q_prime : q.IsPrime := IsAssociatedPrime.isPrime hq
  simp only [← preimage_comap_associatedPrimes_eq_associatedPrimes_of_isLocalizedModule p.primeCompl
    Rₚ (LocalizedModule.mkLinearMap p.primeCompl M), Set.mem_preimage] at hq
  have ann_le : Module.annihilator R M ≤ Ideal.comap (algebraMap R Rₚ) q :=
    le_of_eq_of_le Submodule.annihilator_top.symm (IsAssociatedPrime.annihilator_le hq)
  have le : Ideal.comap (algebraMap R Rₚ) q ≤ p := by
    have := (IsLocalization.disjoint_under_iff p.primeCompl Rₚ q).mpr q_prime.ne_top
    simpa only [Ideal.primeCompl, Submonoid.coe_set_mk, Subsemigroup.coe_set_mk,
      Set.disjoint_compl_left_iff_subset] using! this
  simpa [Minimal.eq_of_le hp.out ⟨IsAssociatedPrime.isPrime hq, ann_le⟩ le] using! hq

end Module.associatedPrimes
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variant79c996b9d74688ec83cdbc03be980bad3c0de8f478101f4c998ad1ad5ae67b39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variant79c996b9d74688ec83cdbc03be980bad3c0de8f478101f4c998ad1ad5ae67b39.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c528dcb35486378f280d54c315ed9455c59f677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
