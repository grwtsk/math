# boundary_subset_closedRectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e1ae614-bb21-946c-7f18-ef4ae945944e",
  "kind": "theorem",
  "lexical_name": "boundary_subset_closedRectangle",
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
  "slug": "boundary-subset-closedrectangle--7af5d043bd7150168de23f73",
  "source": {
    "blob": "3ce76ec1e5d723bcae7f2380a2fd0de7ed6b24e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7af5d043bd7150168de23f73d95c62f6df20ee74da6da0a1f82be4355fea0d99",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e1ae614-bb21-946c-7f18-ef4ae945944e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_subset_closedRectangle (N : ℕ) :
    boundary N ⊆ closedRectangle N := by
  intro s hs
  change leftEdge N ≤ s.re ∧ s.re ≤ 2 ∧ |s.im| ≤ contourHeight N ∧
    (s.re = leftEdge N ∨ s.re = 2 ∨ |s.im| = contourHeight N) at hs
  have hleft : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hheight : -contourHeight N ≤ contourHeight N := by
    linarith [contourHeight_pos N]
  change s.re ∈ [[leftEdge N, 2]] ∧
    s.im ∈ [[-contourHeight N, contourHeight N]]
  constructor
  · rw [uIcc_of_le hleft]
    exact ⟨hs.1, hs.2.1⟩
  · rw [uIcc_of_le hheight]
    exact (abs_le.mp hs.2.2.1)

/-- Pointwise equality on the complete boundary implies equality of the exact
four-edge functionals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ce76ec1e5d723bcae7f2380a2fd0de7ed6b24e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
