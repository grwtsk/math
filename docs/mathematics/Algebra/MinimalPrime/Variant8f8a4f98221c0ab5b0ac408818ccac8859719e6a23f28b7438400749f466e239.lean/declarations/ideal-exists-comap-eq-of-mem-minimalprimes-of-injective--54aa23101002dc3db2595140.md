# Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective

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
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4dce4d6-b807-9d29-0158-504bbfad4d36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:165c53f9-85c3-3b20-8fa9-30256ad889d7",
  "kind": "theorem",
  "lexical_name": "Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective",
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
  "slug": "ideal-exists-comap-eq-of-mem-minimalprimes-of-injective--54aa23101002dc3db2595140",
  "source": {
    "blob": "abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 99,
    "path": "GRWTSK/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54aa23101002dc3db2595140369a853150da94b1039b71b3f78a33d19b140be3",
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

Occurrence: `result:165c53f9-85c3-3b20-8fa9-30256ad889d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective {f : R →+* S}
    (hf : Function.Injective f) (p) (H : p ∈ minimalPrimes R) :
    ∃ p' : Ideal S, p'.IsPrime ∧ p'.comap f = p := by
  have := H.1.1
  have : Nontrivial (Localization (Submonoid.map f p.primeCompl)) := by
    refine' ⟨⟨1, 0, _⟩⟩
    convert (IsLocalization.map_injective_of_injective p.primeCompl (Localization.AtPrime p)
        (Localization <| p.primeCompl.map f) hf).ne one_ne_zero
    · rw [map_one]
    · rw [map_zero]
  obtain ⟨M, hM⟩ := Ideal.exists_maximal (Localization (Submonoid.map f p.primeCompl))
  refine' ⟨M.comap (algebraMap S <| Localization (Submonoid.map f p.primeCompl)), inferInstance, _⟩
  rw [Ideal.comap_comap, ← @IsLocalization.map_comp _ _ _ _ _ _ _ _ Localization.isLocalization
      _ _ _ _ p.primeCompl.le_comap_map _ Localization.isLocalization,
    ← Ideal.comap_comap]
  suffices _ ≤ p by exact this.antisymm (H.2 ⟨inferInstance, bot_le⟩ this)
  intro x hx
  by_contra h
  apply hM.ne_top
  apply M.eq_top_of_isUnit_mem hx
  apply IsUnit.map
  apply IsLocalization.map_units _ (show p.primeCompl from ⟨x, h⟩)
#align ideal.exists_comap_eq_of_mem_minimal_primes_of_injective Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
