# ContMDiffAt.mfderiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59e34b56-c314-8b76-ad8d-ee435d360c0b",
  "kind": "theorem",
  "lexical_name": "ContMDiffAt.mfderiv_apply",
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
  "slug": "contmdiffat-mfderiv-apply--63e3555da1596314b8312cb7",
  "source": {
    "blob": "7528b846e9af74f060fc79ad358e0664528195cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 215,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63e3555da1596314b8312cb7db097b49be349983ef6039d31219b4b94c314f04",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59e34b56-c314-8b76-ad8d-ee435d360c0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffAt.mfderiv_apply {x₀ : N'} (f : N → M → M') (g : N → M) (g₁ : N' → N) (g₂ : N' → E)
    (hf : ContMDiffAt (J.prod I) I' n (Function.uncurry f) (g₁ x₀, g (g₁ x₀)))
    (hg : ContMDiffAt J I m g (g₁ x₀)) (hg₁ : ContMDiffAt J' J m g₁ x₀)
    (hg₂ : ContMDiffAt J' 𝓘(𝕜, E) m g₂ x₀) (hmn : m + 1 ≤ n) :
    ContMDiffAt J' 𝓘(𝕜, E') m
      (fun x => inTangentCoordinates I I' g (fun x => f x (g x))
        (fun x => mfderiv I I' (f x) (g x)) (g₁ x₀) (g₁ x) (g₂ x)) x₀ :=
  ((hf.mfderiv f g hg hmn).comp_of_eq hg₁ rfl).clm_apply hg₂
#align cont_mdiff_at.mfderiv_apply ContMDiffAt.mfderiv_apply

end mfderiv

/-! ### The tangent map of a smooth function is smooth -/

section tangentMap

/-- If a function is `C^n` with `1 ≤ n` on a domain with unique derivatives, then its bundled
derivative is continuous. In this auxiliary lemma, we prove this fact when the source and target
space are model spaces in models with corners. The general fact is proved in
`ContMDiffOn.continuousOn_tangentMapWithin`-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7528b846e9af74f060fc79ad358e0664528195cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
