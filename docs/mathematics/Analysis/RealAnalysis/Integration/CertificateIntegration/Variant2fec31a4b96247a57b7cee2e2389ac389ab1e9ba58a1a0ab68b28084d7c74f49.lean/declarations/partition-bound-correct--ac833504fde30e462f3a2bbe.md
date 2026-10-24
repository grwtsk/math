# partition_bound_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbb8d494-bc2c-6d29-8e44-1f21fa310fa6",
  "kind": "theorem",
  "lexical_name": "partition_bound_correct",
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
  "slug": "partition-bound-correct--ac833504fde30e462f3a2bbe",
  "source": {
    "blob": "823024257f25d2ab06d8e4b433ae52ba395d781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 205,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac833504fde30e462f3a2bbe6d8bd78a8ef2e83849844d051b5a4374e040527d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbb8d494-bc2c-6d29-8e44-1f21fa310fa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partition_bound_correct (e : Expr) (hsupp : ExprSupportedWithInv e)
    (entry : PartitionEntry)
    (hcheck : checkPartitionBound e entry = true)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e)
      MeasureTheory.volume (entry.domain.lo : ℝ) (entry.domain.hi : ℝ)) :
    ∫ x in (entry.domain.lo : ℝ)..(entry.domain.hi : ℝ),
      Expr.eval (fun _ => x) e ∈ entry.bound := by
  -- Extract the computed interval from checkPartitionBound
  simp only [checkPartitionBound] at hcheck
  cases heval : evalInterval?1 e entry.domain with
  | none => simp [heval] at hcheck
  | some computed =>
    simp only [heval, decide_eq_true_eq] at hcheck
    obtain ⟨hlo_check, hhi_check⟩ := hcheck
    -- Use integrateInterval1WithInv_correct to get integral bounds
    have hsome : integrateInterval1WithInv e entry.domain =
        some (IntervalRat.mul (IntervalRat.singleton entry.domain.width) computed) := by
      simp only [integrateInterval1WithInv, heval]
    have hmem := integrateInterval1WithInv_correct e hsupp entry.domain
      (IntervalRat.mul (IntervalRat.singleton entry.domain.width) computed) hsome hInt
    -- hmem says: integral ∈ IntervalRat.mul (singleton width) computed
    -- hlo_check says: entry.bound.lo ≤ computed.lo * width
    -- hhi_check says: computed.hi * width ≤ entry.bound.hi
    -- The interval mul (singleton w) J gives [w*J.lo, w*J.hi] when w ≥ 0
    -- So we need: entry.bound contains [width * computed.lo, width * computed.hi]
    -- which contains the integral.
    rw [IntervalRat.mem_def] at hmem ⊢
    have hwidth_nn : (0 : ℚ) ≤ entry.domain.width := IntervalRat.width_nonneg entry.domain
    have hcomp_le : computed.lo ≤ computed.hi := computed.le
    -- Technical lemmas about interval multiplication bounds
    have hmul_lo_le : (entry.domain.width * computed.lo : ℝ) ≤
        ((IntervalRat.mul (IntervalRat.singleton entry.domain.width) computed).lo : ℝ) ∨
        ((IntervalRat.mul (IntervalRat.singleton entry.domain.width) computed).lo : ℝ) ≤
        (entry.domain.width * computed.lo : ℝ) := le_total _ _
    have hmul_hi_le : (entry.domain.width * computed.hi : ℝ) ≤
        ((IntervalRat.mul (IntervalRat.singleton entry.domain.width) computed).hi : ℝ) ∨
        ((IntervalRat.mul (IntervalRat.singleton entry.domain.width) computed).hi : ℝ) ≤
        (entry.domain.width * computed.hi : ℝ) := le_total _ _
    -- The interval bound from integrateInterval1WithInv satisfies:
    -- lo ≤ width * computed.lo and width * computed.hi ≤ hi (when width ≥ 0)
    -- This follows from how IntervalRat.mul is defined for singletons
    have hlo_eq : (computed.lo * (entry.domain.hi - entry.domain.lo) : ℚ) =
        entry.domain.width * computed.lo := by unfold IntervalRat.width; ring
    have hhi_eq : (computed.hi * (entry.domain.hi - entry.domain.lo) : ℚ) =
        entry.domain.width * computed.hi := by unfold IntervalRat.width; ring
    constructor
    · -- entry.bound.lo ≤ integral
      have h1 : (entry.bound.lo : ℝ) ≤ (entry.domain.width * computed.lo : ℝ) := by
        have h := hlo_check
        rw [hlo_eq] at h
        exact_mod_cast h
      -- Use singleton_mul_lo_nonneg: for w ≥ 0, (singleton w).mul J).lo = w * J.lo
      have hmul_bound_lo_eq : ((IntervalRat.mul (IntervalRat.singleton entry.domain.width) computed).lo : ℝ) =
          (entry.domain.width * computed.lo : ℝ) := by
        simp only [singleton_mul_lo_nonneg entry.domain.width computed hwidth_nn, Rat.cast_mul]
      linarith [hmem.1]
    · -- integral ≤ entry.bound.hi
      have h1 : (entry.domain.width * computed.hi : ℝ) ≤ (entry.bound.hi : ℝ) := by
        have h := hhi_check
        rw [hhi_eq] at h
        exact_mod_cast h
      -- Use singleton_mul_hi_nonneg: for w ≥ 0, (singleton w).mul J).hi = w * J.hi
      have hmul_bound_hi_eq : ((IntervalRat.mul (IntervalRat.singleton entry.domain.width) computed).hi : ℝ) =
          (entry.domain.width * computed.hi : ℝ) := by
        simp only [singleton_mul_hi_nonneg entry.domain.width computed hwidth_nn, Rat.cast_mul]
      linarith [hmem.2]

/-- Helper: foldl add accumulates correctly -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823024257f25d2ab06d8e4b433ae52ba395d781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
