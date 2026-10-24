# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99e8ec404e594d8274c501c10b9f7244a1e63c51bc57fa6b60f9720efd9c8adc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7529153adf43eefce4472bc5",
  "source": {
    "blob": "1eeaa173739cddea8b33777034878e3d3701aa00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7529153adf43eefce4472bc5f012c22f9828cffb67ba7a2dac32671c8ffdcee0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99e8ec404e594d8274c501c10b9f7244a1e63c51bc57fa6b60f9720efd9c8adc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsTopologicalGroup.regularSpace : RegularSpace G := by
  refine .of_exists_mem_nhds_isClosed_subset fun a s hs ↦ ?_
  have : Tendsto (fun p : G × G => p.1 * p.2) (𝓝 (a, 1)) (𝓝 a) :=
    continuous_mul.tendsto' _ _ (mul_one a)
  rcases mem_nhds_prod_iff.mp (this hs) with ⟨U, hU, V, hV, hUV⟩
  rw [← image_subset_iff, image_prod] at hUV
  refine ⟨closure U, mem_of_superset hU subset_closure, isClosed_closure, ?_⟩
  calc
    closure U ⊆ closure U * interior V := subset_mul_left _ (mem_interior_iff_mem_nhds.2 hV)
    _ = U * interior V := isOpen_interior.closure_mul U
    _ ⊆ U * V := mul_subset_mul_left interior_subset
    _ ⊆ s := hUV

variable {G}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eeaa173739cddea8b33777034878e3d3701aa00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
