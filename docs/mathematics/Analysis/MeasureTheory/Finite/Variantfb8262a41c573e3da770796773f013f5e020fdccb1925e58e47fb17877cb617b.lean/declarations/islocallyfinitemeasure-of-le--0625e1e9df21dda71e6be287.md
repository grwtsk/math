# isLocallyFiniteMeasure_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9f9a349-f70d-bf31-3d8f-35bdcb90d83e",
  "kind": "theorem",
  "lexical_name": "isLocallyFiniteMeasure_of_le",
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
  "slug": "islocallyfinitemeasure-of-le--0625e1e9df21dda71e6be287",
  "source": {
    "blob": "e2717a7f54ffd95469e2887ba3e965c8d7718449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 519,
    "path": "GRWTSK/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0625e1e9df21dda71e6be28707c6e8a1b662589d25f8dbb57f1b63ff89d54fc6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9f9a349-f70d-bf31-3d8f-35bdcb90d83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocallyFiniteMeasure_of_le [TopologicalSpace α] {_m : MeasurableSpace α} {μ ν : Measure α}
    [H : IsLocallyFiniteMeasure μ] (h : ν ≤ μ) : IsLocallyFiniteMeasure ν :=
  let F := H.finiteAtNhds
  ⟨fun x => (F x).measure_mono h⟩

end Measure

end MeasureTheory

namespace IsCompact

variable [TopologicalSpace α] [MeasurableSpace α] {μ : Measure α} {s : Set α}

/-- If `s` is a compact set and `μ` is finite at `𝓝 x` for every `x ∈ s`, then `s` admits an open
superset of finite measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2717a7f54ffd95469e2887ba3e965c8d7718449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
