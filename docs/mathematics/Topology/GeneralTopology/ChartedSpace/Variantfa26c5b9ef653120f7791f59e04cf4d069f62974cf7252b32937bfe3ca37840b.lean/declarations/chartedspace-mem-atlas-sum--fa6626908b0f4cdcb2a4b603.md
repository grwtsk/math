# ChartedSpace.mem_atlas_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d641ae7-367d-6d40-85fe-6c85685fb615",
  "kind": "lemma",
  "lexical_name": "ChartedSpace.mem_atlas_sum",
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
  "slug": "chartedspace-mem-atlas-sum--fa6626908b0f4cdcb2a4b603",
  "source": {
    "blob": "abd81ea31de08f385703acb1d45d7dc424966258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 995,
    "line": 974,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa6626908b0f4cdcb2a4b60322dd813a770cde5aa856a257f438ad0e18a520d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d641ae7-367d-6d40-85fe-6c85685fb615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 974–995.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ChartedSpace.mem_atlas_sum [h : Nonempty H]
    {e : PartialHomeomorph (M ⊕ M') H} (he : e ∈ atlas H (M ⊕ M')) :
    (∃ f : PartialHomeomorph M H, f ∈ (atlas H M) ∧ e = (f.lift_openEmbedding IsOpenEmbedding.inl))
    ∨ (∃ f' : PartialHomeomorph M' H, f' ∈ (atlas H M') ∧
      e = (f'.lift_openEmbedding IsOpenEmbedding.inr)) := by
  simp only [atlas, sum, h, ↓reduceDIte] at he
  obtain (⟨x, hx, hxe⟩ | ⟨x, hx, hxe⟩) := he
  · rw [← hxe]; left; use x
  · rw [← hxe]; right; use x

end sum

end Constructions

end ChartedSpace

/-! ### Constructing a topology from an atlas -/

/-- Sometimes, one may want to construct a charted space structure on a space which does not yet
have a topological structure, where the topology would come from the charts. For this, one needs
charts that are only partial equivalences, and continuity properties for their composition.
This is formalised in `ChartedSpaceCore`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean#L974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd81ea31de08f385703acb1d45d7dc424966258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
