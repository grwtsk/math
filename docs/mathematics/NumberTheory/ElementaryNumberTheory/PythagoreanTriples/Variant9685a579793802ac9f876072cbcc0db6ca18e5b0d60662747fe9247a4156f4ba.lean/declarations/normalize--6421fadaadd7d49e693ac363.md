# normalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73267c3e-cf8c-6f20-7695-12185833693b",
  "kind": "theorem",
  "lexical_name": "normalize",
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
  "slug": "normalize--6421fadaadd7d49e693ac363",
  "source": {
    "blob": "73dd82173005f65fadd4e8f706d3a62c4d0956eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 176,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6421fadaadd7d49e693ac36360b6e3dbea857ccd7eabea0464c787e4442299dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73267c3e-cf8c-6f20-7695-12185833693b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalize : PythagoreanTriple (x / Int.gcd x y) (y / Int.gcd x y) (z / Int.gcd x y) := by
  by_cases h0 : Int.gcd x y = 0
  · have hx : x = 0 := by
      apply Int.natAbs_eq_zero.mp
      apply Nat.eq_zero_of_gcd_eq_zero_left h0
    have hy : y = 0 := by
      apply Int.natAbs_eq_zero.mp
      apply Nat.eq_zero_of_gcd_eq_zero_right h0
    have hz : z = 0 := by
      simpa only [PythagoreanTriple, hx, hy, add_zero, zero_eq_mul, mul_zero,
        or_self_iff] using h
    simp only [hx, hy, hz]
    exact zero
  rcases h.gcd_dvd with ⟨z0, rfl⟩
  obtain ⟨k, x0, y0, k0, h2, rfl, rfl⟩ :
    ∃ (k : ℕ) (x0 y0 : _), 0 < k ∧ Int.gcd x0 y0 = 1 ∧ x = x0 * k ∧ y = y0 * k :=
    Int.exists_gcd_one' (Nat.pos_of_ne_zero h0)
  have hk : (k : ℤ) ≠ 0 := by
    norm_cast
    rwa [pos_iff_ne_zero] at k0
  rw [Int.gcd_mul_right, h2, Int.natAbs_natCast, one_mul] at h ⊢
  rw [mul_comm x0, mul_comm y0, mul_iff k hk] at h
  rwa [Int.mul_ediv_cancel _ hk, Int.mul_ediv_cancel _ hk, Int.mul_ediv_cancel_left _ hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73dd82173005f65fadd4e8f706d3a62c4d0956eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
