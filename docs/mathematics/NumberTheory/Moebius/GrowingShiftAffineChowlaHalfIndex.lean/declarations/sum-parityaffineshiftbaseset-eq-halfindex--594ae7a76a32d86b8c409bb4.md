# sum_parityAffineShiftBaseSet_eq_halfIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e1d3a05-193b-0497-60bb-61f43e724d2a",
  "kind": "theorem",
  "lexical_name": "sum_parityAffineShiftBaseSet_eq_halfIndex",
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
  "slug": "sum-parityaffineshiftbaseset-eq-halfindex--594ae7a76a32d86b8c409bb4",
  "source": {
    "blob": "9242ab7f752131ddfcc560324898aab75bf0f927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 106,
    "path": "GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:594ae7a76a32d86b8c409bb45dff1ef2b4fa1951513eb83f9ca0b1bb7a5e5dcb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e1d3a05-193b-0497-60bb-61f43e724d2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_parityAffineShiftBaseSet_eq_halfIndex
    {α : Type*} [AddCommMonoid α]
    (b r h : ℕ)
    (hr : r < 2)
    (f : ℕ → α) :
    (∑ u ∈ parityAffineShiftBaseSet b r h, f u) =
      ∑ m ∈ parityHalfIndexAffineBaseSet b r h,
        f (2 * m + r) := by
  classical
  refine Finset.sum_bij'
    (fun u _hu => u / 2)
    (fun m _hm => 2 * m + r) ?_ ?_ ?_ ?_ ?_
  · intro u hu
    exact halfIndex_mem_of_parityAffineBase hr hu
  · intro m hm
    exact parityAffineBase_mem_of_halfIndex hr hm
  · intro u hu
    have huParity :=
      (Finset.mem_filter.mp
        (Finset.mem_filter.mp hu).1).2
    exact two_mul_half_add_parity_eq hr huParity
  · intro m _hm
    exact reconstructedParity_half_eq m r hr
  · intro u hu
    have huParity :=
      (Finset.mem_filter.mp
        (Finset.mem_filter.mp hu).1).2
    rw [two_mul_half_add_parity_eq hr huParity]

/-- Lower affine form in the half-index variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9242ab7f752131ddfcc560324898aab75bf0f927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
