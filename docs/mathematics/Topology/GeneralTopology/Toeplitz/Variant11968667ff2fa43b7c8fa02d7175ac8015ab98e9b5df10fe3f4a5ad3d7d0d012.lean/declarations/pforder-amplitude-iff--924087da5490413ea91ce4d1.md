# pfOrder_amplitude_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "090c2e08a9f0a54fe16e0b9a7c9116710c16ecda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1727e1de-a9a8-dd1e-db06-97473f24c099",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d61e72b-02ec-a9fd-3e32-8ca7e9e22d25",
  "kind": "theorem",
  "lexical_name": "pfOrder_amplitude_iff",
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
  "slug": "pforder-amplitude-iff--924087da5490413ea91ce4d1",
  "source": {
    "blob": "090c2e08a9f0a54fe16e0b9a7c9116710c16ecda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:924087da5490413ea91ce4d1f41d3143d3bc5830d577c0423230d1d7cd0431a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d61e72b-02ec-a9fd-3e32-8ca7e9e22d25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pfOrder_amplitude_iff (R : ℕ) (a : ℕ → ℝ) (t : ℝ) (ht : 0 < t) :
    PFOrder R (fun n => t * a n) ↔ PFOrder R a := by
  constructor
  · intro h k hk r c
    have hh := h k hk r c
    rw [minor_amplitude] at hh
    exact (mul_nonneg_iff_of_pos_left (pow_pos ht k)).mp hh
  · intro h k hk r c
    rw [minor_amplitude]
    exact mul_nonneg (pow_pos ht k).le (h k hk r c)

/-- Eventual positivity is required separately for every selected signed minor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `090c2e08a9f0a54fe16e0b9a7c9116710c16ecda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
