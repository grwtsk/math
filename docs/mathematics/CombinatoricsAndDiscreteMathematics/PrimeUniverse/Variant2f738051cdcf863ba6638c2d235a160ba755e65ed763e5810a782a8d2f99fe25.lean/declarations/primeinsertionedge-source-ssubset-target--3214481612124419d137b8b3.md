# PrimeInsertionEdge.source_ssubset_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccf1c6a8cd8746d934bcb23180b0c6b5cd7a6f55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d62e78f-0744-7b43-67da-34b5b2095c18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aada19c4-1ae2-2bbd-9af0-5c3222ddd8c2",
  "kind": "theorem",
  "lexical_name": "PrimeInsertionEdge.source_ssubset_target",
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
  "slug": "primeinsertionedge-source-ssubset-target--3214481612124419d137b8b3",
  "source": {
    "blob": "ccf1c6a8cd8746d934bcb23180b0c6b5cd7a6f55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3214481612124419d137b8b3670bda847a03231d029dc8779d9d17a7ae0d568a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aada19c4-1ae2-2bbd-9af0-5c3222ddd8c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimeInsertionEdge.source_ssubset_target
    {primeUniverse : FinitePrimeUniverse}
    (edge : PrimeInsertionEdge primeUniverse) :
    edge.source ⊂ edge.target := by
  exact Finset.ssubset_iff_subset_ne.mpr
    ⟨Finset.subset_insert _ _, by
      intro equality
      have :
          edge.prime ∈ edge.source := by
        rw [equality]
        exact Finset.mem_insert_self _ _
      exact edge.prime_not_mem this⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf1c6a8cd8746d934bcb23180b0c6b5cd7a6f55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
