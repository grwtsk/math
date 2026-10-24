# boundaryTailSquareEnergy_le_localized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d975419b-852c-927d-5b67-2901c8a490e6",
  "kind": "theorem",
  "lexical_name": "boundaryTailSquareEnergy_le_localized",
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
  "slug": "boundarytailsquareenergy-le-localized--74f2726a97273484ecfd470a",
  "source": {
    "blob": "da8dc01529865475e7505bfa12a98fa129e2b44a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 203,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74f2726a97273484ecfd470a8747e764db38879493615b8a417ca2af09557f3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d975419b-852c-927d-5b67-2901c8a490e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryTailSquareEnergy_le_localized
    {j : ℕ}
    (hHX : logarithmicShiftThreshold j ≤ 2 ^ j) :
    boundaryTailSquareEnergy j ≤
      2 * boundaryLocalizedMertensSquareEnergy j := by
  unfold boundaryTailSquareEnergy
    boundaryLocalizedMertensSquareEnergy
  calc
    (∑ u ∈ Finset.range (2 ^ j),
      boundaryTailMertens j u ^ 2) ≤
      ∑ u ∈ Finset.range (2 ^ j),
        (2 * mertensPrefixReal (2 ^ j - u - 1) ^ 2 +
          2 * mertensPrefixReal
            (logarithmicShallowDepthCount j - u) ^ 2) := by
      apply Finset.sum_le_sum
      intro u hu
      rw [boundaryTailMertens_eq_prefix_sub
        hHX (Finset.mem_range.mp hu)]
      exact sub_sq_le_two_sq_add_two_sq _ _
    _ ≤ 2 * ∑ u ∈ Finset.range (2 ^ j),
        (mertensPrefixReal (2 ^ (j + 1) - u - 1) ^ 2 +
          mertensPrefixReal (2 ^ j - u - 1) ^ 2 +
          mertensPrefixReal (logarithmicShallowDepthCount j - u) ^ 2) := by
      rw [Finset.mul_sum]
      apply Finset.sum_le_sum
      intro u _hu
      nlinarith [sq_nonneg
        (mertensPrefixReal (2 ^ (j + 1) - u - 1))]
    _ = _ := by rfl

/-- Natural-scale localized Mertens square-energy source.  The scale
`X^2 * X^δ` is the discrete dyadic size suggested by Weak-Mertens-type
mean-square control; no classical conjecture is asserted here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8dc01529865475e7505bfa12a98fa129e2b44a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
