# isRat_le_true

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bc8228a-9c27-24c8-70dc-3666fd03f46e",
  "kind": "theorem",
  "lexical_name": "isRat_le_true",
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
  "slug": "israt-le-true--4de11fc14c0bb6d9d7c4150c",
  "source": {
    "blob": "d7156ab2d7a45aa8fbeef3594a27a9500abc982e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant48079fbc64808a7226f4bbb3e91dca9cda9d3f47c7c9e7b8781722919dae0823.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4de11fc14c0bb6d9d7c4150c17f8fdae0e46192dbc374436fc002cece407c131",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ineq/Variant48079fbc64808a7226f4bbb3e91dca9cda9d3f47c7c9e7b8781722919dae0823.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bc8228a-9c27-24c8-70dc-3666fd03f46e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRat_le_true [Ring α] [LinearOrder α] [IsStrictOrderedRing α] :
    {a b : α} → {na nb : ℤ} → {da db : ℕ} →
    IsRat a na da → IsRat b nb db →
    decide (Int.mul na (.ofNat db) ≤ Int.mul nb (.ofNat da)) → a ≤ b
  | _, _, _, _, da, db, ⟨_, rfl⟩, ⟨_, rfl⟩, h => by
    have h := Int.cast_mono (R := α) <| of_decide_eq_true h
    have ha : 0 ≤ ⅟(da : α) := invOf_nonneg.mpr <| Nat.cast_nonneg da
    have hb : 0 ≤ ⅟(db : α) := invOf_nonneg.mpr <| Nat.cast_nonneg db
    have h := (mul_le_mul_of_nonneg_left · hb) <| mul_le_mul_of_nonneg_right h ha
    rw [← mul_assoc, Int.commute_cast] at h
    simp only [Int.ofNat_eq_natCast, Int.mul_def, Int.cast_mul, Int.cast_natCast,
      mul_invOf_cancel_right'] at h
    rwa [Int.commute_cast] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ineq/Variant48079fbc64808a7226f4bbb3e91dca9cda9d3f47c7c9e7b8781722919dae0823.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant48079fbc64808a7226f4bbb3e91dca9cda9d3f47c7c9e7b8781722919dae0823.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7156ab2d7a45aa8fbeef3594a27a9500abc982e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
