# finite_exceptions_implies_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eb5014c-7b5a-1cf2-fef1-49a79742ba36",
  "kind": "theorem",
  "lexical_name": "finite_exceptions_implies_bound",
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
  "slug": "finite-exceptions-implies-bound--5b0f8c63798919f9ed2e16a5",
  "source": {
    "blob": "170a63bf2f367cfbdcbbfc3d1223b167bcbea1fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 33,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b0f8c63798919f9ed2e16a50be20554e69b4e96af8ab2686ce8de9c57a0771b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eb5014c-7b5a-1cf2-fef1-49a79742ba36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_exceptions_implies_bound (ε : ℝ)
    (hfinite : (exceptionalSet ε).Finite) : ABCBound ε := by
  classical
  obtain ⟨B, hB⟩ := (hfinite.image (fun t =>
    (t.c : ℝ) / Real.rpow (t.radical : ℝ) (1 + ε))).bddAbove
  refine ⟨max 1 B, lt_of_lt_of_le zero_lt_one (le_max_left _ _), fun t => ?_⟩
  have hp := Real.rpow_pos_of_pos t.real_radical_pos (1 + ε)
  by_cases ht : t ∈ exceptionalSet ε
  · have hq : (t.c : ℝ) / Real.rpow (t.radical : ℝ) (1 + ε) ≤ B :=
      hB ⟨t, ht, rfl⟩
    exact (div_le_iff₀ hp).mp (hq.trans (le_max_right _ _))
  · have hc : (t.c : ℝ) ≤ Real.rpow (t.radical : ℝ) (1 + ε) := le_of_not_gt ht
    exact hc.trans (le_mul_of_one_le_left hp.le (le_max_left _ _))

/-- A bound at epsilon/2 gives finitely many exceptions at epsilon. This
explicit slack step prevents a fixed-epsilon uniform-constant statement from
being confused with the coefficient-one statement at that same epsilon. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `170a63bf2f367cfbdcbbfc3d1223b167bcbea1fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
