# continuous_const_section

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34f734bf8c82a2c5da569b500ff6e1956cc31e9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 593,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0fdd37d-d795-fc6d-5f85-a4a336fe9f6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cbf1ec2-25c7-c5ef-59f9-5fc1b175b515",
  "kind": "theorem",
  "lexical_name": "continuous_const_section",
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
  "slug": "continuous-const-section--ba34b3f062bf79ced506a4a4",
  "source": {
    "blob": "34f734bf8c82a2c5da569b500ff6e1956cc31e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 593,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba34b3f062bf79ced506a4a42c3927503df221b2a8bc9124a3073b5617937541",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cbf1ec2-25c7-c5ef-59f9-5fc1b175b515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_const_section (v : F)
    (h : ∀ i j, ∀ x ∈ Z.baseSet i ∩ Z.baseSet j, Z.coordChange i j x v = v) :
    Continuous (show B → Z.TotalSpace from fun x => ⟨x, v⟩) := by
  refine continuous_iff_continuousAt.2 fun x => ?_
  have A : Z.baseSet (Z.indexAt x) ∈ 𝓝 x :=
    IsOpen.mem_nhds (Z.isOpen_baseSet (Z.indexAt x)) (Z.mem_baseSet_at x)
  refine ((Z.localTrivAt x).toPartialHomeomorph.continuousAt_iff_continuousAt_comp_left ?_).2 ?_
  · exact A
  · apply continuousAt_id.prodMk
    simp only [(· ∘ ·), mfld_simps, localTrivAt_snd]
    have : ContinuousOn (fun _ : B => v) (Z.baseSet (Z.indexAt x)) := continuousOn_const
    refine (this.congr fun y hy ↦ ?_).continuousAt A
    exact h _ _ _ ⟨mem_baseSet_at _ _, hy⟩

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34f734bf8c82a2c5da569b500ff6e1956cc31e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
