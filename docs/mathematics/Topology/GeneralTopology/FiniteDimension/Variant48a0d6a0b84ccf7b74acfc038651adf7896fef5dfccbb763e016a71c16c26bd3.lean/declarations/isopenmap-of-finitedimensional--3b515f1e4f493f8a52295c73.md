# isOpenMap_of_finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bf4f5dd-20cc-a724-11dc-d23dced95f6c",
  "kind": "theorem",
  "lexical_name": "isOpenMap_of_finiteDimensional",
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
  "slug": "isopenmap-of-finitedimensional--3b515f1e4f493f8a52295c73",
  "source": {
    "blob": "058e4e3352ffc42dce28b19f19cdccc0181ff341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 339,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b515f1e4f493f8a52295c732056a8fd057057e9fbcf8c310c5980f63f0e6ec9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bf4f5dd-20cc-a724-11dc-d23dced95f6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenMap_of_finiteDimensional (f : F →ₗ[𝕜] E) (hf : Function.Surjective f) :
    IsOpenMap f := by
  rcases f.exists_rightInverse_of_surjective (LinearMap.range_eq_top.2 hf) with ⟨g, hg⟩
  refine' IsOpenMap.of_sections fun x => ⟨fun y => g (y - f x) + x, _, _, fun y => _⟩
  · exact
      ((g.continuous_of_finiteDimensional.comp <| continuous_id.sub continuous_const).add
          continuous_const).continuousAt
  · simp only
    rw [sub_self, map_zero, zero_add]
  · simp only [map_sub, map_add, ← comp_apply f g, hg, id_apply, sub_add_cancel]
#align linear_map.is_open_map_of_finite_dimensional LinearMap.isOpenMap_of_finiteDimensional

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant48a0d6a0b84ccf7b74acfc038651adf7896fef5dfccbb763e016a71c16c26bd3.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `058e4e3352ffc42dce28b19f19cdccc0181ff341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
