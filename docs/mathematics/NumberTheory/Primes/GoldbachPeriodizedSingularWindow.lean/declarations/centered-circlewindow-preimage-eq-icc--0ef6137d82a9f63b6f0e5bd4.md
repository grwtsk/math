# centered_circleWindow_preimage_eq_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78d6e494-a3c3-e3c4-87c2-be541f1ee78e",
  "kind": "theorem",
  "lexical_name": "centered_circleWindow_preimage_eq_Icc",
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
  "slug": "centered-circlewindow-preimage-eq-icc--0ef6137d82a9f63b6f0e5bd4",
  "source": {
    "blob": "c04cba84c6dd1708741ae14ac01ad2cc9c36f102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 183,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ef6137d82a9f63b6f0e5bd413f341cd6a67c6d39a03938f0be03547aceb82fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78d6e494-a3c3-e3c4-87c2-be541f1ee78e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_circleWindow_preimage_eq_Icc
    {r : ℝ} (_hr0 : 0 ≤ r) (hr : r < (1 / 2 : ℝ)) :
    Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ) ∩
        ((fun β : ℝ => (β : AddCircle (1 : ℝ))) ⁻¹'
          Metric.closedBall 0 r) =
      Set.Icc (-r) r := by
  let s := Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ)
  have hs :
      s ⊆ Metric.closedBall (0 : ℝ) (|(1 : ℝ)| / 2) := by
    intro β hβ
    change -(1 / 2 : ℝ) < β ∧ β ≤ 1 / 2 at hβ
    rw [Real.closedBall_eq_Icc]
    constructor <;> norm_num at * <;> linarith
  have hpre :=
    AddCircle.coe_real_preimage_closedBall_inter_eq
      (p := (1 : ℝ)) (x := (0 : ℝ)) (ε := r) s hs
  have hsmall : r < |(1 : ℝ)| / 2 := by
    simpa using hr
  rw [if_pos hsmall] at hpre
  have hsub :
      Metric.closedBall (0 : ℝ) r ⊆ s := by
    intro β hβ
    rw [Real.closedBall_eq_Icc] at hβ
    constructor <;> linarith [hβ.1, hβ.2]
  have hinter :
      Metric.closedBall (0 : ℝ) r ∩ s =
        Metric.closedBall (0 : ℝ) r :=
    Set.inter_eq_left.mpr hsub
  calc
    s ∩
        ((fun β : ℝ => (β : AddCircle (1 : ℝ))) ⁻¹'
          Metric.closedBall 0 r) =
      ((fun β : ℝ => (β : AddCircle (1 : ℝ))) ⁻¹'
          Metric.closedBall 0 r) ∩ s := by
            rw [Set.inter_comm]
    _ = Metric.closedBall (0 : ℝ) r ∩ s := hpre
    _ = Metric.closedBall (0 : ℝ) r := hinter
    _ = Set.Icc (-r) r := by
      rw [Real.closedBall_eq_Icc]
      ring_nf

/-- Below half the period, the intrinsic circle-window integral is the
ordinary symmetric real-window integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04cba84c6dd1708741ae14ac01ad2cc9c36f102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
