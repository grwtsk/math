# compContinuousAlternatingMapCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80e544f734328ccca04762cfd4e7c39b0fc34ebc4ca0f93ced4a43d80186ea20",
  "kind": "def",
  "lexical_name": "compContinuousAlternatingMapCLM",
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
  "slug": "compcontinuousalternatingmapclm--6d304ee18f7fc625081d3ec0",
  "source": {
    "blob": "66acc2bc41e4175777a75bc965c24ba9b1722ec1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d304ee18f7fc625081d3ec07a07681202abc8b9dbf8abe2cf3bdbc17c3f1810",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80e544f734328ccca04762cfd4e7c39b0fc34ebc4ca0f93ced4a43d80186ea20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compContinuousAlternatingMapCLM :
    (F →L[𝕜] G) →L[𝕜] (E [⋀^ι]→L[𝕜] F) →L[𝕜] (E [⋀^ι]→L[𝕜] G) where
  toFun g :=
    { toLinearMap := compContinuousAlternatingMapₗ _ _ _ _ g
      cont := by
        rw [ContinuousAlternatingMap.isEmbedding_toContinuousMultilinearMap.continuous_iff]
        exact (map_continuous <| compContinuousMultilinearMapL 𝕜 (fun _ : ι ↦ E) F G g).comp
          ContinuousAlternatingMap.continuous_toContinuousMultilinearMap }
  map_add' _ _ := by ext; simp
  map_smul' _ _ := by ext; simp
  cont := by
    rw [ContinuousLinearMap.isEmbedding_postcomp
      (ContinuousAlternatingMap.toContinuousMultilinearMapCLM 𝕜)
      ContinuousAlternatingMap.isEmbedding_toContinuousMultilinearMap |>.continuous_iff]
    exact map_continuous <|
      (precomp (ContinuousMultilinearMap 𝕜 (fun _ : ι ↦ E) G)
        ((ContinuousAlternatingMap.toContinuousMultilinearMapCLM 𝕜 : (E [⋀^ι]→L[𝕜] F) →L[𝕜] _))) ∘L
        (compContinuousMultilinearMapL 𝕜 (fun _ : ι ↦ E) F G)

end ContinuousLinearMap

namespace ContinuousLinearEquiv
variable {𝕜 E E' F G ι : Type*} [NormedField 𝕜]
  [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E]
  [AddCommGroup E'] [Module 𝕜 E'] [TopologicalSpace E']
  [AddCommGroup F] [Module 𝕜 F] [TopologicalSpace F] [IsTopologicalAddGroup F]
  [ContinuousConstSMul 𝕜 F]
  [AddCommGroup G] [Module 𝕜 G] [TopologicalSpace G] [IsTopologicalAddGroup G]
  [ContinuousConstSMul 𝕜 G]

/-- `ContinuousLinearMap.compContinuousAlternatingMap` as a bundled continuous linear equiv.

Given a continuous linear equivalence `g : F ≃L[𝕜] G`,
this function returns the equivalence between continuous alternating maps with codomain `F`
and continuous alternating maps with codomain `G`
that acts by composing these maps with `g`.
-/
@[simps +simpRhs apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66acc2bc41e4175777a75bc965c24ba9b1722ec1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
