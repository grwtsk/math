# Filter.Tendsto.continuousWithinAt_of_equicontinuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 899,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34eba20e-6997-7c79-8d78-8d9756c9a0b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43c78c93-5cba-0c93-4f16-0ac28c99fda8",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.continuousWithinAt_of_equicontinuousWithinAt",
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
  "slug": "filter-tendsto-continuouswithinat-of-equicontinuouswithinat--4e1009f158a9f8b17fef45dc",
  "source": {
    "blob": "fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 911,
    "line": 899,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e1009f158a9f8b17fef45dcc32fa23485dc505513447f3267ba98027db0ca84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43c78c93-5cba-0c93-4f16-0ac28c99fda8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 899–911.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.continuousWithinAt_of_equicontinuousWithinAt {l : Filter ι} [l.NeBot]
    {F : ι → X → α} {f : X → α} {S : Set X} {x₀ : X} (h₁ : ∀ x ∈ S, Tendsto (F · x) l (𝓝 (f x)))
    (h₂ : Tendsto (F · x₀) l (𝓝 (f x₀))) (h₃ : EquicontinuousWithinAt F S x₀) :
    ContinuousWithinAt f S x₀ := by
  intro U hU; rw [mem_map]
  rcases UniformSpace.mem_nhds_iff.mp hU with ⟨V, hV, hVU⟩
  rcases mem_uniformity_isClosed hV with ⟨W, hW, hWclosed, hWV⟩
  filter_upwards [h₃ W hW, eventually_mem_nhdsWithin] with x hx hxS using
    hVU <| ball_mono hWV (f x₀) <| hWclosed.mem_of_tendsto (h₂.prodMk_nhds (h₁ x hxS)) <|
    Eventually.of_forall hx

/-- If `𝓕 : ι → X → α` tends to `f : X → α` *pointwise* along some nontrivial filter, and if the
family `𝓕` is equicontinuous at some `x₀ : X`, then the limit is continuous at `x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean#L899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
