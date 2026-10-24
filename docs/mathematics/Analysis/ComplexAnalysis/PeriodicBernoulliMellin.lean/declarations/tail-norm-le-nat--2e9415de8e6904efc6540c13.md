# tail_norm_le_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5d03918-9a63-dd00-f7a0-cdb61e72fc40",
  "kind": "theorem",
  "lexical_name": "tail_norm_le_nat",
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
  "slug": "tail-norm-le-nat--2e9415de8e6904efc6540c13",
  "source": {
    "blob": "c5cea76d055497a0fe59c04143030e4025604152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Analysis/Complex/PeriodicBernoulliMellin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e9415de8e6904efc6540c1397b9976af1a53df3f968de9d231e959756b5b67c",
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

Occurrence: `result:b5d03918-9a63-dd00-f7a0-cdb61e72fc40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_norm_le_nat {m : ℕ} {N : ℝ} {s : ℂ}
    (hm : 2 ≤ m) (hN : 1 ≤ N) (hs : 0 ≤ s.re) :
    ‖tail m N s‖ ≤ (PeriodicBernoulli.majorant m : ℝ) /
      ((m - 1 : ℕ) * N ^ (m - 1)) := by
  have h := tail_norm_le m (σ := 0) hN (by
    have hmr : (2 : ℝ) ≤ m := by exact_mod_cast hm
    simpa only [zero_add] using (show (1 : ℝ) < m by linarith)) hs
  have hm1 : (m : ℝ) - 1 = ((m - 1 : ℕ) : ℝ) := by
    rw [Nat.cast_sub (by omega : 1 ≤ m)]; norm_num
  have hex : -(m : ℝ) + 1 = -((m - 1 : ℕ) : ℝ) := by rw [← hm1]; ring
  simp only [zero_add] at h
  rw [hex, hm1, Real.rpow_neg (zero_lt_one.trans_le hN).le, Real.rpow_natCast] at h
  simpa only [div_eq_mul_inv, mul_inv, mul_assoc, mul_comm, mul_left_comm] using h

/-- Norm domination of the existing rising product; every factor is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/PeriodicBernoulliMellin.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5cea76d055497a0fe59c04143030e4025604152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
