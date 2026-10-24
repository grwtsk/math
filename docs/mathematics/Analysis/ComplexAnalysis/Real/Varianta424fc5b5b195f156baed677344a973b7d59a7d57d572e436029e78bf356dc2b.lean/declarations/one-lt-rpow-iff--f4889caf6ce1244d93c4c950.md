# one_lt_rpow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:557a885a-63f2-7240-29ea-2ea4d55ca4ae",
  "kind": "theorem",
  "lexical_name": "one_lt_rpow_iff",
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
  "slug": "one-lt-rpow-iff--f4889caf6ce1244d93c4c950",
  "source": {
    "blob": "4305a837cf361c51094868adeed1c53106a2e913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 708,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4889caf6ce1244d93c4c950be23bb2eb94b4fae6707b12695029333559bc187",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:557a885a-63f2-7240-29ea-2ea4d55ca4ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 708–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_lt_rpow_iff (hx : 0 ≤ x) : 1 < x ^ y ↔ 1 < x ∧ 0 < y ∨ 0 < x ∧ x < 1 ∧ y < 0 := by
  rcases hx.eq_or_lt with (rfl | hx)
  · rcases _root_.em (y = 0) with (rfl | hy) <;> simp [*, lt_irrefl, (zero_lt_one' ℝ).not_lt]
  · simp [one_lt_rpow_iff_of_pos hx, hx]

/-- This is a more general but less convenient version of `rpow_le_rpow_of_exponent_ge`.
This version allows `x = 0`, so it explicitly forbids `x = y = 0`, `z ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean#L708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4305a837cf361c51094868adeed1c53106a2e913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
