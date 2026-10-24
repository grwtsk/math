# IsPrincipalIdealRing.of_isDedekindDomain_of_uniqueFactorizationMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d55b63bcf5ee2e9f38e854fc0bc15e6651a3c9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5c80d3c3dbe690b760616f8bc97fe26d63dce1c5a3cc3f86758b3e041f02cf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53f77795-7637-d1f5-ec74-5dbca9b461c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70277439-aefe-a5e3-b0c6-a52dd003c496",
  "kind": "theorem",
  "lexical_name": "IsPrincipalIdealRing.of_isDedekindDomain_of_uniqueFactorizationMonoid",
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
  "slug": "isprincipalidealring-of-isdedekinddomain-of-uniquefactorizationmonoid--30c50ff28a73d3dccf47653b",
  "source": {
    "blob": "1d55b63bcf5ee2e9f38e854fc0bc15e6651a3c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 243,
    "path": "GRWTSK/Algebra/PID/Variantd5c80d3c3dbe690b760616f8bc97fe26d63dce1c5a3cc3f86758b3e041f02cf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30c50ff28a73d3dccf47653b80a19e09c82883fd48cb1f2301905906fbadcf7a",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variantd5c80d3c3dbe690b760616f8bc97fe26d63dce1c5a3cc3f86758b3e041f02cf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70277439-aefe-a5e3-b0c6-a52dd003c496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrincipalIdealRing.of_isDedekindDomain_of_uniqueFactorizationMonoid
    (R : Type*) [CommRing R] [IsDedekindDomain R] [UniqueFactorizationMonoid R] :
    IsPrincipalIdealRing R := by
  refine .of_prime_ne_bot fun P hp hp₀ ↦ ?_
  obtain ⟨x, hx₁, hx₂⟩ := hp.exists_mem_prime_of_ne_bot hp₀
  suffices Ideal.span {x} = P from this ▸ inferInstance
  have := (Ideal.span_singleton_prime hx₂.ne_zero).mpr hx₂
  exact (Ring.DimensionLeOne.prime_le_prime_iff_eq (by aesop)).mp <|
    P.span_singleton_le_iff_mem.mpr hx₁
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variantd5c80d3c3dbe690b760616f8bc97fe26d63dce1c5a3cc3f86758b3e041f02cf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variantd5c80d3c3dbe690b760616f8bc97fe26d63dce1c5a3cc3f86758b3e041f02cf3.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d55b63bcf5ee2e9f38e854fc0bc15e6651a3c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
