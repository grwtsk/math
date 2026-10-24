# mem_additivePairs_scaled_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e10a14d-1b74-6456-8667-cb181ad53e3d",
  "kind": "theorem",
  "lexical_name": "mem_additivePairs_scaled_iff",
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
  "slug": "mem-additivepairs-scaled-iff--b3e1d24200598dc8a99efddb",
  "source": {
    "blob": "8fb1612f9ddd09b2b0c14f83b57718b23288b6e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 15,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3e1d24200598dc8a99efddb1e6eb0dbb777e496a18377958e52b4fa193c26cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e10a14d-1b74-6456-8667-cb181ad53e3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_additivePairs_scaled_iff {N d u v : ℕ} (hd : 0 < d) :
    (d * u, d * v) ∈ additivePairs N ↔ (u, v) ∈ additivePairs (N / d) := by
  constructor
  · intro hp
    obtain ⟨hu, _, hv, _, hsum⟩ := mem_additivePairs.mp hp
    have hu1 : 1 ≤ u := by
      by_contra h
      have hu0 : u = 0 := by omega
      simp only [hu0, Nat.mul_zero] at hu
      omega
    have hv1 : 1 ≤ v := by
      by_contra h
      have hv0 : v = 0 := by omega
      simp only [hv0, Nat.mul_zero] at hv
      omega
    have hsum' : u + v ≤ N / d := by
      apply (Nat.le_div_iff_mul_le hd).mpr
      simpa only [Nat.add_mul, Nat.mul_add, Nat.mul_comm] using hsum
    exact mem_additivePairs.mpr ⟨hu1, by omega, hv1, by omega, hsum'⟩
  · intro hp
    obtain ⟨hu, _, hv, _, hsum⟩ := mem_additivePairs.mp hp
    have hu1 : 1 ≤ d * u := Nat.mul_pos hd hu
    have hv1 : 1 ≤ d * v := Nat.mul_pos hd hv
    have hsum' : d * u + d * v ≤ N := by
      have hmul := (Nat.le_div_iff_mul_le hd).mp hsum
      simpa only [Nat.add_mul, Nat.mul_add, Nat.mul_comm] using hmul
    exact mem_additivePairs.mpr ⟨hu1, by omega, hv1, by omega, hsum'⟩

/-- Multiplication by a positive divisor is injective on coordinate pairs.
This is the cancellation step in the sector bijection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb1612f9ddd09b2b0c14f83b57718b23288b6e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
