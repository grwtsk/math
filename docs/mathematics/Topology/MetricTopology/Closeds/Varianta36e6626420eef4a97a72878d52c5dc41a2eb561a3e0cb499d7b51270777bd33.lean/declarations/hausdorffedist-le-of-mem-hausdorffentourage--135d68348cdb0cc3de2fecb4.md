# hausdorffEDist_le_of_mem_hausdorffEntourage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf5c68b44e2e9c91d1339216ca0e9113c69bb3a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b56ffe80-c166-90ec-1315-31f05add7ca7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94ea467c-eff6-a894-a0e0-a3e529a57fd4",
  "kind": "theorem",
  "lexical_name": "hausdorffEDist_le_of_mem_hausdorffEntourage",
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
  "slug": "hausdorffedist-le-of-mem-hausdorffentourage--135d68348cdb0cc3de2fecb4",
  "source": {
    "blob": "cf5c68b44e2e9c91d1339216ca0e9113c69bb3a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 50,
    "path": "GRWTSK/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:135d68348cdb0cc3de2fecb4c069119d3c6b3f9267fdd2b5ad7b5bf4ce321660",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94ea467c-eff6-a894-a0e0-a3e529a57fd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffEDist_le_of_mem_hausdorffEntourage {s t : Set α} {δ : ℝ≥0∞}
    (h : (s, t) ∈ hausdorffEntourage {p | edist p.1 p.2 ≤ δ}) : hausdorffEDist s t ≤ δ := by
  rw [hausdorffEDist, max_le_iff]
  rw [hausdorffEntourage, Set.mem_ofPred] at h
  conv at h => enter [2, 2, 1, 1, _]; rw [edist_comm]
  have {s t : Set α} (h : s ⊆ SetRel.preimage {p | edist p.1 p.2 ≤ δ} t) :
      ⨆ x ∈ s, infEDist x t ≤ δ := by
    rw [iSup₂_le_iff]
    intro x hx
    obtain ⟨y, hy, hxy⟩ := h hx
    exact iInf₂_le_of_le y hy hxy
  exact ⟨this h.1, this h.2⟩

/-- The Hausdorff pseudo emetric on the powerset of a pseudo emetric space.
See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf5c68b44e2e9c91d1339216ca0e9113c69bb3a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
