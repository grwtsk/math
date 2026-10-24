# contMDiffOn_iff_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69fa37ebbccee7994ac66cb978e35b2eff547e68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bd32f3b-10bb-7d7e-ea48-e70b68578a5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:adc99c2f-9ed7-199c-6971-9545a645e9b5",
  "kind": "theorem",
  "lexical_name": "contMDiffOn_iff_target",
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
  "slug": "contmdiffon-iff-target--5353aa2262f99461adb1edba",
  "source": {
    "blob": "69fa37ebbccee7994ac66cb978e35b2eff547e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 546,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5353aa2262f99461adb1edbafc7d2713a955f2f6974c8f1708f7927325f505ae",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adc99c2f-9ed7-199c-6971-9545a645e9b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffOn_iff_target :
    ContMDiffOn I I' n f s ↔
      ContinuousOn f s ∧
        ∀ y : M',
          ContMDiffOn I 𝓘(𝕜, E') n (extChartAt I' y ∘ f) (s ∩ f ⁻¹' (extChartAt I' y).source) := by
  simp only [contMDiffOn_iff, ModelWithCorners.source_eq, chartAt_self_eq,
    PartialHomeomorph.refl_partialEquiv, PartialEquiv.refl_trans, extChartAt,
    PartialHomeomorph.extend, Set.preimage_univ, Set.inter_univ, and_congr_right_iff]
  intro h
  constructor
  · refine fun h' y => ⟨?_, fun x _ => h' x y⟩
    have h'' : ContinuousOn _ univ := (ModelWithCorners.continuous I').continuousOn
    convert (h''.comp_inter (chartAt H' y).continuousOn_toFun).comp_inter h
    simp
  · exact fun h' x y => (h' y).2 x 0

@[deprecated (since := "2024-11-20")] alias smoothOn_iff := contMDiffOn_iff

@[deprecated (since := "2024-11-20")] alias smoothOn_iff_target := contMDiffOn_iff_target


/-- One can reformulate being `C^n` as continuity and being `C^n` in any extended chart. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69fa37ebbccee7994ac66cb978e35b2eff547e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
