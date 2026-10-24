# IsCompact.binary_compact_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcb3dbd5-bb2e-904c-e353-bd95c32e5f5f",
  "kind": "theorem",
  "lexical_name": "IsCompact.binary_compact_cover",
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
  "slug": "iscompact-binary-compact-cover--3fcb9c691372bcb61353f717",
  "source": {
    "blob": "c717452f9310dda1e60e8cbc0e58775814c1b268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 966,
    "line": 951,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fcb9c691372bcb61353f717b528946e45d1c0f6cd711ecf8baacb5ac192ed28",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcb3dbd5-bb2e-904c-e353-bd95c32e5f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 951–966.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.binary_compact_cover {K U V : Set X}
    (hK : IsCompact K) (hU : IsOpen U) (hV : IsOpen V) (h2K : K ⊆ U ∪ V) :
    ∃ K₁ K₂ : Set X, IsCompact K₁ ∧ IsCompact K₂ ∧ K₁ ⊆ U ∧ K₂ ⊆ V ∧ K = K₁ ∪ K₂ := by
  have hK' : IsCompact (closure K) := hK.closure
  have : SeparatedNhds (closure K \ U) (closure K \ V) := by
    apply SeparatedNhds.of_isCompact_isCompact_isClosed (hK'.diff hU) (hK'.diff hV)
      (isClosed_closure.sdiff hV)
    rw [disjoint_iff_inter_eq_empty, diff_inter_diff, diff_eq_empty]
    exact hK.closure_subset_of_isOpen (hU.union hV) h2K
  have : SeparatedNhds (K \ U) (K \ V) :=
    this.mono (diff_subset_diff_left (subset_closure)) (diff_subset_diff_left (subset_closure))
  rcases this with ⟨O₁, O₂, h1O₁, h1O₂, h2O₁, h2O₂, hO⟩
  exact ⟨K \ O₁, K \ O₂, hK.diff h1O₁, hK.diff h1O₂, diff_subset_comm.mp h2O₁,
    diff_subset_comm.mp h2O₂, by rw [← diff_inter, hO.inter_eq, diff_empty]⟩

/-- For every finite open cover `Uᵢ` of a compact set, there exists a compact cover `Kᵢ ⊆ Uᵢ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean#L951).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c717452f9310dda1e60e8cbc0e58775814c1b268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
