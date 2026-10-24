# harmonicTerminalCumulativeContribution_eq_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cff01759-2f21-04b1-7111-0817291374cb",
  "kind": "theorem",
  "lexical_name": "harmonicTerminalCumulativeContribution_eq_boundary",
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
  "slug": "harmonicterminalcumulativecontribution-eq-boundary--527714f307c2a3005e4221b0",
  "source": {
    "blob": "6b392f4003d3136ac4a7ed39d5ad699f9cd17b82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 49,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:527714f307c2a3005e4221b08e73f99293c5a31fe9ca6f636fe092086a3b7438",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cff01759-2f21-04b1-7111-0817291374cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicTerminalCumulativeContribution_eq_boundary
    {j t : ℕ}
    (ht : t ∈ boundaryCoreDepths j) :
    harmonicTerminalCumulativeContribution j t =
      cumulativeHarmonicShiftCorrelation j t (2 ^ j) *
        boundaryTerminalDrop j := by
  have hleft := boundaryCoreDepth_left ht
  have hcount :
      harmonicShiftCount j t = 2 ^ j := by
    simpa [boundaryCoreDepths] using
      (Finset.mem_filter.mp ht).2
  have hX : 0 < 2 ^ j := by positivity
  unfold harmonicTerminalCumulativeContribution
  rw [if_neg (by simpa [hcount] using (Nat.ne_of_gt hX))]
  rw [hcount]
  unfold harmonicShiftFirstDifference boundaryTerminalDrop
    reciprocalFirstDifference
  rw [harmonicShiftReciprocal_eq_left hleft,
    harmonicShiftReciprocal_eq_left hleft]
  congr 1 <;> congr 1
  · rw [Nat.pow_succ]
    omega
  · rw [Nat.pow_succ]
    omega

/-- The signed boundary packet is exactly the sum over boundary depths. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b392f4003d3136ac4a7ed39d5ad699f9cd17b82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
