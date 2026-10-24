# equicontinuous_of_equicontinuousAt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aaf958187cfbe7f69c5d1637a7b506528f6cae5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea51c390-3f7b-7087-e403-c580c005c342",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cbbaa61-b014-da3f-e7d5-b27ad467eb5c",
  "kind": "theorem",
  "lexical_name": "equicontinuous_of_equicontinuousAt_one",
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
  "slug": "equicontinuous-of-equicontinuousat-one--b524562cfc52fcfafb716480",
  "source": {
    "blob": "aaf958187cfbe7f69c5d1637a7b506528f6cae5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/Equicontinuity/Variant395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b524562cfc52fcfafb71648053c991b90506312bfd1ece2d7d7ebba4b1a380a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Equicontinuity/Variant395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cbbaa61-b014-da3f-e7d5-b27ad467eb5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equicontinuous_of_equicontinuousAt_one {ι G M hom : Type*} [TopologicalSpace G]
    [UniformSpace M] [Group G] [Group M] [IsTopologicalGroup G] [IsUniformGroup M]
    [FunLike hom G M] [MonoidHomClass hom G M] (F : ι → hom)
    (hf : EquicontinuousAt ((↑) ∘ F) (1 : G)) :
    Equicontinuous ((↑) ∘ F) := by
  rw [equicontinuous_iff_continuous]
  rw [equicontinuousAt_iff_continuousAt] at hf
  let φ : G →* (ι →ᵤ M) :=
    { toFun := swap ((↑) ∘ F)
      map_one' := by dsimp [UniformFun]; ext; exact map_one _
      map_mul' := fun a b => by dsimp [UniformFun]; ext; exact map_mul _ _ _ }
  exact continuous_of_continuousAt_one φ hf

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Equicontinuity/Variant395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Equicontinuity/Variant395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf958187cfbe7f69c5d1637a7b506528f6cae5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
