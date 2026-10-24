# intrinsicInterior_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a63b546-09eb-7b2a-5c39-48ba92c26093",
  "kind": "theorem",
  "lexical_name": "intrinsicInterior_prod_eq",
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
  "slug": "intrinsicinterior-prod-eq--58ed4541c6ee6506858ad777",
  "source": {
    "blob": "9519ee7b09371c224ef80ca67112e602428c59b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 228,
    "path": "GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58ed4541c6ee6506858ad7772e707d5c50e71a3bfc723159f72a2f0030f70276",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a63b546-09eb-7b2a-5c39-48ba92c26093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intrinsicInterior_prod_eq [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace Q]
    [AddTorsor W Q] (s : Set P) (t : Set Q) :
    intrinsicInterior 𝕜 (s ×ˢ t) = intrinsicInterior 𝕜 s ×ˢ intrinsicInterior 𝕜 t := by
  let e : affineSpan 𝕜 (s ×ˢ t) ≃ₜ affineSpan 𝕜 s × affineSpan 𝕜 t :=
    (Homeomorph.setCongr (by simp [affineSpan_prod_eq])).trans (Homeomorph.Set.prod _ _)
  have : Subtype.val ∘ e.symm = fun p ↦ (p.1, p.2) := rfl
  have h : ((↑) ⁻¹' (s ×ˢ t) : Set _) = e ⁻¹' (((↑) ⁻¹' s) ×ˢ ((↑) ⁻¹' t)) := rfl
  simp_rw [intrinsicInterior, h, ← e.preimage_interior, interior_prod_eq, ← e.image_symm,
    ← image_comp, prod_image_image_eq, this]

section ImageOfHomeomorphAffineSpan

variable [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace Q] [AddTorsor W Q]
  {f : P → Q} {s : Set P}

/-- If `f` agrees with a homeomorphism between the affine spans of `s` and `f '' s`, then pulling
`f '' s` back to the affine span of `s` recovers `s` itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9519ee7b09371c224ef80ca67112e602428c59b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
