# block_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:256a6f6e-b31f-3ef9-7d8b-be3d72afa1ef",
  "kind": "theorem",
  "lexical_name": "block_integral",
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
  "slug": "block-integral--ff827bb466553781eafbea40",
  "source": {
    "blob": "6036c71a64effca36022444f769c4289b646a1ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 127,
    "path": "GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff827bb466553781eafbea40ce00c214c9a6d4cd884c8296e5f76fe33435d82b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:256a6f6e-b31f-3ef9-7d8b-be3d72afa1ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem block_integral (m : ℕ) {N : ℕ} (hN : 1 ≤ N) (K : ℕ) (s : ℂ) :
    IntervalIntegrable (integrand m s) volume (N : ℝ) ((N + K : ℕ) : ℝ) ∧
      block m N K s = ∫ t in (N : ℝ)..((N + K : ℕ) : ℝ), integrand m s t := by
  induction K with
  | zero => simp [block]
  | succ K ih =>
    have hc := periodic_cell_integrable m (show 1 ≤ N + K by omega) s
    constructor
    · simpa only [Nat.add_assoc] using ih.1.trans hc
    · rw [block_succ, ih.2, cell_eq_periodic,
        intervalIntegral.integral_add_adjacent_intervals ih.1 hc]
      simp only [Nat.add_assoc]

/-- All internal primitive endpoints cancel; both exterior endpoints remain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6036c71a64effca36022444f769c4289b646a1ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
