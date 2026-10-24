# pochhammer_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:063fc844-c381-f437-4652-14fc81fd443f",
  "kind": "theorem",
  "lexical_name": "pochhammer_norm_le",
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
  "slug": "pochhammer-norm-le--d881bfc0d775ead1333d1f71",
  "source": {
    "blob": "c5cea76d055497a0fe59c04143030e4025604152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 103,
    "path": "GRWTSK/Analysis/Complex/PeriodicBernoulliMellin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d881bfc0d775ead1333d1f71b536285ad962a1f73f4be2ab505b6298c3d87258",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:063fc844-c381-f437-4652-14fc81fd443f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pochhammer_norm_le (m : ℕ) {s : ℂ} {B : ℝ}
    (hB : ‖s‖ ≤ B) :
    ‖PochhammerJet.value m s‖ ≤ ∏ j ∈ Finset.range m, (B + (j : ℝ)) := by
  have hB0 : 0 ≤ B := (norm_nonneg _).trans hB
  induction m with
  | zero => simp
  | succ m ih =>
    rw [PochhammerJet.value_succ, norm_mul, Finset.prod_range_succ]
    have hj : ‖s + (m : ℂ)‖ ≤ B + m :=
      (norm_add_le _ _).trans (by simpa using add_le_add_right hB (m : ℝ))
    exact mul_le_mul ih hj (norm_nonneg _) (Finset.prod_nonneg (fun j _ => by positivity))

/-- The sign is part of the exact Euler--Maclaurin remainder convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/PeriodicBernoulliMellin.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5cea76d055497a0fe59c04143030e4025604152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
