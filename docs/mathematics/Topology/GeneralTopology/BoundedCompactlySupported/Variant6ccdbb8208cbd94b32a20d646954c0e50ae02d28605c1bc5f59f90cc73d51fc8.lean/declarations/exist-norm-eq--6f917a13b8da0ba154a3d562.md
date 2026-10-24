# exist_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d05b1317-fff9-3311-d5b2-c07e060643f6",
  "kind": "lemma",
  "lexical_name": "exist_norm_eq",
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
  "slug": "exist-norm-eq--6f917a13b8da0ba154a3d562",
  "source": {
    "blob": "61313c430fc1098575e5d897b44fdbf3c58ecb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f917a13b8da0ba154a3d5620be565f8746191bf42af6657b6d70307745d3713",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d05b1317-fff9-3311-d5b2-c07e060643f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exist_norm_eq [c : Nonempty α] {f : α →ᵇ γ} (h : f ∈ C_cb(α, γ)) : ∃ (x : α),
    ‖f x‖ = ‖f‖ := by
  by_cases hs : (tsupport f).Nonempty
  · obtain ⟨x, _, hmax⟩ := mem_compactlySupported.mp h |>.exists_isMaxOn hs <|
      (map_continuous f).norm.continuousOn
    refine ⟨x, le_antisymm (norm_coe_le_norm f x) (norm_le (norm_nonneg _) |>.mpr fun y ↦ ?_)⟩
    by_cases hy : y ∈ tsupport f
    · exact hmax hy
    · simp [image_eq_zero_of_notMem_tsupport hy]
  · suffices f = 0 by simp [this]
    rwa [not_nonempty_iff_eq_empty, tsupport_eq_empty_iff, ← coe_zero, ← DFunLike.ext'_iff] at hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61313c430fc1098575e5d897b44fdbf3c58ecb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
