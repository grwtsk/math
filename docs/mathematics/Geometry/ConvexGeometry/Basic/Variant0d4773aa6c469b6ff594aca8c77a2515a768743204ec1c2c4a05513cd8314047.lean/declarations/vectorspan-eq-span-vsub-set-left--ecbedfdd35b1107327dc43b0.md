# vectorSpan_eq_span_vsub_set_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a16161c-edcd-84b3-5d3a-ffa9bf622569",
  "kind": "theorem",
  "lexical_name": "vectorSpan_eq_span_vsub_set_left",
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
  "slug": "vectorspan-eq-span-vsub-set-left--ecbedfdd35b1107327dc43b0",
  "source": {
    "blob": "64f0f720776871fe16dbdb8efbc65369b3c8789f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 213,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant0d4773aa6c469b6ff594aca8c77a2515a768743204ec1c2c4a05513cd8314047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecbedfdd35b1107327dc43b03080a7487a655d491b0cf7724d70626d70b312a4",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant0d4773aa6c469b6ff594aca8c77a2515a768743204ec1c2c4a05513cd8314047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a16161c-edcd-84b3-5d3a-ffa9bf622569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vectorSpan_eq_span_vsub_set_left {s : Set P} {p : P} (hp : p ∈ s) :
    vectorSpan k s = Submodule.span k ((p -ᵥ ·) '' s) := by
  rw [vectorSpan_def]
  refine le_antisymm ?_ (Submodule.span_mono ?_)
  · rw [Submodule.span_le]
    rintro v ⟨p₁, hp₁, p₂, hp₂, hv⟩
    simp_rw [← vsub_sub_vsub_cancel_left p₁ p₂ p] at hv
    rw [← hv, SetLike.mem_coe, Submodule.mem_span]
    exact fun m hm => Submodule.sub_mem _ (hm ⟨p₂, hp₂, rfl⟩) (hm ⟨p₁, hp₁, rfl⟩)
  · rintro v ⟨p₂, hp₂, hv⟩
    exact ⟨p, hp, p₂, hp₂, hv⟩

/-- The `vectorSpan` is the span of the pairwise subtractions with a given point on the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant0d4773aa6c469b6ff594aca8c77a2515a768743204ec1c2c4a05513cd8314047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant0d4773aa6c469b6ff594aca8c77a2515a768743204ec1c2c4a05513cd8314047.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f0f720776871fe16dbdb8efbc65369b3c8789f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
