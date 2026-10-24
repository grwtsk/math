# TopologicalGroup.of_nhds_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61766110-8b41-db04-dd76-b73af5608cd4",
  "kind": "theorem",
  "lexical_name": "TopologicalGroup.of_nhds_one'",
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
  "slug": "topologicalgroup-of-nhds-one--69353dd1f7075d8631ff0fd3",
  "source": {
    "blob": "3d76f71efd3510cef483a2a09972884f71518245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 941,
    "line": 925,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69353dd1f7075d8631ff0fd3ee86a4d7529e8ca649301f4428c1745830144599",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61766110-8b41-db04-dd76-b73af5608cd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 925–941.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TopologicalGroup.of_nhds_one' {G : Type u} [Group G] [TopologicalSpace G]
    (hmul : Tendsto (uncurry ((· * ·) : G → G → G)) (𝓝 1 ×ˢ 𝓝 1) (𝓝 1))
    (hinv : Tendsto (fun x : G => x⁻¹) (𝓝 1) (𝓝 1))
    (hleft : ∀ x₀ : G, 𝓝 x₀ = map (fun x => x₀ * x) (𝓝 1))
    (hright : ∀ x₀ : G, 𝓝 x₀ = map (fun x => x * x₀) (𝓝 1)) : TopologicalGroup G :=
  { toContinuousMul := ContinuousMul.of_nhds_one hmul hleft hright
    toContinuousInv :=
      ContinuousInv.of_nhds_one hinv hleft fun x₀ =>
        le_of_eq
          (by
            rw [show (fun x => x₀ * x * x₀⁻¹) = (fun x => x * x₀⁻¹) ∘ fun x => x₀ * x from rfl, ←
              map_map, ← hleft, hright, map_map]
            simp [(· ∘ ·)]) }
#align topological_group.of_nhds_one' TopologicalGroup.of_nhds_one'
#align topological_add_group.of_nhds_zero' TopologicalAddGroup.of_nhds_zero'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean#L925).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d76f71efd3510cef483a2a09972884f71518245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
