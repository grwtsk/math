# weightedMertensDyadicTriangularKernel_eq_atomSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24142ecc-7328-c8d6-e249-1cb31be40dc6",
  "kind": "theorem",
  "lexical_name": "weightedMertensDyadicTriangularKernel_eq_atomSum",
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
  "slug": "weightedmertensdyadictriangularkernel-eq-atomsum--52bf265d736ff653e4f9e92d",
  "source": {
    "blob": "d38b6d53b279195f6132e0725bbf909f58962a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52bf265d736ff653e4f9e92d3e3d82a6ecb1e28c2c08284d27398d1e231de9e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24142ecc-7328-c8d6-e249-1cb31be40dc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDyadicTriangularKernel_eq_atomSum (j : ℕ) :
    weightedMertensDyadicTriangularKernel j =
      2 * ∑ b ∈ Finset.Ico 1 (2 ^ (j + 1)),
        mertensTriangularAtom b * dyadicMertensShiftWeight j b := by
  have h1X : 1 ≤ 2 ^ j := Nat.one_le_pow j 2 (by norm_num)
  have hXY : 2 ^ j ≤ 2 ^ (j + 1) := by
    rw [Nat.pow_succ]
    omega
  calc
    weightedMertensDyadicTriangularKernel j =
        weightedMertensDyadicTriangularBoundary j +
          weightedMertensDyadicTriangularLocal j := rfl
    _ = 2 * (∑ b ∈ Finset.Ico 1 (2 ^ j),
          mertensTriangularAtom b * dyadicMertensShiftWeight j b) +
        2 * (∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
          mertensTriangularAtom b * dyadicMertensShiftWeight j b) := by
      rw [weightedMertensDyadicTriangularBoundary_eq_earlyAtomSum]
      unfold weightedMertensDyadicTriangularLocal
      congr 1
      · congr 1
        apply Finset.sum_congr rfl
        intro b hb
        rw [dyadicMertensShiftWeight_of_lt (Finset.mem_Ico.mp hb).2]
      · congr 1
        apply Finset.sum_congr rfl
        intro b hb
        rw [dyadicMertensShiftWeight_of_le (Finset.mem_Ico.mp hb).1]
    _ = 2 * ((∑ b ∈ Finset.Ico 1 (2 ^ j),
          mertensTriangularAtom b * dyadicMertensShiftWeight j b) +
        (∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
          mertensTriangularAtom b * dyadicMertensShiftWeight j b)) := by
      ring
    _ = _ := by
      rw [Finset.sum_Ico_consecutive _ h1X hXY]

/-- Expanding the previous prefix turns the finite kernel into the complete
strict-pair packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38b6d53b279195f6132e0725bbf909f58962a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
