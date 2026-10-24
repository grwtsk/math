# rectangleBoundaryIntegral_eq_innerRectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c99e239a-2230-f10b-650c-f458d346dc5c",
  "kind": "theorem",
  "lexical_name": "rectangleBoundaryIntegral_eq_innerRectangle",
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
  "slug": "rectangleboundaryintegral-eq-innerrectangle--4b8448cd24142d579fda4b41",
  "source": {
    "blob": "1c1c63377f168a60a35d80f5fc6e80de1fdf0230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b8448cd24142d579fda4b41d9e09ec7b679a814b70856cae3f33de9da0656ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c99e239a-2230-f10b-650c-f458d346dc5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleBoundaryIntegral_eq_innerRectangle
    (f : ℂ → ℂ) {a b c d p q r s : ℝ}
    (hab : a ≤ b) (hbc : b ≤ c) (hcd : c ≤ d)
    (hpq : p ≤ q) (hqr : q ≤ r) (hrs : r ≤ s)
    (hBottom : DifferentiableOn ℂ f
      (closedRectangle (corner a p) (corner d q)))
    (hTop : DifferentiableOn ℂ f
      (closedRectangle (corner a r) (corner d s)))
    (hLeft : DifferentiableOn ℂ f
      (closedRectangle (corner a q) (corner b r)))
    (hRight : DifferentiableOn ℂ f
      (closedRectangle (corner c q) (corner d r))) :
    rectangleBoundaryIntegral f (corner a p) (corner d s) =
      rectangleBoundaryIntegral f (corner b q) (corner c r) := by
  have hsum := four_rectangles_boundary_sum f hab hbc hcd hpq hqr hrs
    hBottom.continuousOn hTop.continuousOn hLeft.continuousOn hRight.continuousOn
  simp only [boundary_eq_rectangleBoundaryIntegral] at hsum
  have hBottomZero :=
    rectangleBoundaryIntegral_eq_zero_of_differentiableOn f
      (corner a p) (corner d q) hBottom
  have hTopZero :=
    rectangleBoundaryIntegral_eq_zero_of_differentiableOn f
      (corner a r) (corner d s) hTop
  have hLeftZero :=
    rectangleBoundaryIntegral_eq_zero_of_differentiableOn f
      (corner a q) (corner b r) hLeft
  have hRightZero :=
    rectangleBoundaryIntegral_eq_zero_of_differentiableOn f
      (corner c q) (corner d r) hRight
  rw [hBottomZero, hTopZero, hLeftZero, hRightZero] at hsum
  simpa only [add_zero, zero_add, sub_eq_zero] using hsum

/-- Rectangular-hole excision at the regularity of the shared circular target:
continuity is required on each closed cell, and complex differentiability only
on each open cell.  This remains a straight-edge theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1c63377f168a60a35d80f5fc6e80de1fdf0230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
