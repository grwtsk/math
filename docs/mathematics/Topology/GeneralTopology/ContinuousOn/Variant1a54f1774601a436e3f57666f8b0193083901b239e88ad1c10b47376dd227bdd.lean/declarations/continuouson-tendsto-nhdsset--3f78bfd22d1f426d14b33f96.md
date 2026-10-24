# ContinuousOn.tendsto_nhdsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f2002ed-7d28-c8f9-58e1-e91496dad143",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.tendsto_nhdsSet",
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
  "slug": "continuouson-tendsto-nhdsset--3f78bfd22d1f426d14b33f96",
  "source": {
    "blob": "17850a8aa0371a4be6e67dbf51bf53e076819f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1414,
    "line": 1402,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f78bfd22d1f426d14b33f9628b0994e1cab1966a2caafc5f088d6d4352e3f4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f2002ed-7d28-c8f9-58e1-e91496dad143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1402–1414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.tendsto_nhdsSet {f : α → β} {s s' : Set α} {t : Set β}
    (hf : ContinuousOn f s') (hs' : s' ∈ 𝓝ˢ s) (hst : MapsTo f s t) : Tendsto f (𝓝ˢ s) (𝓝ˢ t) := by
  obtain ⟨V, hV, hsV, hVs'⟩ := mem_nhdsSet_iff_exists.mp hs'
  refine ((hasBasis_nhdsSet s).tendsto_iff (hasBasis_nhdsSet t)).mpr fun U hU ↦
    ⟨V ∩ f ⁻¹' U, ?_, fun _ ↦ ?_⟩
  · exact ⟨(hf.mono hVs').isOpen_inter_preimage hV hU.1,
      subset_inter hsV (hst.mono Subset.rfl hU.2)⟩
  · intro h
    rw [← mem_preimage]
    exact mem_of_mem_inter_right h

/-- Preimage of a set neighborhood of `t` under a continuous map `f` is a set neighborhood of `s`
provided that `f` maps `s` to `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean#L1402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17850a8aa0371a4be6e67dbf51bf53e076819f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
