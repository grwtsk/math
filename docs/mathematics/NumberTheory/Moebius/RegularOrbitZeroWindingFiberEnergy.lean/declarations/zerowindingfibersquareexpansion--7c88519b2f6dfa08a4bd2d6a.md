# zeroWindingFiberSquareExpansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1884491f-5dd1-25b6-2e8d-95af8a26df3a",
  "kind": "theorem",
  "lexical_name": "zeroWindingFiberSquareExpansion",
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
  "slug": "zerowindingfibersquareexpansion--7c88519b2f6dfa08a4bd2d6a",
  "source": {
    "blob": "4dca9c84426bbc264bc93f15b388675470f2a815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 85,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c88519b2f6dfa08a4bd2d6ad86f66b5c5890151f276c01731e2c45363c588c7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1884491f-5dd1-25b6-2e8d-95af8a26df3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroWindingFiberSquareExpansion
    (b r : ℕ)
    (H : Finset ℕ) :
    (∑ c ∈ Finset.range (b + 1),
      parityHalfIndexZeroWindingFiber b r H c ^ 2) =
      ∑ h ∈ H,
        ∑ g ∈ H,
          ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
            ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
              if halfIndexZeroWindingCoordinate m h =
                  halfIndexZeroWindingCoordinate n g then
                halfIndexBinaryMobiusCoefficient r m h *
                  halfIndexBinaryMobiusCoefficient r n g
              else 0 := by
  classical
  unfold parityHalfIndexZeroWindingFiber
  simp only [pow_two, Finset.sum_mul_sum]
  rw [Finset.sum_comm]
  conv_lhs =>
    arg 2
    ext h
    rw [Finset.sum_comm]
    arg 2
    ext g
    rw [Finset.sum_comm]
    arg 2
    ext m
    rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h hh
  apply Finset.sum_congr rfl
  intro g hg
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases heq :
      halfIndexZeroWindingCoordinate m h =
        halfIndexZeroWindingCoordinate n g
  · rw [heq]
    rw [Finset.sum_eq_single
      (halfIndexZeroWindingCoordinate n g)]
    · simp
    · intro c hc hcn
      simp [Ne.symm hcn]
    · intro hnot
      exact (hnot
        (Finset.mem_range.mpr
          (halfIndexZeroWindingCoordinate_lt_endpoint hn))).elim
  · simp [heq]

/-- Exact signed-fiber representation of the zero-winding quartic surface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dca9c84426bbc264bc93f15b388675470f2a815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
