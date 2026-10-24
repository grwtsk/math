# exists_norm_eq_restrict_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "987eabfa031ce040d6671a530c6ab26e2097ab45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9b3f4a6-13fc-8799-6b6c-a1160a63d34b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5702788-5bf6-8b06-b2a3-53c4c0eac043",
  "kind": "theorem",
  "lexical_name": "exists_norm_eq_restrict_eq",
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
  "slug": "exists-norm-eq-restrict-eq--b8186f2f3a12b578674e4ea8",
  "source": {
    "blob": "987eabfa031ce040d6671a530c6ab26e2097ab45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 106,
    "path": "GRWTSK/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8186f2f3a12b578674e4ea8a6a18370ca7dc30d0a38ee86d25f65940339f6d3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5702788-5bf6-8b06-b2a3-53c4c0eac043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_norm_eq_restrict_eq (f : s →ᵇ E) :
    ∃ g : X →ᵇ E, ‖g‖ = ‖f‖ ∧ g.restrict s = f := by
  by_cases hf : ‖f‖ = 0; · exact ⟨0, by aesop⟩
  have := Metric.instTietzeExtensionClosedBall.{u, v} 𝕜 (0 : E) (by aesop : 0 < ‖f‖)
  have hf' x : f x ∈ Metric.closedBall 0 ‖f‖ := by simpa using f.norm_coe_le_norm x
  obtain ⟨g, hg_mem, hg⟩ := (f : C(s, E)).exists_forall_mem_restrict_eq hs hf'
  simp only [Metric.mem_closedBall, dist_zero_right] at hg_mem
  let g' : X →ᵇ E := .ofNormedAddCommGroup g (map_continuous g) ‖f‖ hg_mem
  refine ⟨g', ?_, by ext x; congrm($(hg) x)⟩
  apply le_antisymm ((g'.norm_le <| by positivity).mpr hg_mem)
  refine (f.norm_le <| by positivity).mpr fun x ↦ ?_
  have hx : f x = g' x := by simpa using congr($(hg) x).symm
  rw [hx]
  exact g'.norm_le (norm_nonneg g') |>.mp le_rfl x

end BoundedContinuousFunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987eabfa031ce040d6671a530c6ab26e2097ab45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
