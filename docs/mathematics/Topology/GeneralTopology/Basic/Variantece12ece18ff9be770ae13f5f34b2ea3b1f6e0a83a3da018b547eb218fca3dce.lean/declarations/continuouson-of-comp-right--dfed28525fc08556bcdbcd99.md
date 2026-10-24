# continuousOn_of_comp_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd3198ae-a85b-7a23-ffd2-de96e2b925c9",
  "kind": "theorem",
  "lexical_name": "continuousOn_of_comp_right",
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
  "slug": "continuouson-of-comp-right--dfed28525fc08556bcdbcd99",
  "source": {
    "blob": "b4bb4345d1ef7d147cf058ae6f1690a5620d3c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 929,
    "line": 909,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfed28525fc08556bcdbcd992947a357b62ba124af2e75922862793f1e81a030",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd3198ae-a85b-7a23-ffd2-de96e2b925c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 909–929.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_of_comp_right {X : Type*} [TopologicalSpace X] {f : TotalSpace F E → X}
    {s : Set B} (hs : IsOpen s) (hf : ∀ b ∈ s,
      ContinuousOn (f ∘ (a.pretrivializationAt b).toLocalEquiv.symm)
        ((s ∩ (a.pretrivializationAt b).baseSet) ×ˢ (Set.univ : Set F))) :
    @ContinuousOn _ _ a.totalSpaceTopology _ f (π F E ⁻¹' s) := by
  letI := a.totalSpaceTopology
  intro z hz
  let e : Trivialization F (π F E) :=
    a.trivializationOfMemPretrivializationAtlas (a.pretrivialization_mem_atlas z.proj)
  refine' (e.continuousAt_of_comp_right _
    ((hf z.proj hz).continuousAt (IsOpen.mem_nhds _ _))).continuousWithinAt
  · exact a.mem_base_pretrivializationAt z.proj
  · exact (hs.inter (a.pretrivializationAt z.proj).open_baseSet).prod isOpen_univ
  refine' ⟨_, mem_univ _⟩
  rw [e.coe_fst]
  · exact ⟨hz, a.mem_base_pretrivializationAt z.proj⟩
  · rw [e.mem_source]
    exact a.mem_base_pretrivializationAt z.proj
#align fiber_prebundle.continuous_on_of_comp_right FiberPrebundle.continuousOn_of_comp_right

end FiberPrebundle
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean#L909).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bb4345d1ef7d147cf058ae6f1690a5620d3c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
