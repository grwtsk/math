# MDifferentiableAt.clm_apply_of_inCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d8a1f8c-fdc5-01cd-f2b0-da0836eb25bb",
  "kind": "lemma",
  "lexical_name": "MDifferentiableAt.clm_apply_of_inCoordinates",
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
  "slug": "mdifferentiableat-clm-apply-of-incoordinates--cdb0cfdf1ef35c4bf6fe7cdd",
  "source": {
    "blob": "efc9af6dff7b308a2044e2f33f26b8e58896bb93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 147,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdb0cfdf1ef35c4bf6fe7cdd440c737cd2ef6405592469808aa00583f2cde114",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d8a1f8c-fdc5-01cd-f2b0-da0836eb25bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MDifferentiableAt.clm_apply_of_inCoordinates
    (hϕ : MDifferentiableAt IM 𝓘(𝕜, F₁ →L[𝕜] F₂)
      (fun m ↦ inCoordinates F₁ E₁ F₂ E₂ (b₁ m₀) (b₁ m) (b₂ m₀) (b₂ m) (ϕ m)) m₀)
    (hv : MDifferentiableAt IM (IB₁.prod 𝓘(𝕜, F₁)) (fun m ↦ (v m : TotalSpace F₁ E₁)) m₀)
    (hb₂ : MDifferentiableAt IM IB₂ b₂ m₀) :
    MDifferentiableAt IM (IB₂.prod 𝓘(𝕜, F₂)) (fun m ↦ (ϕ m (v m) : TotalSpace F₂ E₂)) m₀ := by
  rw [← mdifferentiableWithinAt_univ] at hϕ hv hb₂ ⊢
  exact MDifferentiableWithinAt.clm_apply_of_inCoordinates hϕ hv hb₂

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efc9af6dff7b308a2044e2f33f26b8e58896bb93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
