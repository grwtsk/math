# fst_mem_divisors_of_mem_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c115570f27351d570e19704b0b11f906292dcd47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b8aff936c8bef62acc10bcccc54651bfa498a79d2aaa344d44587882d415f0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d36bf29-1154-2f1a-e965-fb40e58adc5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f16a2de8-4a3c-737c-d928-fa166fda5332",
  "kind": "theorem",
  "lexical_name": "fst_mem_divisors_of_mem_antidiagonal",
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
  "slug": "fst-mem-divisors-of-mem-antidiagonal--1f84df6427d3de0c1a088e06",
  "source": {
    "blob": "c115570f27351d570e19704b0b11f906292dcd47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 330,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Variant5b8aff936c8bef62acc10bcccc54651bfa498a79d2aaa344d44587882d415f0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f84df6427d3de0c1a088e06bae7d8639a7ca8edba85582a54c28e31beb66108",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Variant5b8aff936c8bef62acc10bcccc54651bfa498a79d2aaa344d44587882d415f0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f16a2de8-4a3c-737c-d928-fa166fda5332`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fst_mem_divisors_of_mem_antidiagonal {x : ℕ × ℕ} (h : x ∈ divisorsAntidiagonal n) :
    x.fst ∈ divisors n := by
  rw [mem_divisorsAntidiagonal] at h
  simp [Dvd.intro _ h.1, h.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Variant5b8aff936c8bef62acc10bcccc54651bfa498a79d2aaa344d44587882d415f0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Variant5b8aff936c8bef62acc10bcccc54651bfa498a79d2aaa344d44587882d415f0b.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c115570f27351d570e19704b0b11f906292dcd47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
