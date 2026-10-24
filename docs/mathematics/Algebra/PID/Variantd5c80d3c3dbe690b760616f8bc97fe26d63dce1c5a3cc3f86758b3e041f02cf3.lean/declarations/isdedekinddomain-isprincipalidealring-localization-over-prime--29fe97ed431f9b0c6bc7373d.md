# IsDedekindDomain.isPrincipalIdealRing_localization_over_prime

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
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5c80d3c3dbe690b760616f8bc97fe26d63dce1c5a3cc3f86758b3e041f02cf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddcef16c-f58f-8cf2-9d6e-fd1d4b20990f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc751f77-237a-3aee-a1e8-ba8f1be08ceb",
  "kind": "theorem",
  "lexical_name": "IsDedekindDomain.isPrincipalIdealRing_localization_over_prime",
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
  "slug": "isdedekinddomain-isprincipalidealring-localization-over-prime--29fe97ed431f9b0c6bc7373d",
  "source": {
    "blob": "1d55b63bcf5ee2e9f38e854fc0bc15e6651a3c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 226,
    "path": "GRWTSK/Algebra/PID/Variantd5c80d3c3dbe690b760616f8bc97fe26d63dce1c5a3cc3f86758b3e041f02cf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29fe97ed431f9b0c6bc7373d16dba156b5b844d99b073275e2273947b0d4a7b0",
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

Occurrence: `result:bc751f77-237a-3aee-a1e8-ba8f1be08ceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsDedekindDomain.isPrincipalIdealRing_localization_over_prime [IsDomain S] :
    IsPrincipalIdealRing Sₚ := by
  let := Classical.decEq (Ideal Sₚ)
  let := Classical.decPred fun P : Ideal Sₚ => P.IsPrime
  refine
    IsPrincipalIdealRing.of_finite_primes
      (Set.Finite.ofFinset
        {P ∈ {⊥} ∪ (normalizedFactors (Ideal.map (algebraMap R Sₚ) p)).toFinset | P.IsPrime}
        fun P => ?_)
  rw [Finset.mem_filter, Finset.mem_union, Finset.mem_singleton, Set.mem_ofPred,
    Multiset.mem_toFinset]
  exact
    and_iff_right_of_imp fun hP =>
      or_iff_not_imp_left.mpr (IsLocalization.OverPrime.mem_normalizedFactors_of_isPrime S p hp0 hP)
end

-- not an instance because this might cause a timeout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variantd5c80d3c3dbe690b760616f8bc97fe26d63dce1c5a3cc3f86758b3e041f02cf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variantd5c80d3c3dbe690b760616f8bc97fe26d63dce1c5a3cc3f86758b3e041f02cf3.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d55b63bcf5ee2e9f38e854fc0bc15e6651a3c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
