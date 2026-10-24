# le_mul_iff_eq_zero_of_nonneg_of_neg_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c90ea1e3-984f-6983-fc21-90ffef0f6aa9",
  "kind": "theorem",
  "lexical_name": "le_mul_iff_eq_zero_of_nonneg_of_neg_of_nonneg",
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
  "slug": "le-mul-iff-eq-zero-of-nonneg-of-neg-of-nonneg--8b49b9fb3637c19037af08f8",
  "source": {
    "blob": "2c2c9429304e477f3a0fa05c5172a0431665359a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 151,
    "path": "GRWTSK/Analysis/MeasureTheory/Monotonicity/Variant08a601fcb1de125077d79b87654b9dad9bce19c27751f15f8d2805fd35185af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b49b9fb3637c19037af08f8fff14255819c23f43823cfa0c5e0938ecce4843f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Monotonicity/Variant08a601fcb1de125077d79b87654b9dad9bce19c27751f15f8d2805fd35185af2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c90ea1e3-984f-6983-fc21-90ffef0f6aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem le_mul_iff_eq_zero_of_nonneg_of_neg_of_nonneg {α}
    [Semiring α] [LinearOrder α] [IsStrictOrderedRing α]
    {a b c : α} (ha : 0 ≤ a) (hb : b < 0) (hc : 0 ≤ c) : a ≤ b * c ↔ a = 0 ∧ c = 0 := by
  constructor
  · intro h
    exact
      ⟨(h.trans (mul_nonpos_of_nonpos_of_nonneg hb.le hc)).antisymm ha,
        (nonpos_of_mul_nonneg_right (ha.trans h) hb).antisymm hc⟩
  · rintro ⟨rfl, rfl⟩
    rw [mul_zero]

/-- When `c` is negative, `‖f x‖ ≤ c * ‖g x‖` is nonsense and forces both `f` and `g` to have an
`eLpNorm` of `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Monotonicity/Variant08a601fcb1de125077d79b87654b9dad9bce19c27751f15f8d2805fd35185af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Monotonicity/Variant08a601fcb1de125077d79b87654b9dad9bce19c27751f15f8d2805fd35185af2.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c2c9429304e477f3a0fa05c5172a0431665359a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
