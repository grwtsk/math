# mem_interior_or_boundary_of_mem_closedRectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e23fda9-6111-8a74-6063-60008373b1b6",
  "kind": "theorem",
  "lexical_name": "mem_interior_or_boundary_of_mem_closedRectangle",
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
  "slug": "mem-interior-or-boundary-of-mem-closedrectangle--19994c62d8d76f54f7feaa5d",
  "source": {
    "blob": "dbfb5171d1cb9af65ae07cd5e1f9ab88648e645b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19994c62d8d76f54f7feaa5d1c6a97e7f96f6641d5d0a18775dce5396ec653c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e23fda9-6111-8a74-6063-60008373b1b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_interior_or_boundary_of_mem_closedRectangle
    (N : ℕ) {s : ℂ} (hs : s ∈ closedRectangle N) :
    s ∈ interior N ∨ s ∈ boundary N := by
  rcases (mem_closedRectangle_iff N s).mp hs with ⟨hL, hR, hB, hT⟩
  have hAbs : |s.im| ≤ contourHeight N := abs_le.mpr ⟨hB, hT⟩
  by_cases hLi : leftEdge N < s.re
  · by_cases hRi : s.re < 2
    · by_cases hHi : |s.im| < contourHeight N
      · exact Or.inl ⟨hLi, hRi, hHi⟩
      · exact Or.inr ⟨hL, hR, hAbs, Or.inr (Or.inr
          (le_antisymm hAbs (le_of_not_gt hHi)))⟩
    · exact Or.inr ⟨hL, hR, hAbs, Or.inr (Or.inl
        (le_antisymm (le_of_not_gt hRi) hR))⟩
  · exact Or.inr ⟨hL, hR, hAbs, Or.inl
      (le_antisymm hL (le_of_not_gt hLi))⟩

/-- Any zero or the pole in the closed rectangle belongs to the complete finite
singularity head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfb5171d1cb9af65ae07cd5e1f9ab88648e645b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
