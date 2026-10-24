# sum_inv_pow_two_le_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b80cbab5-cc60-16fe-3e5d-e96f72a034e3",
  "kind": "lemma",
  "lexical_name": "sum_inv_pow_two_le_telescope",
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
  "slug": "sum-inv-pow-two-le-telescope--c80b49edcc0e0f06ed5c3fad",
  "source": {
    "blob": "19e729bcf45f4bbc9b3242b0b26b8ffc54858cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c80b49edcc0e0f06ed5c3fad31f98ce5aa0a0b1669d106ccbd99071d73601af5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b80cbab5-cc60-16fe-3e5d-e96f72a034e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_inv_pow_two_le_telescope {D : ℝ} (hD : 0 < D) (n : ℕ) :
    ∑ i ∈ range (n + 1), ((D + i) ^ 2)⁻¹ ≤ (D ^ 2)⁻¹ + (D⁻¹ - (D + n)⁻¹) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [sum_range_succ]
    have hstep := inv_pow_two_step (a := D + n) (by positivity)
    have e : (D + ((n + 1 : ℕ) : ℝ)) = D + n + 1 := by push_cast; ring
    rw [e]
    calc _ ≤ (D ^ 2)⁻¹ + (D⁻¹ - (D + n)⁻¹) + ((D + n)⁻¹ - (D + n + 1)⁻¹) :=
          add_le_add ih hstep
      _ = _ := by ring

/-- ∑_{i<n} (D + i)⁻³ ≤ D⁻³ + D⁻²/2 for D > 0 (any n). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19e729bcf45f4bbc9b3242b0b26b8ffc54858cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
