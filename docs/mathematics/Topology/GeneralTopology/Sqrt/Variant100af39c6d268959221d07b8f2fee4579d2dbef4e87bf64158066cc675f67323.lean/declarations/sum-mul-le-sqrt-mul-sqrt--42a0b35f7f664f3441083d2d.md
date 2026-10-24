# sum_mul_le_sqrt_mul_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54a31b281af483b92946afebaf5e7233b410a7e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71f60e77-23c3-d6ab-5913-abd665232a25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcef483f-7424-627b-ee45-9a218250d4ee",
  "kind": "lemma",
  "lexical_name": "sum_mul_le_sqrt_mul_sqrt",
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
  "slug": "sum-mul-le-sqrt-mul-sqrt--42a0b35f7f664f3441083d2d",
  "source": {
    "blob": "54a31b281af483b92946afebaf5e7233b410a7e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 417,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42a0b35f7f664f3441083d2d8e68e47650fef5b5c636ebf4a295ece5c9343d4f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcef483f-7424-627b-ee45-9a218250d4ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_mul_le_sqrt_mul_sqrt (s : Finset ι) (f g : ι → ℝ≥0) :
    ∑ i ∈ s, f i * g i ≤ sqrt (∑ i ∈ s, f i ^ 2) * sqrt (∑ i ∈ s, g i ^ 2) :=
  (le_sqrt_iff_sq_le.2 <| sum_mul_sq_le_sq_mul_sq _ _ _).trans_eq <| sqrt_mul _ _

/-- **Cauchy-Schwarz inequality** for finsets using square roots in `ℝ≥0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54a31b281af483b92946afebaf5e7233b410a7e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
