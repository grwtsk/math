# dvd_geom_sum₂_iff_of_dvd_sub'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "693c07db5964005f125996f5a04e81b206fe8654",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a64ae7d9-3c7a-51d1-18b2-d94839e83ec6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb5d4f86-3465-786a-786b-05058de34601",
  "kind": "theorem",
  "lexical_name": "dvd_geom_sum₂_iff_of_dvd_sub'",
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
  "slug": "dvd-geom-sum-iff-of-dvd-sub--800963ae7c435789166b2a7d",
  "source": {
    "blob": "693c07db5964005f125996f5a04e81b206fe8654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 46,
    "path": "GRWTSK/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:800963ae7c435789166b2a7dfb7ff2b33a7714257e9aae5831b546d36a695a59",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb5d4f86-3465-786a-786b-05058de34601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_geom_sum₂_iff_of_dvd_sub' {x y p : R} (h : p ∣ x - y) :
    (p ∣ ∑ i ∈ range n, x ^ i * y ^ (n - 1 - i)) ↔ p ∣ n * x ^ (n - 1) := by
  rw [geom_sum₂_comm, dvd_geom_sum₂_iff_of_dvd_sub]; simpa using h.neg_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `693c07db5964005f125996f5a04e81b206fe8654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
