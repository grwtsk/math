# Icc_mem_vitaliFamily_at_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0a0693e-0eb3-950b-64da-d7532466727b",
  "kind": "theorem",
  "lexical_name": "Icc_mem_vitaliFamily_at_right",
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
  "slug": "icc-mem-vitalifamily-at-right--36d2d5592693872e5b0060f2",
  "source": {
    "blob": "d916989ab662813017bd300016f5537107460a65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36d2d5592693872e5b0060f23bcfe85e6221f9eebe6014226e368f7c747994dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0a0693e-0eb3-950b-64da-d7532466727b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Icc_mem_vitaliFamily_at_right {x y : ℝ} (hxy : x < y) :
    Icc x y ∈ (vitaliFamily (volume : Measure ℝ) 1).setsAt x := by
  rw [Icc_eq_closedBall]
  refine closedBall_mem_vitaliFamily_of_dist_le_mul _ ?_ (by linarith)
  rw [dist_comm, Real.dist_eq, abs_of_nonneg] <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d916989ab662813017bd300016f5537107460a65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
