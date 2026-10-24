# Set.UniformEquicontinuousOn.closure

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
      "line": 871,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43ff9366-7c5c-ecbe-f90d-3c110fa5203d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e50c25a6-425b-06db-3c83-b286ef5cd8d9",
  "kind": "theorem",
  "lexical_name": "Set.UniformEquicontinuousOn.closure",
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
  "slug": "set-uniformequicontinuouson-closure--347ea83b3d2ff2cc70ac7ab4",
  "source": {
    "blob": "fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 898,
    "line": 871,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:347ea83b3d2ff2cc70ac7ab460e82d2794996d3d4a0bf5f548ec52fb1d5479f0",
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

Occurrence: `result:e50c25a6-425b-06db-3c83-b286ef5cd8d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 871–898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
protected theorem Set.UniformEquicontinuousOn.closure {A : Set <| β → α} {S : Set β}
    (hA : A.UniformEquicontinuousOn S) : (closure A).UniformEquicontinuousOn S :=
  UniformEquicontinuousOn.closure' (u := id) hA (Pi.continuous_restrict _)

/-
Implementation note: The following lemma (as well as all the following variations) could
theoretically be deduced from the "closure" statements above. For example, we could do:
```lean
theorem Filter.Tendsto.continuousAt_of_equicontinuousAt {l : Filter ι} [l.NeBot] {F : ι → X → α}
    {f : X → α} {x₀ : X} (h₁ : Tendsto F l (𝓝 f)) (h₂ : EquicontinuousAt F x₀) :
    ContinuousAt f x₀ :=
  (equicontinuousAt_iff_range.mp h₂).closure.continuousAt
    ⟨f, mem_closure_of_tendsto h₁ <| Eventually.of_forall mem_range_self⟩

theorem Filter.Tendsto.uniformContinuous_of_uniformEquicontinuous {l : Filter ι} [l.NeBot]
    {F : ι → β → α} {f : β → α} (h₁ : Tendsto F l (𝓝 f)) (h₂ : UniformEquicontinuous F) :
    UniformContinuous f :=
  (uniformEquicontinuous_iff_range.mp h₂).closure.uniformContinuous
    ⟨f, mem_closure_of_tendsto h₁ <| Eventually.of_forall mem_range_self⟩
```

Unfortunately, the proofs get painful when dealing with the relative case as one needs to change
the ambient topology. So it turns out to be easier to re-do the proof by hand.
-/

/-- If `𝓕 : ι → X → α` tends to `f : X → α` *pointwise on `S ∪ {x₀} : Set X`* along some nontrivial
filter, and if the family `𝓕` is equicontinuous at `x₀ : X` within `S`, then the limit is
continuous at `x₀` within `S`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean#L871).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
