# mem_primeFactorsList_iff_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a8e6a64787a3b19c4b4eb7c2289bf8c3f200f13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdedd89e-ddcf-d60f-4759-a2f285f518eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69dfabc8-ea4c-8dcb-2948-f2df560f02c0",
  "kind": "theorem",
  "lexical_name": "mem_primeFactorsList_iff_dvd",
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
  "slug": "mem-primefactorslist-iff-dvd--c87b2925b7d11ed91c99d96e",
  "source": {
    "blob": "2a8e6a64787a3b19c4b4eb7c2289bf8c3f200f13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 135,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c87b2925b7d11ed91c99d96e7de0a2e31e34c5419433b0103357f299285b0fe7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69dfabc8-ea4c-8dcb-2948-f2df560f02c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_primeFactorsList_iff_dvd {n p : ℕ} (hn : n ≠ 0) (hp : Prime p) :
    p ∈ primeFactorsList n ↔ p ∣ n where
  mp h := prod_primeFactorsList hn ▸ List.dvd_prod h
  mpr h := mem_list_primes_of_dvd_prod (prime_iff.mp hp)
    (fun _ h ↦ prime_iff.mp (prime_of_mem_primeFactorsList h)) ((prod_primeFactorsList hn).symm ▸ h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a8e6a64787a3b19c4b4eb7c2289bf8c3f200f13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
