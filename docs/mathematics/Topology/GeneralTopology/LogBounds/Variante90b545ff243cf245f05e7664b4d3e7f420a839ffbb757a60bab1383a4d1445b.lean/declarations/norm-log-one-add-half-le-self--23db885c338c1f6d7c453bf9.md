# norm_log_one_add_half_le_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7bc4950-6669-30ac-2a66-31c6e0cf9286",
  "kind": "lemma",
  "lexical_name": "norm_log_one_add_half_le_self",
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
  "slug": "norm-log-one-add-half-le-self--23db885c338c1f6d7c453bf9",
  "source": {
    "blob": "13324a4b3623e5c50f44227dd3ad143d1efbc6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 211,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23db885c338c1f6d7c453bf96c9a2f97741f8f1b9c79c624877ea64f15c4e707",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7bc4950-6669-30ac-2a66-31c6e0cf9286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_log_one_add_half_le_self {z : ℂ} (hz : ‖z‖ ≤ 1/2) : ‖log (1 + z)‖ ≤ (3/2) * ‖z‖ := by
  apply le_trans (norm_log_one_add_le (lt_of_le_of_lt hz one_half_lt_one))
  have hz3 : (1 - ‖z‖)⁻¹ ≤ 2 := by
    rw [inv_eq_one_div, div_le_iff₀]
    · linarith
    · linarith
  have hz4 : ‖z‖^2 * (1 - ‖z‖)⁻¹ / 2 ≤ ‖z‖/2 * 2 / 2 := by
    gcongr
    · rw [inv_nonneg]
      linarith
    · rw [sq, div_eq_mul_one_div]
      gcongr
  simp only [isUnit_iff_ne_zero, ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true,
    IsUnit.div_mul_cancel] at hz4
  linarith

/-- The difference of `log (1-z)⁻¹` and its `(n+1)`st Taylor polynomial can be bounded in
terms of `‖z‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13324a4b3623e5c50f44227dd3ad143d1efbc6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
