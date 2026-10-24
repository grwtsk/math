# IsLocalization.AtPrime.radical_map_of_mem_minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a18c357-1d47-c05b-780e-9601c8960e2c",
  "kind": "theorem",
  "lexical_name": "IsLocalization.AtPrime.radical_map_of_mem_minimalPrimes",
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
  "slug": "islocalization-atprime-radical-map-of-mem-minimalprimes--70ccf8f2f4fcfdf2762429f1",
  "source": {
    "blob": "e43118f69e85425959adf7fb0b539eb5f6498bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 220,
    "path": "GRWTSK/Algebra/Localization/Variant8109f70194f46b41c0a066b8018879443e4b4c5de4bec11840ddc12676b1961e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70ccf8f2f4fcfdf2762429f1ffcc3719c24966b7f62c50a94306bab9a6e373c4",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant8109f70194f46b41c0a066b8018879443e4b4c5de4bec11840ddc12676b1961e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a18c357-1d47-c05b-780e-9601c8960e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.AtPrime.radical_map_of_mem_minimalPrimes
    (q : Ideal R) [hqp : q.IsPrime] [IsLocalization.AtPrime A q]
    (I : Ideal R) (hIq : q ∈ I.minimalPrimes) :
    (I.map (algebraMap R A)).radical = q.map (algebraMap R A) := by
  have : IsLocalRing A := AtPrime.isLocalRing A q
  rw [← Ideal.sInf_minimalPrimes, IsLocalization.minimalPrimes_map q.primeCompl A I]
  refine le_antisymm (sInf_le ?_) (le_sInf fun J hJ ↦ ?_)
  · rwa [Set.mem_preimage, map_eq_maximalIdeal q A, under_maximalIdeal A q]
  · rw [← IsLocalization.under_le_under_iff q.primeCompl A,
      AtPrime.map_eq_maximalIdeal q A, AtPrime.under_maximalIdeal A q]
    apply hIq.2 hJ.1
    have := hJ.isPrime.ne_top
    rw [ne_eq, Ideal.comap_eq_top_iff, ← ne_eq, ← disjoint_under_iff q.primeCompl A J] at this
    exact Set.disjoint_compl_left_iff_subset.mp this

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant8109f70194f46b41c0a066b8018879443e4b4c5de4bec11840ddc12676b1961e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant8109f70194f46b41c0a066b8018879443e4b4c5de4bec11840ddc12676b1961e.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e43118f69e85425959adf7fb0b539eb5f6498bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
