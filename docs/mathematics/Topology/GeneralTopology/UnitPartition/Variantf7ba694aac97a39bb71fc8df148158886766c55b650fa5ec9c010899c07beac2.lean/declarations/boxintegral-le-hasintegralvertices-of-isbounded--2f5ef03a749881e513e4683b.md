# BoxIntegral.le_hasIntegralVertices_of_isBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edf79342-8c75-ce49-a63d-67d9051f6622",
  "kind": "theorem",
  "lexical_name": "BoxIntegral.le_hasIntegralVertices_of_isBounded",
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
  "slug": "boxintegral-le-hasintegralvertices-of-isbounded--2f5ef03a749881e513e4683b",
  "source": {
    "blob": "3af570881246cfb1f2e43a1449c16fc587faac05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f5ef03a749881e513e4683b4082294cc90e5b6a23b729c2bf2495032fe87e66",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edf79342-8c75-ce49-a63d-67d9051f6622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BoxIntegral.le_hasIntegralVertices_of_isBounded [Finite ι] {s : Set (ι → ℝ)}
    (h : IsBounded s) :
    ∃ B : BoxIntegral.Box ι, hasIntegralVertices B ∧ s ≤ B := by
  have := Fintype.ofFinite ι
  obtain ⟨R, hR₁, hR₂⟩ := IsBounded.subset_ball_lt h 0 0
  let C : ℕ := ⌈R⌉₊
  have hC := Nat.ceil_pos.mpr hR₁
  let I : Box ι := Box.mk (fun _ ↦ - C) (fun _ ↦ C )
    (fun _ ↦ by simp [C, neg_lt_self_iff, Nat.cast_pos, hC])
  refine ⟨I, ⟨fun _ ↦ - C, fun _ ↦ C, fun i ↦ (Int.cast_neg_natCast C).symm, fun _ ↦ rfl⟩,
    le_trans hR₂ ?_⟩
  suffices Metric.ball (0 : ι → ℝ) C ≤ I from
    le_trans (Metric.ball_subset_ball (Nat.le_ceil R)) this
  intro x hx
  simp_rw [C, mem_ball_zero_iff, pi_norm_lt_iff (Nat.cast_pos.mpr hC),
    Real.norm_eq_abs, abs_lt] at hx
  exact fun i ↦ ⟨(hx i).1, le_of_lt (hx i).2⟩

end hasIntegralVertices

namespace BoxIntegral.unitPartition

open Bornology MeasureTheory Fintype BoxIntegral

variable (n : ℕ)

/-- A `BoxIntegral`, indexed by a positive integer `n` and `ν : ι → ℤ`, with corners `ν i / n`
and of side length `1 / n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af570881246cfb1f2e43a1449c16fc587faac05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
