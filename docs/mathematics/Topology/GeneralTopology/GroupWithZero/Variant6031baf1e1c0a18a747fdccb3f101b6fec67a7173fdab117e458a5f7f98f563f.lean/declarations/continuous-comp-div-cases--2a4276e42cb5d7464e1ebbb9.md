# Continuous.comp_div_cases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ed2326f2f69c2dfca55755c3a80913ae4da409c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/6031baf1e1c0a18a747fdccb3f101b6fec67a7173fdab117e458a5f7f98f563f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9d656d3-ed94-8498-b40e-d6cebc32bd8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc8207bd-e7e9-b47d-9c78-79417c8b310d",
  "kind": "theorem",
  "lexical_name": "Continuous.comp_div_cases",
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
  "slug": "continuous-comp-div-cases--2a4276e42cb5d7464e1ebbb9",
  "source": {
    "blob": "7ed2326f2f69c2dfca55755c3a80913ae4da409c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/GroupWithZero/Variant6031baf1e1c0a18a747fdccb3f101b6fec67a7173fdab117e458a5f7f98f563f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a4276e42cb5d7464e1ebbb94a9e34d8bacfa2aaaf18d2caa16d43beba610f5e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupWithZero/Variant6031baf1e1c0a18a747fdccb3f101b6fec67a7173fdab117e458a5f7f98f563f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8207bd-e7e9-b47d-9c78-79417c8b310d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.comp_div_cases {f g : α → G₀} (h : α → G₀ → β) (hf : Continuous f)
    (hg : Continuous g) (hh : ∀ a, g a ≠ 0 → ContinuousAt (↿h) (a, f a / g a))
    (h2h : ∀ a, g a = 0 → Tendsto (↿h) (𝓝 a ×ˢ ⊤) (𝓝 (h a 0))) :
    Continuous fun x => h x (f x / g x) :=
  continuous_iff_continuousAt.mpr fun a =>
    hf.continuousAt.comp_div_cases _ hg.continuousAt (hh a) (h2h a)

end Div

/-! ### Left and right multiplication as homeomorphisms -/


namespace Homeomorph

variable [TopologicalSpace α] [GroupWithZero α] [ContinuousMul α]

/-- Left multiplication by a nonzero element in a `GroupWithZero` with continuous multiplication
is a homeomorphism of the underlying type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupWithZero/Variant6031baf1e1c0a18a747fdccb3f101b6fec67a7173fdab117e458a5f7f98f563f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupWithZero/Variant6031baf1e1c0a18a747fdccb3f101b6fec67a7173fdab117e458a5f7f98f563f.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ed2326f2f69c2dfca55755c3a80913ae4da409c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
