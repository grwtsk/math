# norm_goldbachProgressionArcResidual_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76088cf8-0ebe-f9fd-4bfb-4222426c5946",
  "kind": "theorem",
  "lexical_name": "norm_goldbachProgressionArcResidual_le",
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
  "slug": "norm-goldbachprogressionarcresidual-le--23e978bdb893fac582287fad",
  "source": {
    "blob": "6282342dcf45c447702dd5a10a68b519152a4304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 178,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23e978bdb893fac582287fade791d17f8854201c5c87f9b13c2aaaee7f77d7bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76088cf8-0ebe-f9fd-4bfb-4222426c5946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_goldbachProgressionArcResidual_le
    {Q N : ℕ} {aq : ℕ × ℕ}
    (haq : aq ∈ goldbachRationalArcIndices Q)
    {residueError : (ℕ × ℕ) → ℕ → ℝ}
    (hnonneg : ∀ r ∈ Finset.range aq.2,
      0 ≤ residueError aq r)
    (herror : ∀ x ∈ goldbachClippedRationalArc Q N aq,
      ∀ r ∈ Finset.range aq.2,
        ‖goldbachResidueProgressionDiscrepancy
            N aq.2 r (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
          residueError aq r) :
    ‖goldbachProgressionArcResidual Q N aq‖ ≤
      goldbachProgressionArcErrorBudget Q N aq residueError := by
  let C : ℝ :=
    goldbachProgressionPointwiseErrorBudget N aq residueError
  have hC : 0 ≤ C := by
    exact goldbachProgressionPointwiseErrorBudget_nonneg hnonneg
  have hmeasure :
      volume (goldbachClippedRationalArc Q N aq) < ∞ := by
    exact
      (measure_mono Set.inter_subset_left).trans_lt
        measure_Ioc_lt_top
  rw [goldbachProgressionArcResidual_eq_integral]
  calc
    ‖∫ x in goldbachClippedRationalArc Q N aq,
        goldbachProgressionCircleResidual N aq.1 aq.2 x‖ ≤
      C * volume.real
        (goldbachClippedRationalArc Q N aq) := by
      exact norm_setIntegral_le_of_norm_le_const hmeasure
        (norm_goldbachProgressionCircleResidual_le_on_arc
          haq herror)
    _ ≤ C *
        (6 * goldbachRationalArcRadius Q N aq.2) :=
      mul_le_mul_of_nonneg_left
        (measureReal_goldbachClippedRationalArc_le Q N aq)
        hC
    _ =
      goldbachProgressionArcErrorBudget Q N aq residueError := by
      rfl

/-- The exact finite rational major sum is the canonical progression-model
major sum plus its exact finite residual sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6282342dcf45c447702dd5a10a68b519152a4304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
